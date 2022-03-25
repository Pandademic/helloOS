with import <nixpkgs> {};
stdenv.mkDerivation rec {
        name = "helloOS-dev";
        buildInputs = [ pkgs.mold pkgs.nasm pkgs.gcc pkgs.make pkgs.coreutils ];
}
{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = [ pkgs.buildPackages.mold pkgs.buildPackages.gcc pkgs.buildPackages.make pkgs.buildPackages.coreutils ];
}
