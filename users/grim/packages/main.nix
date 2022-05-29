{ pkgs, ... }:
let
  default-python = pkgs.python3.withPackages (python-packages:
    with python-packages; [
      pip
      black
      flake8
      setuptools
      wheel
      twine
      flake8
      virtualenv
    ]);
in {
  home.packages = with pkgs; [
    # TERMINAL
    (st.overrideAttrs (old: { postPatch = "cp ${../overlays/config.h} ."; }))
    any-nix-shell
    htop
    zip
    unzip
    tree
    feh
    ripgrep
    ranger

    # DEVELOPMENT
    nixfmt
    rnix-lsp
    emacs
    default-python
    gcc
    gnumake
    binutils
    gdb
    ccls
    nodejs
    gnupg
    git
    git-crypt

    # OFFICE
    qutebrowser

    # DEFAULT
    sxhkd
    xcolor
    xorg.xsetroot
    flameshot
    pavucontrol
    tdesktop
    discord
    vlc
  ];
}
