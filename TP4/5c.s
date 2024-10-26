; F = 1
; for i=1..N:
; F = F * i



.data


F: .word 7


.code


ld $t0, F($zero)



FOR: dmul $t0, $t0, $t1

daddi $t1, $t1, -1

slt $t2, $t1, 2

bnez $t2, FOR

halt