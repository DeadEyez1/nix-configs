{config, pkgs, ...}:
{

  imports = [ 
    ./spicetify.nix
    ./easyeffects.nix
 ];

  home.packages = with pkgs; [
    stremio
  ];
  
}