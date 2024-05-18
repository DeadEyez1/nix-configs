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
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    qt6.qtwayland
    qt5.qtwayland

    lxqt.lxqt-policykit
    polkit_gnome

    grim
    slurp
    wl-clipboard
    wl-clip-persist
    cliphist
  ];
}
