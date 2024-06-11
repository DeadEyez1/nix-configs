{config, pkgs, ...}:
{
  imports = [
    ./browser
    ./dev
    ./file
    ./games
    ./multimedia
    ./shell
    ./social
    ./virt
  ];

  # Other apps
  home.packages = with pkgs; [
    gnome.gnome-calculator
  ];
}