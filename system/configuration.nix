{ config, pkgs, ... }:

{
  imports = [ ];

  # Basic system configuration
  time.timeZone = "America/Chicago";
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable networking
  networking.networkmanager.enable = true;
}
