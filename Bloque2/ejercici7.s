.data 0
x: .double 1,2,3,4,5,6,7,8,9,10

.text 256

add r2,r2,#0
add r4,r4,#5

bucle:
ld f0,0(r2)
sub r4,r4,1
add r2,r2,#8
add f10,f10,f0
bnez r4,bucle

divd 