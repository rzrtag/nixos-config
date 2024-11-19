{ config, pkgs, ... }:

{
  imports = [
    ../../home/hyprland.nix
  ];

  home = {
    username = "rzrtag";
    homeDirectory = "/home/rzrtag";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    git
    neovim
    htop
    btop
    ripgrep
    fd
  ];
}
