{ config, pkgs, ...}:
{
  imports = [
    ./hyprland
    ./waybar
    ./ags
  ];

  home.packages = with pkgs; [
    dunst
    rofi-wayland
    pavucontrol
    bibata-cursors

    lightly-qt
    libsForQt5.qt5ct
    qt6Packages.qt6ct
    catppuccin-gtk

    libnotify
    gnome.adwaita-icon-theme
  ];
}