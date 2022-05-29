{ pkgs, ... }:

{
  imports = [ ./packages/main.nix ./configs/main.nix ];

  nixpkgs.overlays = [ (import ./overlays/st-overlay.nix) ];

  home = {
    stateVersion = "21.05";

    username = "grim";
    homeDirectory = "/home/grim";

    keyboard = {
      layout = "us";
      variant = "intl";
    };

    pointerCursor = {
      x11.enable = true;
      size = 32;
      package = pkgs.nur.repos.ambroisie.vimix-cursors;
      name = "Vimix-cursors";
    };
  };

  programs.home-manager.enable = true;
}
