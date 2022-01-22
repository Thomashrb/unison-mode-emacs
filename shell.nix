{ nixpkgs ? import <nixpkgs> {} }:
let
  inherit (nixpkgs) pkgs;
in
pkgs.stdenv.mkDerivation {
  name = "unison-mode-dev";
  buildInputs = [ pkgs.emacs ];
}
