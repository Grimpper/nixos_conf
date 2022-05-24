{
  xsession.windowManager.bspwm = {
    enable = true;

    monitors = { HDMI-0 = [ "1" "2" "3" "4" "5" "6" "7" "8" "9" "10" ]; };
    # monitors = { HDMI-0 = [ "" "" "" "" "" "" "" "" "" "" ]; };

    settings = {
      # -- THEME -- #
      border_width = 2;
      window_gap = 10;
      top_padding = 20;
      bottom_padding = 0;

      gapless_monocle = false;
      borderless_monocle = true;
      split_ratio = 0.5;

      focused_border_color = "#65b2ff";
      normal_border_color = "#3b4252";

      # -- MOUSE -- #
      pointer_modifier = "mod1";
      pointer_action1 = "move";
      pointer_action2 = "resize_side";
    };

    rules = {
      "Emacs" = { state = "tiled"; };
    };

    startupPrograms = [
      "feh --bg-fill $HOME/wallpapers/ori.jpg"

      # Terminate already running polybar instances
      "killall -q polybar"
      "polybar -q -r top"

      "pkill sxhkd"
      "sxhkd -c /home/grim/.config/sxhkd/sxhkdrc"
    ];
  };
}
