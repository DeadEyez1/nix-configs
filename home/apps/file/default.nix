{config, pkgs, ...}: 
{
  home.packages = with pkgs; [
    zip
    unzip
    mescc-tools-extra
    p7zip
    rar
    xarchiver
    xfce.thunar
    gedit

    motrix
  ];
}