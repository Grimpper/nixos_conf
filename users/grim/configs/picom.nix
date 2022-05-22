{ pkgs, ... }:

{
  services.picom = {
    enable = true;
    package = pkgs.picom.overrideAttrs (old: {
      src = pkgs.fetchFromGitHub {
        owner = "jonaburg";
        repo = "picom";
        rev = "e3c19cd7d1108d114552267f302548c113278d45";
        sha256 = "19nglw72mxbr47h1nva9fabzjv51s4fy6s1j893k4zvlhw0h5yp2";
      };
    });

    activeOpacity = "1.0";
    inactiveOpacity = "1.0";
    menuOpacity = "1.0";

    blur = true;
    experimentalBackends = true;
    backend = "glx";
    blurExclude = [ "class_i = 'polybar'" "window_type *= 'menu'" ];

    fade = false;
    fadeDelta = 5;
    fadeExclude = [ "window_type *= 'menu'" ];

    vSync = true;

    extraOptions = ''
      blur-method = "dual_kawase";
      blur-strength = 4;
      corner-radius = 8.0;
      round-borders = 1;
    '';
  };
}
