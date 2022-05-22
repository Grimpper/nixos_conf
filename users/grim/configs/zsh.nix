{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;

    initExtraFirst = ''
      bindkey  "^[[H"   beginning-of-line
      bindkey  "^[[F"   end-of-line
      bindkey  "^[[3~"  delete-char
      bindkey '^H' backward-kill-word
      bindkey '5~' kill-word
    '';

    initExtra = ''
      export SHELL="/home/grim/.nix-profile/bin/zsh"
    '';

    oh-my-zsh = { enable = true; };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
