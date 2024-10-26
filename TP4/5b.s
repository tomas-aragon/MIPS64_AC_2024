.data


A:	.byte 233

B:	.byte 2

C:	.byte ?


.code

ld $t0, B($zero)
ld $t1, A($zero)

bnez $t1, 2_BRANCH; A == 0


daddi $t2, $zero, 0
sd $t2, C($zero)



2_BRANCH: slt $t0, $t0, $t1; B < A

nez $t0, 3_BRANCH

dmuli $t1, $t1, 2
sd $t1, C($zero) 




3_BRANCH: 
sd $t0, C($zero); else