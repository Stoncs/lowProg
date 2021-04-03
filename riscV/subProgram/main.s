# main.s
.text
main:
.globl main
  addi sp, sp, -16
  sw ra, 12(sp)
  
  la a0, array1  # адрес 0-го элемента первого массива
  lw a1, array_length1  # длина второго массива
  call revers
 
  la a0, array2  # адрес 0-го элемента второго массива
  lw a1, array_length2  # длина массива второго массива
  call revers
   
  lw ra, 12(sp)
  addi sp, sp 16
  ret
  
.rodata
array_length1:
 .word 12
array_length2:
 .word 5
 
.data
array1:
 .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12
array2:
 .word 65, 5, 10, 0, 90  
 