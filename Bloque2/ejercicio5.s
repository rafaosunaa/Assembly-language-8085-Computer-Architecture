.data 0
x: .word 1,2,3,4,5,6,7,8,9,10
out: .word 0
.text 256
add r1,r0,#5
add r11,r0,#0
add r3,r0,#4

bucle:
lw r4,0(r3)
add r11,r11,r4
add r3,r3,#4
sub r1,r1,#
bnez r1,bucle
sw out,r11
trap #0