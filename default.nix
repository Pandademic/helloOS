with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    ripgrep
    gcc
  ];
}
