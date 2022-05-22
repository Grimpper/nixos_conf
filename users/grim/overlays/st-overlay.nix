with import <nixpkgs> {};

(self: super: {
  st = super.st.overrideAttrs (oldAttrs: rec {
    pname = "st-luke";
    version = "1.0.0";
    src = fetchTarball {
      url = "https://github.com/Grimpper/st/archive/master.tar.gz";
    };
    buildInputs = oldAttrs.buildInputs ++ (with super; [ harfbuzz ]);
  });
})
