{ pkgs, config, inputs, ...}: {
  programs.zsh = {
    enable = true;
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
    environment = {
      "EDITOR" = "nano";
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  home.packages = with pkgs; [ macchina ];
}
