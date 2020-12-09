let
    pkgs = import <nixpkgs> { };
    localPkgs = import ~/projects/nixpkgs { };

in pkgs.mkShell {
  name = "webdev";

  buildInputs = with pkgs; [
    ghc
    haskellPackages.threadscope
    stack
  ];
}

