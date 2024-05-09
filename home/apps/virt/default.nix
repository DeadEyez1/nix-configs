{config, pkgs, ...}:
{
  home.packages = with pkgs; [
    scrcpy
    android-tools
    distrobox

    pods
  ];
}