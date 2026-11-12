{ pkgs, inputs, ... }:
let
  vscodePkgs = import inputs.vscode-nixpkgs {
    inherit (pkgs.stdenv.hostPlatform) system;
    config.allowUnfree = true;
  };
in {
  environment.systemPackages = with pkgs; [
    git
    wget
    vim
    gnome-text-editor
    kitty
    nautilus
    telegram-desktop
    zip
    unzip
    
    discord
    vscodePkgs.vscode
  ];
}
