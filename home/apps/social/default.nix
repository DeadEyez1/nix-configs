{config, pkgs, ...}:
{
  home.packages = with pkgs; [
    vesktop
    ferdium
    telegram-desktop
  ];
}