{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = "*,preferred,auto,1";
      general = {
        gaps_out = 0;
        border_size = 3;
      };
    };
  };
}
