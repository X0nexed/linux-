{
  programs.niri.enable = true;
  services.displayManager.noctalia-greeter = {
    enable = true;
    settings = {
      session.default = "niri";
      user.default = "xonex";
      keyboard = {
        layout = "us,ua";
        options = "grp:win_space_toggle";
      };
    };
  };

  services.libinput.enable = true;
  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;
  security.rtkit.enable = true;
  security.polkit.enable = true;
}
