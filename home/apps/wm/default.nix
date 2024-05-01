{ config, pkgs, ...}:
{
  imports = [
    ./hyprland
  ];

  home.packages = with pkgs; [
    waybar
    mako

    libnotify
  ];
}