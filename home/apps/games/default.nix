{config, pkgs, ...}:
{
  home.packages = with pkgs; [
    wineWowPackages.unstable
    winetricks
    lutris
    steam-run
    prismlauncher
    protonup-qt
    adwsteamgtk

    zerotierone
    dotnetCorePackages.sdk_8_0
  ];
}