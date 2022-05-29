{ pkgs, lib, config, ... }:

{
  imports = [ ./configs/main.nix ./packages/main.nix ];

  nixpkgs.overlays = [ (import ./overlays/st-overlay.nix) ];

  home = {
    stateVersion = "21.11";

    username = "grim";
    homeDirectory = "/home/grim";

    keyboard = {
      layout = "us";
      variant = "intl";
    };

#    pointerCursor = {
#      name = "Adwaita";
#      package = pkgs.gnome.adwaita-icon-theme;
#      size = 32;
#    };
  };

  xsession.enable = true;
  programs.home-manager.enable = true;
  systemd.user.startServices = true;
}
