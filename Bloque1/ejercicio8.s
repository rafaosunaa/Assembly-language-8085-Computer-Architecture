.data 0
x: .word 20,34,12,1,3
n: .word 5
out: .word 0
.text 256

addi r1,r0,x ; vector
lw r7,0(r1); cargo elemento
lw r5,n ;  moverme contador
add r6,r0,r0 ;minimo actual

bucle:
lw r6,0(r1)
slt r9,r7,r6
beqz r9,minimo ; si hay nuevo minimo, lo cambio


seguir:
add r1,r1,#4 ; pasamos al siguiente elemento
sub r5,r5,#1 ; restamos uno al contador
bnez r5,bucle ; si siguen habiendo elemento, voy al bucle
sw out,r9
trap #0



minimo:
add r7,r0,r6
j seguir


