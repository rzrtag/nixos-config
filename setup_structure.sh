#!/bin/sh

# Create directories
mkdir -p modules/home
mkdir -p modules/system

# Create modules/home/default.nix if it doesn't exist
if [ ! -f modules/home/default.nix ]; then
  cat <<EOF > modules/home/default.nix
{
  config,
  pkgs,
  ...
}: {
  home.username = "rzrtag";
  home.homeDirectory = "/home/rzrtag";

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    git
    neovim
    htop
    btop
    ripgrep
    fd
    zsh
    starship
    bat
    exa
  ];

  programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      plugins = ["git" "z" "sudo"];
    };
  };

  programs.starship = {
    enable = true;
    promptOrder = ["username" "hostname" "directory" "git_branch" "git_status" "cmd_duration" "line_break" "jobs" "character"];
  };
}
EOF
fi

# Create modules/system/default.nix if it doesn't exist
if [ ! -f modules/system/default.nix ]; then
  cat <<EOF > modules/system/default.nix
{ config, pkgs, ... }:

{
  imports = [ ];

  # Basic system configuration
  time.timeZone = "America/Chicago";
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable networking
  networking.networkmanager.enable = true;
}
EOF
fi

echo "Directory structure and missing files created successfully."