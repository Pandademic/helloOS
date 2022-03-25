FROM nixos/nix
RUN mkdir osdev
WORKDIR osdev
COPY .
RUN nix-shell --pure
