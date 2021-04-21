	.file	"reverse.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	reverse
	.type	reverse, @function
reverse:
	addi	a6,a1,-1
	beq	a6,zero,.L1
	slli	a4,a1,2
	add	a4,a0,a4
	li	a5,0
.L3:
	lw	a3,-4(a4)
	lw	a2,0(a0)
	sw	a2,-4(a4)
	sw	a3,0(a0)
	addi	a5,a5,1
	beq	a5,a6,.L1
	addi	a4,a4,-4
	addi	a0,a0,4
	not	a3,a5
	add	a3,a3,a1
	bltu	a5,a3,.L3
.L1:
	ret
	.size	reverse, .-reverse
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
