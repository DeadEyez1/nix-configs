{ config, lib, pkgs, ...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

  # TODO setup hyprland config here
    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, F, exec, librewolf"
        "$mod, Q, exec, kitty"
        "$mod, E, exec, dolphin"
        "$mod, V, togglefloating"
        "CTRL_SHIFT, Q, killactive"
      ] 
      ++ (
        # workspace
        # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
        builtins.concatLists (builtins.genList (
          x: let
            ws = let 
              c = (x + 1) / 10;
            in
              builtins.toString (x + 1 - (c * 10));
          in [
            "$mod, ${ws}, workspace, ${toString (x + 1)}"
            "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
          ]
        )10)
      );
      bindm = [
        # mouse movements
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };
}