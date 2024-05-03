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

  programs.home-manager.enable = true;
}