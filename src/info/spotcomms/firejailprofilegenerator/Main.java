/*This file is part of FirejailProfileGenerator.

  FirejailProfileGenerator is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 2 of the License, or
  (at your option) any later version.

  FirejailProfileGenerator is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with FirejailProfileGenerator.  If not, see <http://www.gnu.org/licenses/>.
 */

package info.spotcomms.firejailprofilegenerator;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.io.PrintWriter;
import java.util.*;

public class Main {

    private static final ArrayList<Application> applications = new ArrayList<>();

    public static void main(String[] args) {
        try {
            //START OF XML PARSING
            File configFile = new File("Firejail_Config.xml");
            DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
            Document config = documentBuilder.parse(configFile);
            config.getDocumentElement().normalize();
            NodeList nodes = config.getElementsByTagName("application");
            for (int c = 0; c < nodes.getLength(); c++) {
                Node curNode = nodes.item(c);
                if (curNode.getNodeType() == Node.ELEMENT_NODE) {
                    Element element = (Element) curNode;
                    Application curApplication = new Application(element.getElementsByTagName("name").item(0).getTextContent());
                    curApplication.setMode(element.getElementsByTagName("mode").item(0).getTextContent().equals("whitelist"));
                    if (element.getElementsByTagName("aliases").item(0) != null) {
                        curApplication.setAliases(convertToArray(element.getElementsByTagName("aliases").item(0).getTextContent()));
                    }
                    if (element.getElementsByTagName("options").item(0) != null) {
                        curApplication.setOptions(convertToArray(element.getElementsByTagName("options").item(0).getTextContent()));
                    }
                    if (element.getElementsByTagName("paths").item(0) != null) {
                        curApplication.setPaths(convertToArray(element.getElementsByTagName("paths").item(0).getTextContent()));
                    }
                    if (element.getElementsByTagName("files").item(0) != null) {
                        curApplication.setFiles(convertToArray(element.getElementsByTagName("files").item(0).getTextContent()));
                    }
                    if (element.getElementsByTagName("noblacklistexplicit").item(0) != null) {
                        curApplication.setNoBlacklistExplicit(convertToArray(element.getElementsByTagName("noblacklistexplicit").item(0).getTextContent()));
                    }
                    if (element.getElementsByTagName("genoptions").item(0) != null) {
                        curApplication.setGenOptions(convertToArray(element.getElementsByTagName("genoptions").item(0).getTextContent()));
                    }
                    applications.add(curApplication);
                    curApplication = null;
                }
            }
            //END OF XML PARSING

            //START OF disable-programs.inc GENERATION
            PrintWriter out = new PrintWriter("generated/disable-programs.inc", "UTF-8");
            //Dynamic
            for (String path : getAllPaths()) {
                if (!path.equals("${DOWNLOADS}") && !path.equals("${HOME}/Documents")) {
                    out.println("blacklist " + path);
                }
            }
            //Static
            Scanner s = new Scanner(new File("overlay/disable-programs.inc"));
            while (s.hasNext()) {
                out.println(s.nextLine());
            }
            out.close();
            //END OF disable-programs.inc GENERATION

            //START OF .profiles GENERATION
            for (Application app : applications) {
                PrintWriter outA = new PrintWriter("generated/" + app.getName() + ".profile", "UTF-8");
                //Header
                outA.println("#\n#Profile for " + app.getName() + "\n#");
                outA.println();
                //No Blacklist Explicit Paths
                if (app.getNoBlacklistExplicit() != null) {
                    outA.println("#No Blacklist Explicit Paths");
                    for (String path : app.getNoBlacklistExplicit()) {
                        outA.println("noblacklist " + path);
                    }
                    outA.println();
                }
                //No Blacklist Paths
                if (app.getPaths() != null) {
                    outA.println("#No Blacklist Paths");
                    for (String path : app.getPaths()) {
                        outA.println("noblacklist " + path);
                    }
                }
                if (app.getFiles() != null) {
                    for (String file : app.getFiles()) {
                        outA.println("noblacklist " + file);
                    }
                }
                if (app.getPaths() != null || app.getFiles() != null) {
                    outA.println();
                }
                //Blacklist Paths
                outA.println("#Blacklist Paths");
                outA.println("include /etc/firejail/disable-common.inc");
                outA.println("include /etc/firejail/disable-programs.inc");
                outA.println("include /etc/firejail/disable-passwdmgr.inc");
                if (app.getGenOptions() == null || app.getGenOptions() != null && !app.getGenOptions().contains("nodevel")) {
                    outA.println("include /etc/firejail/disable-devel.inc");
                }
                outA.println();
                //Whitelist Paths
                if (app.getMode()) {
                    if (app.getPaths() != null) {
                        outA.println("#Whitelist Paths");
                        for (String path : app.getPaths()) {
                            if (!path.equals("${DOWNLOADS}")) {
                                outA.println("mkdir " + path);
                            }
                            outA.println("whitelist " + path);
                        }
                    }
                    //Whitelist Files
                    if (app.getFiles() != null) {
                        for (String file : app.getFiles()) {
                            outA.println("mkfile " + file);
                            outA.println("whitelist " + file);
                        }
                    }
                    outA.println("include /etc/firejail/whitelist-common.inc");
                    outA.println();
                }
                //Options
                if (app.getOptions() != null) {
                    outA.println("#Options");
                    for (String option : app.getOptions()) {
                        outA.println(option);
                    }
                }
                outA.close();

                //START OF ALIASES GENERATION
                if (app.getAliases() != null) {
                    for (String alias : app.getAliases()) {
                        PrintWriter outAa = new PrintWriter("generated/" + alias + ".profile", "UTF-8");
                        //Header
                        outAa.println("#\n#Profile for " + app.getName() + ":" + alias + "\n#");
                        outAa.println();
                        outAa.println("include /etc/firejail/" + app.getName() + ".profile");
                        outAa.close();
                    }
                }
                //END OF ALIASES GENERATION
            }
            //END OF .profiles GENERATION
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static ArrayList<String> convertToArray(String input) {
        ArrayList<String> output = new ArrayList<>(Arrays.asList(input.split(" # ")));
        Collections.sort(output);
        return output;
    }

    private static ArrayList<String> getAllPaths() {
        Set<String> paths = new HashSet<>();
        for (Application app : applications) {
            if (app.getPaths() != null) {
                paths.addAll(app.getPaths());
            }
            if (app.getFiles() != null) {
                paths.addAll(app.getFiles());
            }
        }
        ArrayList<String> pathsNew = new ArrayList<>();
        pathsNew.addAll(paths);
        Collections.sort(pathsNew);
        return pathsNew;
    }

}
