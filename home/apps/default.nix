{config, pkgs, ...}:
{
  imports = [
    ./wm
    ./file
    ./browser
    ./social
    ./dev
  ];
}