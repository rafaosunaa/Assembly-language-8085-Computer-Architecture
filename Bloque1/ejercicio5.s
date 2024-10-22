.data 0
x: .word 1,2,3,4,5,6,7,8,9,10
.text 256

addi r3,r0,#5 ;inicializo contador
addi r7,r0,x ;guardo x en un registro
addi r7,r7,#4 ;inicio vector en el primer par

bucle:
lw r10,0(r7) ; cargo el elemento del vector
add r11,r11,r10 ;almaceno en r11, la suma de que habia mas el elemento nuevo
subi r3,r3,1 ; resto uno al contador
addi r7,r7,8 ;sumo 8 a r7 para ir saltando 1, como inicio en la segunda posicion solo ire por pares
bnez r3,bucle ; si siguen habiendo elementos sigo en el bucle
beqz r3,final ; si contador ya no hay mas acabo

final:
trap #0


trap #0