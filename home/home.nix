{ config, pkgs, ... }:
{
  nixpkgs.config.allowUnfreePredicate = (pkg: true);
  
  imports = [
    ./apps
    ./wm
  ];

  home = {
    username = "deadeyez";
    homeDirectory = "/home/deadeyez";
    stateVersion = "24.05";
  };

  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = {
        "text/html" = "librewolf.desktop";
        "x-scheme-handler/http" = "librewolf.desktop";
        "x-scheme-handler/https" = "librewolf.desktop";
        "x-scheme-handler/about" = "librewolf.desktop";
        "x-scheme-handler/unknown" = "librewolf.desktop";
        "image/jpg" = "org.gnome.eog.desktop;userapp-eog-D662M2.desktop";
        "image/png" = "org.gnome.eog.desktop;userapp-eog-D662M2.desktop";
        "image/jpeg" = "org.gnome.eog.desktop;userapp-eog-D662M2.desktop";
        "inode/directory" = "org.gnome.nautilus.desktop";
      };
    };
  };

  programs.home-manager.enable = true;
}
