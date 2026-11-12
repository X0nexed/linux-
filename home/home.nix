{ inputs, ... }: {
  imports = [ inputs.noctalia.homeModules.default ];

  home.username = "xonex";
  home.homeDirectory = "/home/xonex";
  home.stateVersion = "26.05";

  programs.noctalia = {
    enable = true;
    settings.shell.polkit_agent = true;
  };

  xdg.configFile."niri/config.kdl".source = ./niri.kdl;

}
