{config, pkgs, ...}:
{
  nixpkgs.config.allowUnfreePredicate = (pkg: true);

  imports = [
    ./apps
    ./wm
  ];

  home = {
    username = "deadeyez";
    homeDirectory = "/home/deadeyez";
    stateVersion = "23.11";
  };

  xdg = {
    enable = true;
    mimeApps = {
      enable = true;
      defaultApplications = {
        "text/html" = "librewolf.desktop";
        "x-scheme-handler/http" = "librewolf.desktop";
        "x-scheme-handler/https" = "librewolf.desktop";
        "x-scheme-handler/about" = "librewolf.desktop";
        "x-scheme-handler/unknown" = "librewolf.desktop";
        "image/png" = "gwenview.desktop";
      };
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "qtct";
  };

  programs.home-manager.enable = true;
}