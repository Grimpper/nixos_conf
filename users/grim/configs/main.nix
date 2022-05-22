{ config, pkgs, lib, ... }:

{
  imports = [
    ./bspwm.nix
    ./polybar.nix
    ./rofi/rofi.nix
    ./alacritty.nix
    ./picom.nix
    ./zsh.nix
  ];

  programs = {
    command-not-found.enable = true;

    git = {
      enable = true;
      userName = "Grimpper";
      userEmail = "sergio.pastorperez@gmail.com";
      extraConfig.init.defaultBranch = "master";
    };

    gpg = {
      enable = true;
    };

    nushell.enable = true;

    starship = {
      enable = true;
      # Configuration written to ~/.config/starship.toml
      settings = {
        # add_newline = false;

        # character = {
        #   success_symbol = "[➜](bold green)";
        #   error_symbol = "[➜](bold red)";
        # };

        # package.disabled = true;
      };
    };
  };

  services.gpg-agent = {
    enable = true;
    pinentryFlavor = "qt";
  };

  xsession.enable = true;
}