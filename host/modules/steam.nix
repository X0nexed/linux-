{ pkgs, ... }:

{
  # Разрешаем установку несвободных программ
  nixpkgs.config.allowUnfree = true;

  # Включаем Steam и открываем порты для Remote Play
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };

  # Включаем 32-битную графику
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Устанавливаем мост XWayland для запуска Steam в Niri
  environment.systemPackages = with pkgs; [
    xwayland-satellite
  ];
}
