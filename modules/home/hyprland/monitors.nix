{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    settings.monitor = [ 
      "DP-3, preferred, 0x0, 1"
      "HDMI-A-1, preferred, auto-center-down, 1"
    ];

    extraConfig = ''
      # hyprlang noerror true
        source = ~/.config/hypr/monitors.conf
        source = ~/.config/hypr/workspaces.conf
      # hyprlang noerror false
    '';
  };

  home.packages = with pkgs; [ nwg-displays ];
}
