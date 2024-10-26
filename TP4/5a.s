.data

A: .word 1
B: .word 3

S: .word 0
P: .word 0
D: .word 0

.code

ld $t0, A($zero)
ld $t1, B($zero)
dadd $t0, $t1, $t0
sd $t0, S($zero); S = A + B

ld $t0, A($zero)
dmul $t0, $t0, $t1
daddi $t0, $t0, 2
sd $t0, P($zero); P = A * B + 2


ld $t0, A($zero)
dmul $t0, $t0, $t0
ddiv $t0, $t0, $t1
sd $t0, D($zero); D = A^2 / B

