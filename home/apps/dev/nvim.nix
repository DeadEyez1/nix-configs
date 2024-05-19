{ pkgs, ... }:
{
   programs.neovim = {
    enable = true;
    # defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
    withPython3 = true;
    extraPackages = with pkgs; [
      lua-language-server
      stylua
      nixd
      nodePackages.typescript-language-server
      vscode-langservers-extracted
      nodePackages.yaml-language-server
      python311Packages.python-lsp-server
    ];
  };
}
