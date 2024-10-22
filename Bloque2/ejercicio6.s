.data 0
x: .float 1,2,3,4,5,6,7,8,9,10
.text 256

add r2,r2,#0
add r3,r3,#5

bucle:
lf f4,0(r2)
addf f11,f11,f4
add r2,r2,#8
sub r3,r3,#1
bnez r3,bucle

divf f11,#5

trap #0
