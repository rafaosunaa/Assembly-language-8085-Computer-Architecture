.data 0
x: .word 8
y: .word 4
out: .word 0

.text 256

lw r1,x
lw r2,y

add r3,r2,r1

sw out,r3

trap #0