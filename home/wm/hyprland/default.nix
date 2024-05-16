{ config, lib, pkgs, ...}:
{

  imports = [
    ./hyprland-environtment.nix
  ];

  home.packages = with pkgs; [ hyprpaper ];
  
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    # TODO change to nix syntax
    extraConfig = ''

      # See https://wiki.hyprland.org/Configuring/Monitors/
      monitor=,preferred,auto,1
    
      # Autostart apps
      exec-once = dunst
      exec-once = waybar
      exec-once = hyprpaper
      exec-once = ${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1 &
  
      input {
        kb_layout = us
        kb_variant = 
        kb_model = 
        kb_options =
        kb_rules =

        follow_mouse = 1
        sensitivity = -0.5 # -1.0 - 1.0, 0 means no modification.
      }

      general {
        gaps_in = 5
        gaps_out = 10
        border_size = 2
        col.active_border = rgb(89b4fa)
        col.inactive_border = rgb(#c7086)

        layout = dwindle
      }

      decoration {
        rounding = 8
        inactive_opacity = 0.7
        
        blur {
          xray = false
          enabled = true
          size = 5
          passes = 3
          ignore_opacity = true
          new_optimizations = on
        }
        
        # drop_shadow = true
        # shadow_range = 5
        # shadow_render_power = 3
        # col.shadow = rgb(11111b)
      }

      animations {
        enabled = yes

        bezier = myBezier, 0.05, 0.9, 0.1, 1.05

        animation = windows, 1, 7, myBezier
        animation = windowsOut, 1, 7, default, popin 80%
        animation = border, 1, 10, default
        animation = borderangle, 1, 8, default
        animation = fade, 1, 7, default
        animation = workspaces, 1, 6, default
      }

      dwindle {
        pseudotile = true # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true # you probably want this
      }

      master {
        new_is_master = true
      }

      gestures {
        workspace_swipe = false
      }

      windowrulev2 = float,class:(kitty),title:(kitty)
      
      $mainMod = SUPER

      bind = , Print, exec, grim -g "$(slurp -d)" - | wl-copy
      exec-once = wl-paste --type text --watch cliphist store
      exec-once = wl-paste --type image --watch cliphist store
      
      bind = $mainMod, F, exec, librewolf
      bind = $mainMod, Q, exec, kitty
      bind = $mainMod, E, exec, nautilus
      bind = $mainMod, D, togglefloating
      bind = $mainMod, A, exec, rofi -show drun
      bind = CTRL_SHIFT, Q, killactive
      bind = $mainMod, M, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle

      bind = $mainMod, V, exec, cliphist list | rofi -dmenu | cliphist decode | wl-copy

      # Switch workspaces
      bind = $mainMod, 1, workspace, 1
      bind = $mainMod, 2, workspace, 2
      bind = $mainMod, 3, workspace, 3
      bind = $mainMod, 4, workspace, 4
      bind = $mainMod, 5, workspace, 5
      bind = $mainMod, 6, workspace, 6
      bind = $mainMod, 7, workspace, 7
      bind = $mainMod, 8, workspace, 8
      bind = $mainMod, 9, workspace, 9
      bind = $mainMod, 0, workspace, 10

      bind = SUPER,Tab,cyclenext,
      bind = SUPER,Tab,bringactivetotop,

      # Move active window to a workspace
      bind = $mainMod SHIFT, 1, movetoworkspace, 1
      bind = $mainMod SHIFT, 2, movetoworkspace, 2
      bind = $mainMod SHIFT, 3, movetoworkspace, 3
      bind = $mainMod SHIFT, 4, movetoworkspace, 4
      bind = $mainMod SHIFT, 5, movetoworkspace, 5
      bind = $mainMod SHIFT, 6, movetoworkspace, 6
      bind = $mainMod SHIFT, 7, movetoworkspace, 7
      bind = $mainMod SHIFT, 8, movetoworkspace, 8
      bind = $mainMod SHIFT, 9, movetoworkspace, 9
      bind = $mainMod SHIFT, 0, movetoworkspace, 10

      # Scroll through existing workspaces with mainMod + scroll
      bind = $mainMod, mouse_down, workspace, e-1
      bind = $mainMod, mouse_up, workspace, e+1
      
      bind = $mainMod, Left, workspace, e-1
      bind = $mainMod, Right, workspace, e+1

      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod, mouse:273, resizewindow

      # Media bind (that FN+something)
      bindle =, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
      bindle =, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
      bindl =, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
      bindl =, XF86AudioPlay, exec, playerctl play-pause
      bindl =, XF86AudioNext, exec, playerctl next 
      bindl =, XF86AudioPrev, exec, playerctl previous

      bind =, XF86Tools, exec, spotify
      bind =, XF86Calculator, exec, gnome-calculator

      unbind = W, D, H

    '';
  };
}
