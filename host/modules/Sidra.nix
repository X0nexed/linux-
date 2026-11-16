{ config, pkgs, ... }:

let
  sidra = (builtins.getFlake "github:wimpysworld/sidra").packages.${pkgs.stdenv.hostPlatform.system}.default;
in
{
  # Если это системный конфиг:
  environment.systemPackages = with pkgs; [
    # ... ваши другие программы ...
    sidra
  ];

  # Если это конфиг Home Manager:
  # home.packages = with pkgs; [
  #   # ... ваши другие программы ...
  #   sidra
  # ];
}
