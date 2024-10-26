; L = 0
; WHILE N > 0:
; N = N / 2
; L = L + 1


.data

L: .word 0

N: .word 32

.code


ld $t0, N($zero)
ld $t1, L($zero)


BUCLE:

ddivi $t0, $t0, 2
daddi $t1, $t1, 1
slti $t9, $t0, 1
bnez $t9, BUCLE


halt


