.data 

	;r1 : para el contador
	;r7 : dirección del vector
	;f2 : menor
	;f4 : mayor
	;f12 : auxiliar
	; maximo: 65 minimo: 5


v: .double      11,	14,	56,	16,	18,	30,	32,	29,	14,	55
   .double      21,	13,	31,	29,	64,	23,	12,	10,	47,	31
   .double       5,	 8,	 8,	65,	48, 32, 39,	48,	37,	21
   .double       8,	48,	31,	27,	53,	60,	14,	 6,	57,	14
   .double       5,	19,	37,	21,	42,	22,	27,	38,	43,	19
   .double      33,	18,	59,	22,	37,	24,	18,	14,	38,	25
   .double      36,	24,	12,	18,	53,	40,	37,	57,	44,	22
   .double      65,	58,	39,	13,	20, 40,  5,	15,	 9,	18
   .double      58,	40,	55,	14,	35,	40,	13,	34,	36,	56
   .double      21,	47,	60,	34,	12,	51,	64,	63,	20,	61




.text 


addi r1,r0,99 ;inicializ0 el contador
addi r7,r0,v ; guardo la direccion del vector
ld f10 ,0(r7) ; cargamos el primer numero

addd f2,f2,f10 ;primer numero sera el menor
addd f4,f4,f10 ; primer numero sera el mayor

Bucle: 
addi r7,r7,8 ; sumo 8 para pasar al siguiente elemento del vector
subi r1,r1,1 ; resto 1 al contador para disminuir

subd f12,f12,f12; resto el mismo valor para resetearlosubd f12,f12,f12; resto el mismo valor para resetearlo
ld f10 , 0(r7); se carga el elemento del vector
addd f12,f12,f10 ; guardo el elelemnto del vector en el registro a auxiliar 

ltd f2,f12 ;Comparador menor que
bfpf CambiaMinimo ; si hay cambio salto

gtd f4,f12 ; Comparador mayor que
bfpf CambiaMaximo ; si hay cambio salto

;si hay mas elementos salto al bucle sino termino
beqz r1 , Fin 
bfpt Bucle



CambiaMinimo:

subd f2,f2,f2 ; resto el valor que haya para resetear
addd f2,f2,f12 ; sumo el nuevo valor para guardarlo

;si hay mas elementos salto al bucle sino termino
beqz r1 , Fin
bnez r1 , Bucle


CambiaMaximo:

subd f4,f4,f4 ; resto el valor que haya para resetear
addd f4,f4,f12 ; sumo el nuevo valor para guardarlo

;si hya mas elementos salto al bucle sino termino
beqz r1 , Fin
bnez r1 , Bucle


Fin: 
trap #0