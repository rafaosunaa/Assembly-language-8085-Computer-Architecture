.data 0
x: .word 4
y: .word 8
out: .word 0
.text 256
LW R1, x ; if->id->ex->mem->wb 1+0.8+1+1+0.8= 4.6
LW R2, y ; if->id->ex->mem->wb 4.6
ADD R3, R2, R1 ; if->id->ex->wb 3.6
SW out, R3 ;if->id->ex->mem 3.8s
trap #0                 ; = 16.6 ciclos