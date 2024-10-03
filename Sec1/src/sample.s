[bits 64]
  global start
  global _main

section .data
  str: db "Hello, World!", 0

section .text
  extern _printf
  
start:
  call _main
  ret

_main:
  push rbp
  mov rbp, rsp
  mov rax, 1
  mov rdx, 13
  mov rsi, str
  mov rdi, 1

  syscall
  mov rax, 60
  mov rdi, 0
  syscall
  
