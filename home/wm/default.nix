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
    libnotify

    # IDK wich one of this needed for QT apps
    catppuccin-kvantum
    catppuccin-qt5ct
    qt6.qtwayland
    qt5.qtwayland

    grim
    slurp
    wl-clipboard
    wl-clip-persist
    cliphist
  ];
}
