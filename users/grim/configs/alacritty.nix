{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      env.TERM = "xterm-256color";
      window = {
        opacity = 1.0;
        dynamic_title = true;
        dynamic_padding = true;
        decorations = "full";
        dimensions = { lines = 0; columns = 0; };
        padding = { x = 10; y = 0; };
      };

      shell = { program = "${pkgs.zsh}/bin/zsh"; };

      scrolling = {
        history = 10000;
        multiplier = 3;
      };

      mouse = { hide_when_typing = true; };

      key_bindings = [
        { # clear terminal
          key = "L";
          mods = "Control";
          chars = "\\x0c";
        }
      ];

      font = let fontname = "Meslo Patched"; in {
        normal = { family = fontname; style = "Semibold"; };
        bold = { family = fontname; style = "Bold"; };
        italic = { family = fontname; style = "Semibold Italic"; };
        size = 12;
      };
      cursor.style = "Block";

      colors = {
        primary = {
          background = "0x262b35";
          foreground = "0xdddddd";
        };
        normal = {
          black = "0x1D202F";
          red = "0xf7768e";
          green = "0x9ece6a";
          yellow = "0xe0af68";
          blue = "0x7aa2f7";
          magenta = "0xbb9af7";
          cyan = "0x7dcfff";
          white = "0xa9b1d6";
        };
        bright = {
          black = "0x8188A8";
          red = "0xf7768e";
          green = "0x9ece6a";
          yellow = "0xe0af68";
          blue = "0x7aa2f7";
          magenta = "0xbb9af7";
          cyan = "0x7dcfff";
          white = "0xc0caf5";
        };
        indexed_colors = [
          { index = 16; color = "0xff9e64"; }
          { index = 17; color = "0xdb4b4b"; }
        ];
      };
    };
  };
}
