{
  imports = [
    ./modules/bundle.nix
  ];

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Kyiv";

  i18n.defaultLocale = "uk_UA.UTF-8";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  powerManagement.enable = true;
  hardware.bluetooth.enable = true;

  system.stateVersion = "26.05";

}

