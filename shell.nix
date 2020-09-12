{ pkgs ? import (import ./nix/nixpkgs.nix) { config = { allowUnfree = true; }; }
}:

pkgs.mkShell {
  # environment variables
  CHROME_PATH = "${pkgs.google-chrome}/bin/google-chrome-stable";
  FIREFOX_PATH = "${pkgs.firefox}/bin/firefox";
  GECKODRIVER_PATH = "${pkgs.geckodriver}/bin/geckodriver";
  CHROMEDRIVER_PATH = "${pkgs.chromedriver}/bin/chromedriver";

  # build inputs (packages that will be available in this development environment)
  # you can search for more packages here -> https://search.nixos.org/packages
  # or with the `nix search` command on a terminal
  buildInputs = with pkgs; [
    # python dependencies
    (python3.withPackages (pyPkgs: with pyPkgs; [
      jedi
      pytest
      selenium
      autopep8
    ]))

    # other dependencies
    firefox
    geckodriver
    chromedriver
    nixpkgs-fmt
    google-chrome
  ];
}
