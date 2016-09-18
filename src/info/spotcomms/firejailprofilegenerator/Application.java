package info.spotcomms.firejailprofilegenerator;

import java.util.ArrayList;

public class Application {

  private String name;
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