.text
__start:
.globl __start
  lw a3, array_length # а3 = <длина массива>
  la a4, array # a4 = <адрес 0-го элемента массива>
  
  mv t0, a4 # t0 = a4
  slli t1, a3, 2  # t1 = a3 << 2 = a3 * 4
  add t1, t0, t1  # t1 = t0 + t1 = t0 + a3 * 4
  addi t1, t1, -4  # t1 = t1 - 4
  li t2, 1 # t2 = 1
  
  bgeu t2, a3, finish # if( t2 >= a3 ) goto finish
loop:
  lw t3, 0(t0) # \
  lw t4, 0(t1) #  | swapping
  sw t3, 0(t1) #  |
  sw t4, 0(t0) # /
  addi t0, t0, 4  # t0 += 4
  addi t1, t1, -4  # t1 -= 4
  addi t2, t2, 2  # t2 += 2
  bltu t2, a3, loop # if( t2 < a3 ) goto loop
  
finish:
  li a0, 10 # x10 = 10
  li a1, 0
  ecall # ecall при значении x10 = 10 => останов симулятора
  
.rodata
array_length:
 .word 12
.data
array:
 .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 
      