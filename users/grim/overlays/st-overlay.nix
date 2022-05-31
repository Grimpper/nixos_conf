with import <nixpkgs> {};

(self: super: {
  st = super.st.overrideAttrs (oldAttrs: rec {
    pname = "st-luke";
    version = "1.0.0";
    src = fetchTarball {
      url = "https://github.com/Grimpper/st/archive/master.tar.gz";
      sha256 = "19nglw72mxbr47h1nva9fabzjv51s4fy6s1j893k4zvlhw0h5yp2";
    };
    buildInputs = oldAttrs.buildInputs ++ (with super; [ harfbuzz ]);
  });
})
