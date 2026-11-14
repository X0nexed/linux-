{ pkgs, ... }:

{
  # Разрешаем установку несвободных программ (нужно для Steam)
  nixpkgs.config.allowUnfree = true;

  # Включаем Steam и открываем порты для Remote Play
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };

  # Включаем 32-битную графику (нужно для запуска игр)
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
