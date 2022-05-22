{ pkgs, ... }:

{
  imports = [
    ./packages/main.nix
    ./configs/main.nix
  ];

  nixpkgs.overlays = [ (import ./overlays/st-overlay.nix) ];

  home = {
    stateVersion = "22.05";

    username = "grim";
    homeDirectory = "/home/grim";

    keyboard = {
      layout = "us";
      variant = "intl";
    };

    pointerCursor = {
      name = "Adwaita";
      package = pkgs.gnome.adwaita-icon-theme;
      size = 32;
    };
  };

  programs.home-manager.enable = true;
}
