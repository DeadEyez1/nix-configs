{pkgs, lib, inputs, ...}:
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
in
{
  nixpkgs.config.allowUnfreePredicate=pkg: builtins.elem (lib.getName pkg) [
    "spotify"
  ];

  imports = [ inputs.spicetify-nix.homeManagerModules.default ];

  # Configure spicetify :)
  programs.spicetify = {
    enable = true;
    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";

    enabledExtensions = with spicePkgs.extensions; [
      shuffle
      trashbin
      songStats
      copyToClipboard
      hidePodcasts
      adblock
    ];

    enabledCustomApps = with spicePkgs.apps; [
      lyrics-plus
    ];
  };
}