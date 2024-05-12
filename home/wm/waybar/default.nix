{config, pkgs, ...}:
{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = [{
      "layer" = "top";
      "position" = "top";
      "height" = 28;
      "modules-left" = [ "hyprland/workspaces" "hyprland/window" ];
      "modules-center" = [ "clock" ];
      "modules-right" = [ "tray" "pulseaudio" "pulseaudio#microphone" "network" ];

      "hyprland/workspaces" = {
        # "on-click" = "active";
        "format" = "{icon}";
        "all-outputs" = "false";
        "on-scroll-up" = "hyprctl dispatch workspace e-1";
        "on-scroll-down" = "hyprctl dispatch workspace e+1";
        "format-icons" = {
          "active" = "󰮯";
          "default" = "󱙝";
          "urgent" = "󰊠";
        };
        "persistent_workspaces" = {
          "*" = 4;
        };
      };
      "hyprland/window" = {
        "format" = "> {class}";
        "separate-outputs" = true;
      };

      "pulseaudio" = {
        "format" = "{icon}  {volume}%";
        "format-muted" = "  Muted";
        "on-click" = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
        "on-click-right" = "pavucontrol";
        "scroll-step" = 1;
        "format-icons" = {
          "default" = [ "" "" "" ];
        };
      };

      "pulseaudio#microphone" = {
        "format" = "{format_source}";
        "format-source" = " {volume}%";
        "format-source-muted" = "";
        "on-click" = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
        "scroll-step" = 2;
      };

      "clock" = {
        "format-alt" = "{:%A %b %d | %H:%M}";
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
        "icon-size" = 14;
        "spacing" = 5;
      };

    }];
  };
}