{ config, pkgs, ... }:

{
  imports = [ ];

  # System configuration
  time.timeZone = "America/Chicago";
  i18n.defaultLocale = "en_US.UTF-8";

  # Basic system packages
  environment.systemPackages = with pkgs; [
    wget
    curl
    git
    vim
  ];

  # Enable basic services
  services = {
    openssh.enable = true;
    printing.enable = true;
  };
}
