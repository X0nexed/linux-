{ pkgs, ... }: {
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
    vscode
  ];
}
