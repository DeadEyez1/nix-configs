{config, pkgs, ...}:
{
  home.packages = with pkgs; [
    vscodium
    devbox
    beekeeper-studio
  ];
}
