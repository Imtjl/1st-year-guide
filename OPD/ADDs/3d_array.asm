; Заполню массив произвольными значениями так, чтобы они не конфликтовали с условием:

org 0x345
WORD 0x566 ; l1
WORD 0x577 ; l2

org 0x566
WORD 0x600 ; i11
WORD 0x610 ; i12

org 0x577
WORD 0x623 ; i21
WORD 0x647 ; i22

org 0x600
WORD 1 ; n11
WORD 2 ; n12
WORD 3 ; n13

org 0x610
WORD 2 ; n11
WORD 2 ; n12
WORD 2 ; n13

org 0x623
WORD 4 ; n11
WORD 2 ; n12
WORD 7 ; n13

org 0x647
WORD 1 ; n11
WORD 1 ; n12
WORD 3 ; n13

; Давайте посчитаем теоретическую результирующую сумму:
; (1 + 2 + 3) + 2*3 + (4 + 2 + 7) + (1 + 1 + 3) = 6 + 6 + 13 + 5 = 30 в 10сс
; т.е. результат будет 001E в 16сс - этот результат будет в ячейке 0x555

; Напишем программу на ассемблере для обработки этого массива:

org 0x555
result: WORD 0x00

org 0x100
main:  WORD 0x345 ; "main" arr pointer

main_arr_length: WORD 2   ; "main"   arr length
inner_arr_length: WORD 2  ; "inner"  arr length
numb_array_length: WORD 3 ; "number" arr length

inner_adr_pointer: WORD 0x00
inner_iterations_counter: WORD 0x00

numb_adr_pointer: WORD 0x00
numb_iterations_counter: WORD 0x00

org 0x111
START:
setup:
LD (main)+
ST $inner_adr_pointer
LD $inner_arr_length
ST $inner_iterations_counter
CALL $inner_counting
LOOP $main_arr_length
JUMP $setup
JUMP $the_end

inner_counting:
LD (inner_adr_pointer)+
ST $numb_adr_pointer
LD $numb_array_length
ST $numb_iterations_counter
CALL $numb_counting
LOOP $inner_iterations_counter
JUMP $inner_counting
RET

numb_counting: 
LD (numb_adr_pointer)+
ADD $result
ST $result
LOOP $numb_iterations_counter
JUMP $numb_counting
RET

the_end:
LD $result
HLT