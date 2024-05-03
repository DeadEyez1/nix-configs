{config, pkgs, ...}:
{
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    style = ./style.css;
    settings = [{
      "layer" = "top";
      "position" = "top";
      "height" = 28;
      "modules-left" = [ "hyprland/workspaces" ];
      "modules-center" = [ "clock" ];
      "modules-right" = [ "pulseaudio" "network" "tray" ];

      "hyprland/workspaces" = {
        # "on-click" = "active";
        "format" = "{icon}";
        "all-outputs" = "false";
        "on-scroll-up" = "hyprctl dispatch workspace e+1";
        "on-scroll-down" = "hyprctl dispatch workspace e-1";
        "format-icons" = {
          "active" = "";
          "default" = "";
        };
        "persistent_workspaces" = {
          "*" = 6;
        };
      };

      "pulseaudio" = {
        "format" = "{icon}  {volume}%";
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
        "icon-size" = 12;
        "spacing" = 5;
      };

    }];
  };
}