{config, pkgs, inputs, ...}:
{
  xdg.enable = true;
  
  home = {
    sessionVariables = {
      BROWSER = "librewolf";
      TERMINAL = "kitty";

      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
    };
    pointerCursor = {
      x11.enable = true;
      gtk.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
  };

  gtk = {
    enable = true;
    catppuccin = {
      enable = true;
      flavour = "mocha";
      accent = "blue";
      size = "standard";
      tweaks = [ "normal" ];
    };

    iconTheme = {
      package = pkgs.gnome.adwaita-icon-theme;
      name = "Adwaita";
    };
  };
}