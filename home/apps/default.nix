{config, pkgs, ...}:
{
  imports = [
    ./file
    ./browser
    ./social
    ./dev
    ./virt
    ./multimedia
    ./games
  ];
}