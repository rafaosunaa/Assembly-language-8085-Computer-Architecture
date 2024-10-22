.data 0

x: .double 1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0
nImpares: .double 5.0
.text 256

add r2,r0,#5 ;inicializo el contador
add r7,r0,x 

suma:
ld f2,0(r7)
addd f10,f10,f2
addi r7,r7,#16 ; muevo 16 porque es double
subi r2,r2,#1
bnez r2,suma



ld f8,nImpares
divd f10,f10,f8

trap #0