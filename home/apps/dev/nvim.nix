{ pkgs, ... }:
{
   programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    # plugins = with pkgs.vimPlugins; [ 
    #  nvchad
    #  nvchad-ui
    #  vim-nix
    #];
  };   
}
