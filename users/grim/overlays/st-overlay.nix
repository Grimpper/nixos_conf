with import <nixpkgs> {};

(self: super: {
  st = super.st.overrideAttrs (oldAttrs: rec {
    pname = "st-luke";
    version = "1.0.0";
    src = fetchTarball {
      url = "https://github.com/Grimpper/st/archive/master.tar.gz";
      sha256 = "1rdslgswa9axbf4ypsq96f0j9ir9cz63k0dnb41r8xml5pvs009r";
    };
    buildInputs = oldAttrs.buildInputs ++ (with super; [ harfbuzz ]);
  });
})
