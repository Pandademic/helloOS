bits 32
section .text
global start
extern kernel_main
start:
  mov ah, 0x0e ; tty mode
  mov al, 'H'
  int 0x10
  mov al, 'e'
  int 0x10
  mov al, 'l'
  int 0x10
  int 0x10 ; 'l' is still on al
  mov al, 'o'
  int 0x10
  call kernel_main
  jmp $ ; jump to current address = infinite loop
  section .bss
  ; padding and magic number
  times 510 - ($-$$) db 0
  dw 0xaa55 
