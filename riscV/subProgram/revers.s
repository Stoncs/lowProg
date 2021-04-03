# revers.s
.text
revers:
.globl revers
  # в а0 - адрес 0-го элемента массива чисел типа unsigned
  # в а1 - длина массива
  mv t0, a0
  
  slli t1, a1, 2  # t1 = a1 << 2 = a1 * 4
  add t1, a0, t1  # t1 = a0 + t1 = a0 + a3 * 4
  addi t1, t1, -4  # t1 = t1 - 4
  li t2, 1 # t2 = 1
  
  bgeu t2, a1, finish # if( t2 >= a1 ) goto loop_exit
loop:
  lw t3, 0(t0) # \
  lw t4, 0(t1) #  | swapping
  sw t3, 0(t1) #  |
  sw t4, 0(t0) # /
  addi t0, t0, 4  # t0 += 4
  addi t1, t1, -4  # t1 -= 4
  addi t2, t2, 2  # t2 += 2
  bltu t2, a1, loop # if( t2 < a1 ) goto loop
finish:

  ret
  