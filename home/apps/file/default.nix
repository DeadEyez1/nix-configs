{config, pkgs, ...}: 
{
  home.packages = with pkgs; [
    zip
    unzip
    mescc-tools-extra
    p7zip
    rar
    xarchiver
    gnome.nautilus
    gedit

    motrix
  ];
}