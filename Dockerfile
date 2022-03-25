FROM nixos/nix
RUN mkdir dev
WORKDIR dev
COPY .
RUN nix-shell --pure
