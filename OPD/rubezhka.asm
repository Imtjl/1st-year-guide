; Задание №1. Разработать программу обработки для элементов массива M, в которой:
; 1. Массив имеет следующие характеристики:
; - адрес начала массива в памяти БЭВМ - 0x687;
; - число измерений исходного массива - 2;
; - количество элементов исходного массива - 3x3;
; - каждый элемент является знаковым числом с разрядностью 16 бит;
; - нумерация элементов начинается с 1;
; - элементы хранятся в массиве по границам слов, нет необходимости в плотной упаковке;
; 2. Для каждого элемента массива необходимо вычислить функцию:
; - формула функции F(X) = 3 * X + 23479;
; - функцию вычислять только для элементов массива с кратными 3-м i-индексами, четными j-индексами;
; - если результат вычисления функции выходит за пределы области допустимых значений элемента массива из п.1, то он принимается равным 18457
; 3. Из всех полученных значений функции необходимо вычислить исключающее 'ИЛИ' значений, и записать в 32-разрядный результат.
; Примечание: все числа представлены в десятичной системе счисления, если явно не указано иное.
;A XOR B = (A AND (NOT B)) OR ((NOT A) AND B)

	ORG 0x10

ARRAY_ADDR:	WORD	0x687
dimM:	WORD	0x3
dimN:	WORD	0x3

POINTER:	WORD	?	
i:	WORD	0x1 	;Указатель на подмассив
j:	WORD	0x1 	;Указатель на элемент в подмассиве

RESULT:	WORD	0x0

START:
	LD	ARRAY_ADDR
	ST 	POINTER
NEXT:
	LD	(POINTER)+
	ST 	ARG
	CALL CHECK_INDEX
	LD	j
	CMP	dimN
	BZS	INC_i
	INC
	ST 	j
	JUMP NEXT
INC_i:
	LD	#0x1
	ST 	j
	LD	i
	CMP	dimM
	BZS	STOP_PROG
	INC
	ST 	i
	JUMP	NEXT
STOP_PROG:
	HLT	

CHECK_INDEX:
		LD 	i
	DIV:	
		SUB	#0x3
		BZS	CHECK_j
		BNC	DIV
		RET
	CHECK_j:
		LD	j
		ROR	
		BCC	CALCULATE
		RET
	CALCULATE:
		CALL FUNC
		CALL XOR
		RET

XOR_PART:	WORD	?
XOR:
	PUSH
	LD	RESULT
	NOT
	AND	&0
	ST 	XOR_PART
	POP
	NOT
	AND	RESULT
	OR 	XOR_PART
	ST 	RESULT
	RET

ARG:	WORD	?
CONST1:	WORD	0x5BB7 	;23479
CONST2:	WORD	18457
FUNC:
		LD	ARG
		ADD ARG
		BVS	ERR	;OF?
		ADD ARG
		BVS	ERR	;OF?
		ADD CONST1
		BVS	ERR	;OF?
		RET
	ERR:	
		LD	CONST2
		RET