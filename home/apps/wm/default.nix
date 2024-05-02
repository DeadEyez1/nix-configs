{ config, pkgs, ...}:
{
  imports = [
    ./hyprland
    ./waybar
  ];

  home.packages = with pkgs; [
    dunst
    rofi-wayland
    pavucontrol
    bibata-cursors

    libnotify
  ];
}