.data 0
x: .word 6,1,6,7,2,3,6,-3,6,1,-2,3,-5,2,6
out: .word 0

.text 256

addi r1,r0,x 
addi r2,r0,#6 ; metemos en r2 el valor de 6
addi r15,r0,#15 ;contador
addi r8,r0,r0 ; sumatorio
addi r9,r0,r0 ; numero para comparar
addi r10,r0,r0 ; almacenar el resultado de la comparacion

bucle:
lw r9,0(r1)
seq r10,r9,r2; comparo
bnez r10,sumatorio

seguir:
add r1,r1,#4
sub r15,r15,#1
bnez r15,bucle
sw out,r8
trap #0


sumatorio:
add r8,r8,#1
j seguir