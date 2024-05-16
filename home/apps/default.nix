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

  home.packages = with pkgs; [
    gnome.gnome-calculator
  ];
}
