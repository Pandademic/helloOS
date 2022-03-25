FROM nixos/nix
RUN mkdir osdev
WORKDIR osdev
COPY . .
RUN chmod +x build.sh && rm Dockerfile && rm alias.ps1 && rm README.md
CMD nix-shell --pure
