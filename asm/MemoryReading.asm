# Reading memory 

.data 
#offset:  .word 0x10010000
a: .word 0x00000012
b: .word 0x00000013
c: .word 0x00000000

.text
.global main 
la  $t0, a
la  $t1, b
la  $t2, c
lw $s1 0($t0) 
lw $s2 0($t1)
jal func  
add $s3, $s2, $s1
sw $s3, 0($t2)

li	$v0, 10		# system call code for exit = 10
syscall		

 

