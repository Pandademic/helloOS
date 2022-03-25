FROM nixos/nix
RUN mkdir osdev
WORKDIR osdev
COPY . .
RUN chmod +x build.sh
ENTRYPOINT["nix-shell","--pure"]
