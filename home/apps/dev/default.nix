{config, pkgs, ...}:
{
  imports = [
    ./git.nix
    ./shell.nix
    ./nvim.nix
  ];
  home.packages = with pkgs; [
    vscodium
    devbox
    gnupg
    python3
    remmina

    tmux
  ];
}