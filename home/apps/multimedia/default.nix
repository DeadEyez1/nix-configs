{config, pkgs, ...}:
{

  imports = [ 
    ./spicetify.nix
    ./easyeffects.nix
 ];

  home.packages = with pkgs; [
    stremio
    helvum
    ffmpeg
    premid
    vlc
    gnome.eog
    playerctl
    obs-studio
  ];
  
}
