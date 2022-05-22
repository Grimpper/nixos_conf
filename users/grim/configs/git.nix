{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "Grimpper";
    userEmail = "sergio.pastorperez@gmail.com";
    extraConfig = {
      init.defaultBranch = "master";
      credential.helper = import ../../../.secrets/access_token;
    };
  };
}
