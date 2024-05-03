{ config, pkgs, ...}:
{
  imports = [
    ./hyprland
    ./waybar
    # ./ags
  ];

  home.packages = with pkgs; [
    dunst
    rofi-wayland
    pavucontrol
    libnotify

    lightly-qt
    libsForQt5.qt5ct
    qt6Packages.qt6ct

    grim
    slurp
    wl-clipboard
  ];
}