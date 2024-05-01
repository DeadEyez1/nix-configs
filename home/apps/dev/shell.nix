{ pkgs, config, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
  };

  programs.kitty = {
    enable = true;
    shellIntegration = { enableZshIntegration = true; }; 
    font = {
      name = "FiraCode Nerd Font";
      size = 11;
    };
    theme = "Catppuccin-Mocha";
    settings = {
      enable_audio_bell = false;
    };
  };

  programs.starship = let 
    flavour = "mocha";
  in {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = true;
      directory = { style = "bold lavender"; };
      palette = "catppuccin_${flavour}";
    } // builtins.fromTOML (builtins.readFile
      (pkgs.fetchFromGitHub{
        owner = "catppuccin";
        repo = "starship";
        rev = "5629d2356f62a9f2f8efad3ff37476c19969bd4f"; # Replace with the latest commit hash
        sha256 = "sha256-nsRuxQFKbQkyEI4TXgvAjcroVdG+heKX5Pauq/4Ota0=";
      } + /palettes/${flavour}.toml));
  };
}