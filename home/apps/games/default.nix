{ lib, config, pkgs, ...}:
{
  home.packages = with pkgs; [
    wineWowPackages.unstable
    winetricks
    steam-run
    prismlauncher
    protonup
    adwsteamgtk
    
    (lutris.override {
      extraLibraries =  pkgs: [
        openssl
        pango
      ];
    })

    zerotierone
    dotnetCorePackages.sdk_8_0
  ];

  home.sessionVariables = {
  STEAM_EXTRA_COMPAT_TOOLS_PATHS =
    "\${HOME}/.steam/root/compatibilitytools.d";
  };
}