{config, pkgs, ...}: 
{
  home.packages = with pkgs; [
    zip
    unzip
    mescc-tools-extra
    p7zip
    rar
    gnome.file-roller
    gnome.nautilus
    
    motrix
  ];
}