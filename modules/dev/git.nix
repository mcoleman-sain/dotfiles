{ config, pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [ git ];
  environment.shellAliases = {
    gst = "git status";
    gc = "git commit";
    gd = "git diff";
    gcm = "git checkout master";
  };
  home.configFile = with config.local; {
    "git/config".source = "${configDir}/git/config";
  };
}
