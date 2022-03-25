with import <nixpkgs> {};
stdenv.mkDerivation rec {
        name = "helloOS-dev";
        buildInputs = [ mold nasm gcc make coreutils ];
}
