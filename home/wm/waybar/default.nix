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
      "modules-right" = [ "tray" "group/audio" "network" ];

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

      "group/audio" = {
        "orientation" = "horizontal";
        "modules" = [ "pulseaudio" "pulseaudio#mic" ];
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
        "ignored-sinks" = ["Easy Effects Sink"];
      };

      "pulseaudio#mic" = {
        "format" = "{format_source}";
        "format-source" = " {volume}%";
        "format-source-muted" = "  Muted";
        "on-click" = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle";
        "scroll-step" = 2;
        "ignored-source" = ["Easy Effects Source"];
      };

      "clock" = {
        "format-alt" = "{:%A %b %d | %H:%M}";
      };

      "network" = {
        "format-disconnected" = "󰖪 Disconnected";
        "format-ethernet" = "󰈀 Connected";
        "format-linked" = "󰖪 {essid} (No IP)";
        "format-wifi" = "󰖩 {essid}";
        "format-alt" = "  {bandwidthUpBytes}    {bandwidthDownBytes}";
        "interval" = 1;
        "tooltip" = true;
      };

      "tray" = {
        "icon-size" = 14;
        "spacing" = 5;
      };

    }];
  };
}