ORG 0x4D1          ; Адрес начала программы

START: CLA    ; Очистка аккумулятора
s1:  IN 0x019    ; Ожидание ввода символа с ВУ клавиатуры (SR)
  AND #0x40   ; Проверка на наличие введенного символа
  BEQ s1      ; Нет - "Спин-луп"
  IN 0x018       ; Ввод байта с ВУ клавиатуры (DR) в AC
  ST temp     ; Сохраняем символ во временной переменной
  CMP finish  ; Проверяем на стоп-символ
  BEQ print_loop    ; Если стоп-символ - выход
  CALL translate ; Транслировать символ из кодировки КОИ-8R в CP866
  ST (res) ; Сохраняем символ в результат
  LD (res)+   ; Инкрементируем ссылку на результат
  JUMP s1     ; Возвращаемся в начало цикла

KOI8R_to_CP866:
WORD 0xC4, 0xB3, 0xDA, 0xBF, 0xC0, 0xBE, 0xAA, 0xA8 ; 80-87
WORD 0xAD, 0xBD, 0xBC, 0xA1, 0xAB, 0xBB, 0xA4, 0xA5 ; 88-8F
WORD 0xC3, 0xB4, 0xD9, 0xA2, 0xAF, 0xB0, 0xB8, 0xB7 ; 90-97
WORD 0xB6, 0xB5, 0xA3, 0xB9, 0xBA, 0xA6, 0xA7, 0xAC ; 98-9F
WORD 0xC2, 0xB2, 0xC1, 0xFE, 0xFD, 0xFC, 0xFB, 0xFA ; A0-A7
WORD 0xF9, 0xF8, 0xF7, 0xF6, 0xF5, 0xF4, 0xF3, 0xF2 ; A8-AF
WORD 0xF1, 0xF0, 0xEF, 0xEE, 0xED, 0xEC, 0xEB, 0xEA ; B0-B7
WORD 0xE9, 0xE8, 0xE7, 0xE6, 0xE5, 0xE4, 0xE3, 0xE2 ; B8-BF
WORD 0xDF, 0xDE, 0xDD, 0xDC, 0xDB, 0xD8, 0xD7, 0xCE ; E0-E7
WORD 0xCF, 0xCB, 0xCA, 0xC9, 0xC8, 0xC7, 0xC6, 0xC5 ; E8-EF
WORD 0xCC, 0xCD, 0xA9, 0xD6, 0xD5, 0xD4, 0xD3, 0xD2 ; F0-F7
WORD 0xD1, 0xD0, 0xFF, 0xAE, 0xB1, 0xA0, 0xB0, 0x9F ; F8-FF

finish:  WORD 0x030 ; Стоп-символ (0 в кодировке КОИ-8R)
temp:   WORD ?     ; Ячейка для записи нечётных символов
res:  WORD 0x55C   ; Ссылка на результат
res_start: WORD 0x55C ; Сохранение начального адреса результата
KOI8R_to_CP866_addr: WORD $KOI8R_to_CP866

translate:
  CMP #0x80     ; Сравниваем акумулятор с 0x80
  BCC return       ; Если меньше, переходим к ret (без трансляции)
  JUMP translation_needed
  
print_loop:
  ST (res) ; Сохраняем символ в результат
  LD res_start ; Загрузка начального адреса результата
  ST res       ; Устанавливаем ссылку на результат равной начальному адресу

print_loop_start:
  LD (res) ; Загрузка символа из памяти по ссылке
  CMP finish ; Проверка на стоп-символ
  BEQ done ; Если стоп-символ - завершение печати
  OUT 0x0C ; Вывод символа на принтер (DR)
  LD (res)+ ; Инкрементируем ссылку на результат
  JUMP print_loop_start ; Возвращаемся к началу цикла печати
  
  
translation_needed:
  CMP #0xC0     ; Сравниваем акумулятор с 0xC0
  BCC return       ; Если меньше, переходим к return (без трансляции)
  CMP #0xDF     ; Сравниваем акумулятор с 0xDF
  BCS koi8r_check ; Если больше или равно, переходим к koi8r_check
  
koi8r_check:
  SUB #0xC0     ; Вычитаем 0xC0 из акумулятора, чтобы найти позицию в таблице KOI8R_to_CP866
  ASL           ; Умножаем позицию на 2 (так как каждое значение занимает 2 байта)
  ST temp   ; Сохраняем значение индекса в промежуточной ячейке памяти temp
  LD KOI8R_to_CP866_addr    ; Загружаем начальный адрес таблицы KOI8R_to_CP866 
  ADD temp ; Добавляем значение индекса в аккумулятор
  ST temp   ; Сохраняем полученный адрес элемента таблицы в ячейке temp
  LD (temp)  ; Загружаем значение из таблицы KOI8R_to_CP866 по адресу, указанному в ячейке temp
  ; Здесь акумулятор содержит транслированный символ в кодировке CP866
  RET           ; Возврат из подпрограммы

return:
  RET           ; Возврат из подпрограммы

done:
  HLT  ; Остановка программы