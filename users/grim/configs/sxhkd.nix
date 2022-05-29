{
  services.sxhkd = {
    enable = true;
    keybindings = {
      # -- WM INDEPENDENT HOTKEYS -- #

      # terminal emulator
      "super + Return" = "alacritty";

      # program launcher (Apps)
      "super + p" = "rofi -show drun -icon-theme Tela-circle -show-icons";

      # screenshot launcher (Apps)
      "super + alt + c" = "flameshot gui";

      # colorpicker launcher (Apps)
      "super + ctrl + c" = "xcolor";

      # make sxhkd reload its configuration files:
      "super + shift + Escape" = "pkill -USR1 -x sxhkd";

      # -- BSPWM HOTKEYS -- #

      # powermenu
      "super + shift + q" = "~/.config/rofi/powermenu/powermenu.sh";

      # restart bspwm
      "super + ctrl + r" = "bspc wm -r";

      # close
      "super + shift + c" = "bspc node -c";

      # kill
      "super + shift + k" = "bspc node -k";

      # alternate between the tiled and monocle layout
      "super + shift + Return" = "bspc desktop -l next";

      # send the newest marked node to the newest preselected node
      "super + y" = "bspc node newest.marked.local -n newest.!automatic.local";

      # -- STATE / FLAGS -- #

      "super + {t,space}" = "bspc node -t {tiled,floating}";

      "super + shift + {t,space}" = "bspc node -t {pseudo_tiled,fullscreen}";

      # set the node flags
      "super + ctrl + {m,x,y,z}" =
        "bspc node -g {marked,locked,sticky,private}";

      # -- FOCUS / SWAP -- #

      # focus the node in the given direction
      "super + {_,shift + }{s,d,e,f}" =
        "bspc node -{f,s} {west,south,north,east}";

      # focus the next/previous monitor
      "super + Tab" = "bspc monitor --focus {prev,next}";

      # focus the next/previous desktop in the current monitor
      "super + bracket{left,right}" = "bspc desktop -f {prev,next}.local";

      # send window to next monitor
      "super + shift + {grave,Tab}" = ''
        DIR={next,prev}; \
        bspc node -m "$DIR"; \
        bspc monitor -f "$DIR";
      '';

      # focus the older or newer node in the focus history
      "super + {o,i}" = ''
            bspc wm -h off; \
        	  bspc node {older,newer} -f; \
        	  bspc wm -h on
      '';

      # focus or send to the given desktop
      "super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";

      # Focus the next/previous node in the current desktop
      "super + {_, shift + }w" =
        "bspc node -f {next, prev}.local.!hidden.window";

      # -- ROTATE TREE -- #
      # Rotate tree
      "super + r" = "bspc node @/ -R 90 forward";

      # -- RECEPTACLES -- #

      # insert receptacle
      "super + ctrl + {Left,Down,Up,Right}" =
        "bspc node --presel-dir {west,south,north,east} -i";

      # close all receptacles
      "super + c" =
        "for win in `bspc query -N -n .leaf.!window`; do bspc node $win -k ; done;";

      # Move to rectacle
      "super + shift + r" =
        "bspc node $(bspc query -N -n focused) -n $(bspc query -N -n .leaf.!window)";

      # -- PRESELECT -- #

      # preselect the direction
      "super + {Left,Down,Up,Right}" = "bspc node -p {west,south,north,east}";

      # preselect the ratio
      "super + mod5 + {1-9}" = "bspc node -o 0.{1-9}";

      # cancel the preselection for the focused node
      "super + Escape" = "bspc node -p cancel";

      # cancel the preselection for the focused desktop
      "super + ctrl + shift + space" =
        "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";

      # -- MOVE / RESIZE -- #

      # balance layout
      "super + shift + b" = "bspc node @/ --balance";

      # resize both sides
      "super + shift + {Left,Down,Up,Right}" = ''
            {bspc node -z right -20 0; bspc node -z left +20 0,\
        	  bspc node -z top 0 +20; bspc node -z bottom 0 -20,\
        	  bspc node -z top 0 -20; bspc node -z bottom 0 +20,\
        	  bspc node -z right +20 0; bspc node -z left -20 0}
      '';

      # move a floating window
      "super + mod5 + {Left,Down,Up,Right}" =
        "bspc node -v {-20 0,0 20,0 -20,20 0}";

      # -- GAP CONTROL -- #

      # dynamic control
      "super + shift + {Home,End}" = ''
        bspc config -d focused window_gap "$(($(bspc config -d focused window_gap) {-,+} 5))";
      '';

      # presets
      "super + shift + {Prior,Next}" =
        "bspc config -d focused window_gap {0,15}";

      # volume control
      # XF86AudioLowerVolume
      # 	amixer set Master 5%-
      # XF86AudioRaiseVolume
      # 	amixer set Master 5%+
      # XF86AudioMute
      # 	amixer set Master toggle

      # brightness control
      # XF86MonBrightnessDown
      # 	sudo xbacklight -dec 5
      # XF86MonBrightnessUp
      # 	sudo xbacklight -inc 5

      # lock screen
      "super + shift + x" = "betterlockscreen -l";
    };
  };
}
