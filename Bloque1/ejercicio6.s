.data 0
x: .float 1,2,3,4,5,6,7,8,9,10
nImpares: .float 5.0
.text 256

addi r3,r0,nImpares; inicio contandor
addi r7,r0,x ; cargo x en un registro


suma:
lf f9,0(r7) ;para moverme
addf f10,f10,f9 ; sumo el nuevo elemento a la suma acumulada
addi r7,r7,#8 ; sumo 8 al resgistro para saltarme los pares
subi r3,r3,1 ; disminuyo el contador
beqz r3,division ;si contador=0 ya puedo hacer la division
bnez r3,suma ;si hay elementos aun sigo sumando

division:
lf f12,nImpares ; cargo en el registro nImpares
divf f11,f11,f12 ;divido la suma total entre nImpares


trap #0