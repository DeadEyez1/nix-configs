{config, pkgs, inputs, ...}:
{  
  home = {
    sessionVariables = {
      BROWSER = "librewolf";
      TERMINAL = "kitty";

      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";

      GDK_BACKEND = "wayland";
      GTK_USE_PORTAL = "1";
      QT_QPA_PLATFORM = "wayland";
      MOZ_ENABLE_WAYLAND = "1";
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
    theme = {
      name = "Catppuccin-Mocha-Compact-Blue-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = ["blue"];
        tweaks = ["normal"];
        size = "compact";
        variant = "mocha";
      };
    };

    iconTheme = {
      package = pkgs.gnome.adwaita-icon-theme;
      name = "Adwaita";
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style = {
      package = pkgs.catppuccin-kvantum;
      name = "kvantum";
    };
  };
}
