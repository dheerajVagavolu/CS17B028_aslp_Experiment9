# MIPS program to perform addition of matrices.
	.data
A:	.float	12.35, 63.12, 30.52, 71.45, 54.11, 18.24, 93.1, 7.0, 40.0, 0.0, 1.0, 3.0
B:	.float	8.615, 81.14, 126.25, 73.32, 5.241, 76.32, 95.21, 44.21, 12.1123, 18.24, 93.1, 7.0
C:	.float	0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 
n:	.word	3
m:  .word   4

	.text
main:
	la $t0, A
	la $t1, B
	la $t2, C
	lw $s0, n
	lw $s1, m
	mult $s0, $s1 #number of elements
	mflo $s0
	li $t4, 0		# loop counter

loop:
	beq $t4, $s0, EXIT
	l.s $f2, 0($t0)
	l.s $f4, 0($t1)
	add.s $f6, $f4, $f2
	s.s $f6, 0($t2)
	#increasing all the pointers
	addi $t0, $t0, 4 
	addi $t1, $t1, 4
	addi $t2, $t2, 4
	addi $t4, $t4, 1
	j loop

EXIT:
	jr $ra
.end main