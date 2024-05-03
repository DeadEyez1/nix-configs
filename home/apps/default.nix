{config, pkgs, ...}:
{
  imports = [
    ./wm
    ./file
    ./browser
    ./social
    ./dev
    ./virt
    ./multimedia
    ./games
  ];
}