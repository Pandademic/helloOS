dev:
  docker build -t helloos .
  docker run -it helloos
get-bin:
  docker cp helloos:/osdev/helloos .
run:
  qemu-system-i386 -kernel kernel
build:
  nasm -f elf32 kernel.asm -o boot.o 
  gcc -m32 -c kernel.c -o kernelc.o 
  mold -m elf_i386 -T link.ld -o kernel kasm.o kc.o
