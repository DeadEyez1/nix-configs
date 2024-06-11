{config, pkgs, ...}:
{
  home.packages = with pkgs; [
    floorp
    librewolf

    google-chrome
    brave
  ];
}