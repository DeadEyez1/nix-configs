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

    dotnetCorePackages.sdk_8_0_1xx
  ];
}