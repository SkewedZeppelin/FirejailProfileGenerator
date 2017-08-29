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

import java.util.ArrayList;

class Application {

    private final String name;
    private ArrayList<String> aliases;
    private boolean mode;//false == blacklist, true == whitelist
    private ArrayList<String> options;
    private ArrayList<String> genOptions;
    private ArrayList<String> noBlacklistExplicit;
    private ArrayList<String> paths;
    private ArrayList<String> files;

    public Application(String name) {
        this.name = name;
    }

    public ArrayList<String> getAliases() {
        return aliases;
    }

    public void setAliases(ArrayList<String> aliases) {
        this.aliases = aliases;
    }

    public boolean getMode() {
        return mode;
    }

    public void setMode(boolean mode) {
        this.mode = mode;
    }

    public ArrayList<String> getOptions() {
        return options;
    }

    public void setOptions(ArrayList<String> options) {
        this.options = options;
    }

    public ArrayList<String> getGenOptions() {
        return genOptions;
    }

    public void setGenOptions(ArrayList<String> genOptions) {
        this.genOptions = genOptions;
    }

    public ArrayList<String> getNoBlacklistExplicit() {
        return noBlacklistExplicit;
    }

    public void setNoBlacklistExplicit(ArrayList<String> noBlacklistExplicit) {
        this.noBlacklistExplicit = noBlacklistExplicit;
    }

    public ArrayList<String> getPaths() {
        return paths;
    }

    public void setPaths(ArrayList<String> paths) {
        this.paths = paths;
    }

    public ArrayList<String> getFiles() {
        return files;
    }

    public void setFiles(ArrayList<String> files) {
        this.files = files;
    }


    public String getName() {
        return name;
    }

}
