with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    ripgrep
    nasm
    coreutils
    gcc 
    mold
  ];
}
