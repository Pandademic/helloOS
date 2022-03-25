with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    ripgrep
    mold
    nasm
    coreutils
    curl
    gcc
  ];
}
