with import <nixpkgs> {};
stdenv.mkDerivation rec {
        name = "helloOS-dev";
        buildInputs = [ pkgs.mold pkgs.nasm pkgs.gcc pkgs.make pkgs.coreutils ];
}
