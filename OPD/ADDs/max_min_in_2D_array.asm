

;Задание: найти максимум и минимум в двумерном массиве размерностью AxB

	ORG 0x10
ARRAY_ADDR:	WORD	0x500	;Адрес начала массива
A:	WORD	0x2	;Массив размерностью 2x2
B:	WORD	0x2

i:	WORD	?	;Указатель на текущий подмассив
j:	WORD	?	;Указатель на текущий элемент в подмассиве
POINTER:	WORD	?	;Указатель на ячейку адрес элемента в памяти

MAX:	WORD	?
MIN:	WORD	?
MAXIMUM:	WORD	0x8000	;Эти константы введены для обновления MAX и MIN при повторном запуске
MINIMUM:	WORD	0x07FF

START:	
	CLA
	ST 	i
	ST 	j
	LD	ARRAY_ADDR
	ST 	POINTER
	LD MAXIMUM
	ST MAX
	LD MINIMUM
	ST MIN
NEXT:
	CALL	CHECK_INDEX
	LD		(POINTER)+
	CALL	CHECK_MAX
	CALL	CHECK_MIN
	LD		j
	INC
	ST 		j
	JUMP	NEXT

CHECK_INDEX:
	LD	j	
	CMP	B 	;Проверка на то, что мы прошлись по всему подмассиву
	BZC	CONTINUE	;Если не дошли до конца, продолжаем проверку указателя подмассива
	CLA
	ST 	j	;Если дошли до конца подмассива - обнуляем указатель элемента подмассива
	LD	i
	INC
	ST 	i 	;И производим переход на следующий подмассив
CONTINUE:
	LD	i
	CMP	A 	;Проверка на то, что мы прошлись по всему двумерному массиву
	BZS	STOP	;Если прошлись по всему двумерному массиву - останавливаем программу
	RET
STOP:	
	HLT
	POP	;Это чтобы очистить стек от ненужного адреса возврата
	JUMP	START ;Если захотим снова прогнать программу без последующей компиляции - нажимаем ПРОДОЛЖИТЬ

CHECK_MAX:
	CMP	MAX
	BGE	UPDATE_MAX	;Если больше или равно - перезаписываем максимум 
	RET
UPDATE_MAX:
	ST MAX
	RET	

CHECK_MIN:
	CMP	MIN
	BLT	UPDATE_MIN	
	RET
UPDATE_MIN:
	ST MIN
	RET	

	ORG 0x500
WORD	0x1
WORD	0x2
WORD	0x3
WORD	0x4

