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
    libnotify

    lightly-qt
    libsForQt5.qt5ct
    qt6Packages.qt6ct
    catppuccin-qt5ct

    grim
    slurp
    wl-clipboard
  ];
}