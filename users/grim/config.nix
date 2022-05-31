{
  allowUnfree = true;

  packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball {
        url = "https://github.com/nix-community/NUR/archive/master.tar.gz";
        sha256 = "1apy68hhvd2b9y4pbqahh6vi15y5a4sv6kdnh3hmgc4j1dd4amhb";
      }) {
      inherit pkgs;
    };
  };
}
