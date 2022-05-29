{
  imports = [
    ./bspwm.nix
    ./polybar.nix
    ./rofi/rofi.nix
    ./alacritty.nix
    ./picom.nix
    ./zsh.nix
    ./sxhkd.nix
  ];

  programs = {
    command-not-found.enable = true;

    git = {
      enable = true;
      userName = "Grimpper";
      userEmail = "sergio.pastorperez@gmail.com";
      extraConfig.init.defaultBranch = "master";
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

  xsession.enable = true;
}
