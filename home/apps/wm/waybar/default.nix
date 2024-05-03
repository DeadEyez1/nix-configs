{config, pkgs, ...}:
{
  programs.waybar = {
    enable = true;
    settings = [{
      "layer" = "top";
      "position" = "top";
      "height" = 28;
      "modules-lef" = [ "hyprland/workspaces" ];
      "modules-center" = [ "clock" ];
      "modules-right" = [ "pulseaudio" "network" "tray" ];
      
      # "custom/rofi" = {
      #   "format" = "";
      #   "on-click" = "rofi -show drun";
      # };

      "hyprland/workspaces" = {
        "on-click" = "active";
        "format" = "<sub>{icon}</sub>";
        "all-outputs" = "false";
        # "on-scroll-up" = "hyprctl dispatch workspace e+1";
        # "on-scroll-down" = "hyprctl dispatch workspace e-1";
        "format-icons" = {
          "urgent" = "";
          "default" = "";
        };
        "persistent_workspaces" = {
          "*" = 6;
        };
      };

      "pulseaudio" = {
        "format" = "{icon} {volume}%";
        "format-muted" = "󰖁 Muted";
        "on-click" = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        "on-click-right" = "pavucontrol";
        "scroll-step" = 1;
        "format-icons" = {
          "default" = [ "" "" "" ];
        };
      };

      "clock" = {
        "format-alt" = "{:%H:%M | %A %b %d}";
      };

      "network" = {
        "format-disconnected" = "󰖪 Disconnected";
        "format-ethernet" = "󰈀 Connected";
        "format-linked" = "󰖪 {essid} (No IP)";
        "format-wifi" = "󰖩 {essid}";
        "interval" = 1;
        "tooltip" = false;
      };

      "tray" = {
        "icon-size" = 15;
        "spacing" = 5;
      };

    }];
  };
}