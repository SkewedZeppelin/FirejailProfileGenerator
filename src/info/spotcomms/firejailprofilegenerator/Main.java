package info.spotcomms.firejailprofilegenerator;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Main {

  private static ArrayList<Application> applications = new ArrayList<Application>();
  private static Application curApplication;

  public static void main(String[] args) {
    try {
      File configFile = new File("Firejail_Config.xml");
      DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
      DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();
      Document config = documentBuilder.parse(configFile);
      config.getDocumentElement().normalize();

      NodeList nodes = config.getElementsByTagName("application");
      for(int c = 0; c < nodes.getLength(); c++) {
        Node curNode = nodes.item(c);
        if (curNode.getNodeType() == Node.ELEMENT_NODE) {
          Element element = (Element) curNode;
          curApplication = new Application(element.getElementsByTagName("name").item(0).getTextContent());
          curApplication.setMode(element.getElementsByTagName("mode").item(0).getTextContent().equals("whitelist") ? true : false);
          if(element.getElementsByTagName("aliases").item(0) != null) {
            curApplication.setAliases(convertToArray(element.getElementsByTagName("aliases").item(0).getTextContent()));
          }
          if(element.getElementsByTagName("options").item(0) != null) {
            curApplication.setOptions(convertToArray(element.getElementsByTagName("options").item(0).getTextContent()));
          }
          if(element.getElementsByTagName("paths").item(0) != null) {
            curApplication.setPaths(convertToArray(element.getElementsByTagName("paths").item(0).getTextContent()));
          }
          if(element.getElementsByTagName("noblacklistexplicit").item(0) != null) {
            curApplication.setNoBlacklistExplicit(convertToArray(element.getElementsByTagName("noblacklistexplicit").item(0).getTextContent()));
          }
          if(element.getElementsByTagName("genoptions").item(0) != null) {
            curApplication.setGenOptions(convertToArray(element.getElementsByTagName("genoptions").item(0).getTextContent()));
          }
          applications.add(curApplication);
          curApplication = null;
        }
      }

      PrintWriter out = new PrintWriter("generated/disable-programs.inc", "UTF-8");
      for(String path : getAllPaths()) {
        out.println(path);
      }
      out.close();
      out = null;

      for(Application app : applications) {
        PrintWriter outA = new PrintWriter("generated/" + app.getName() + ".profile", "UTF-8");
        //Header
        outA.println("#\n#Profile for " + app.getName() + "\n#");
        outA.println();
        //No Blacklist Explicit Paths
        if(app.getNoBlacklistExplicit() != null) {
          outA.println("#No Blacklist Explicit Paths");
          for(String path : app.getNoBlacklistExplicit()) {
            outA.println("noblacklist " + path);
          }
          outA.println();
        }
        //No Blacklist Paths
        if(app.getPaths() != null) {
          outA.println("#No Blacklist Paths");
          for(String path : app.getPaths()) {
            outA.println("noblacklist " + path);
          }
          outA.println();
        }
        //Blacklist Paths
        outA.println("#Blacklist Paths");
        outA.println("include /etc/firejail/disable-common.inc");
        outA.println("include /etc/firejail/disable-programs.inc");
        outA.println("include /etc/firejail/disable-passwdmgr.inc");
        if(app.getGenOptions() == null || app.getGenOptions() != null && !app.getGenOptions().contains("nodevel")) {
          outA.println("include /etc/firejail/disable-devel.inc");
        }
        outA.println();
        //Whitelist Paths
        if(app.getPaths() != null) {
          if(app.getMode()) {
            outA.println("#Whitelist Paths");
            for(String path : app.getPaths()) {
              outA.println("whitelist " + path);
            }
            outA.println("include /etc/firejail/whitelist-common.inc");
            outA.println();
          }
        }
        //Options
        if(app.getOptions() != null) {
          outA.println("#Options");
          for(String option : app.getOptions()) {
            outA.println(option);
          }
        }
        outA.close();
        if(app.getAliases() != null) {
          for(String alias : app.getAliases()) {
            PrintWriter outAa = new PrintWriter("generated/" + alias + ".profile", "UTF-8");
            //Header
            outAa.println("#\n#Profile for " + app.getName() + ":" + alias + "\n#");
            outAa.println();
            outAa.println("include /etc/firejail/" + app.getName() + ".profile");
            outAa.close();
          }
        }
      }

    } catch(Exception e) {
      e.printStackTrace();
    }
  }

  private static ArrayList<String> convertToArray(String input) {
    return new ArrayList<String>(Arrays.asList(input.split(" # ")));
  }

  private static ArrayList<String> getAllPaths() {
    Set<String> paths = new HashSet<String>();
    for(Application app: applications) {
      if(app.getPaths() != null) {
        for(String path : app.getPaths()) {
          paths.add(path);
        }
      }
    }
    ArrayList<String> pathsNew = new ArrayList<String>();
    pathsNew.addAll(paths);
    Collections.sort(pathsNew);
    return pathsNew;
  }

}