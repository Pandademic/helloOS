FROM nixos/nix
RUN mkdir _dev
WORKDIR _dev
COPY .
RUN nix-shell --pure
