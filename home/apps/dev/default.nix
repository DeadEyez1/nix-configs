{config, pkgs, ...}:
{
  imports = [
    ./git.nix
    ./shell.nix
  ];
  home.packages = with pkgs; [
    vscodium
    devbox
    gnupg
    python3

    tmux
  ];
}