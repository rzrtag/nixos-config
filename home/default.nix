{ config, pkgs, ... }:

{
  home.username = "rzrtag";
  home.homeDirectory = "/home/rzrtag";
  
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  imports = [
    ./hyprland.nix
  ];
}
