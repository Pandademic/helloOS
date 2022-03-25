let
  pkgs = import <nixpkgs> {};

in pkgs.mkShell rec {
  name = "helloOS-dev";
  buildInputs = with pkgs; [pkgs.mold pkgs.coreutils pkgs.nasm pkgs.gcc ];
  shellHook = ''
    export PS1='\n\[\033[1;34m\][${name}:\w]\$\[\033[0m\] '
  '';
}
