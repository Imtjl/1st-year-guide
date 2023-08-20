; Доп:
  ; Вводить с `ВУ Клавиатура` символы. 
  ; Каждый введённый символ должен тут же отображаться на `ВУ Текстовый принтер`(прерывание). 
  ; Если ввести `echo something`, то команда должна отработать как echo в линуксе, т.е. вывести `something`.

ORG 0x0
V0: WORD $default, 0x180
V1: WORD $int8,    0x180
V2: WORD $default, 0x180
V3: WORD $default, 0x180
V4: WORD $default, 0x180
V5: WORD $default, 0x180
V6: WORD $default, 0x180
V7: WORD $default, 0x180

ORG 0x10      ; Адрес начала программы
X: WORD 2

default: IRET ; Обработка прерывания по умолчанию

START: DI
  CLA
  LD #0x9 ; Загрузка в аккумулятор MR (1000|0001=1001)
  OUT 0x19 ; Разрешение прерываний для ВУ-8 Клавиатура
  EI

main: DI ; Запрет прерываний чтобы обеспечить атом. операции
  LD X
  DEC
  ST X
  EI
  JUMP main

int8:
  read_symbols:
    DI
    CLA ; clear AC, since some content may be present here and IN overrides ONLY LOW BYTE

    IN 0x019
    AND #0x40  ; hecking keyboard for "ready"
    BEQ read_symbols

    IN 0x018
    CMP #0x0A ; Проверка на ввод "enter" с клавиатуры
    BEQ echo_check
    OUT 0x0C ; Вывод символа на ВУ-5 Текстовый принтер
    ST (curr_index)+ 
    JUMP echo_print_complete

  echo_check: ; Проверка введённой "команды"
    CALL insert_carriage_return ; вводим символ переноса строки
    CALL print_checking
    CALL insert_carriage_return
    JUMP start_checking
    JUMP echo_print
  
  start_index: WORD 0x210
  curr_index: WORD 0x210

  start_checking: ; Начинаем проверку на "echo "
    check_e:
      CLA
      LD #0x65 ; e
      OUT 0x0C
      LD #0x3A ; :
      OUT 0x0C
      LD #0x20 ; whitespace
      OUT 0x0C
      LD (start_index)+
      CMP #0x65
      BEQ check_c
      JUMP error
    check_c:
      CALL print_yes
      CALL insert_carriage_return
      CLA
      LD #0x63 ; c
      OUT 0x0C
      LD #0x3A ; :
      OUT 0x0C
      LD #0x20 ; whitespace
      OUT 0x0C
      LD (start_index)+
      CMP #0x63
      BEQ check_h
      JUMP error
    check_h: 
      CALL print_yes
      CALL insert_carriage_return
      CLA
      LD #0x68 ; h
      OUT 0x0C
      LD #0x3A ; :
      OUT 0x0C
      LD #0x20 ; whitespace
      OUT 0x0C
      LD (start_index)+
      CMP #0x68
      BEQ check_o
      JUMP error
    check_o: 
      CALL print_yes
      CALL insert_carriage_return
      CLA
      LD #0x6F ; o
      OUT 0x0C
      LD #0x3A ; :
      OUT 0x0C
      LD #0x20 ; whitespace
      OUT 0x0C
      LD (start_index)+
      CMP #0x6F
      BEQ check_whitespace
      JUMP error
    check_whitespace:
      CLA
      CALL print_yes
      CALL insert_carriage_return
      LD #0x20 ; whitespace
      OUT 0x0C
      LD #0x20 ; whitespace
      OUT 0x0C
      LD #0x3A ; :
      OUT 0x0C
      LD #0x20 ; whitespace
      OUT 0x0C
      LD (start_index)+
      CMP #0x20
      BEQ done_checking 
      JUMP error
    done_checking:
      CALL print_yes
      CALL insert_carriage_return
      JUMP echo_print
    error:
      LD curr_index
      INC
      ST curr_index
      ST start_index
      JUMP print_error
  
  echo_print: ; выводим аргумент команды "echo"
    CLA
    LD start_index
    CMP curr_index
    BEQ done_echo_print
    LD (start_index)
    OUT 0x0C ; Вывод символа на ВУ-5 Текстовый принтер
    LD start_index
    INC
    ST start_index
    JUMP echo_print
  done_echo_print:
    CALL insert_carriage_return 
    JUMP echo_print_complete

  print_yes: ; Вывести сообщение "yes"
    CLA
    LD #0x079 ; y
    OUT 0x0C
    LD #0x065 ; e
    OUT 0x0C
    LD #0x073 ; s
    OUT 0x0C
    RET

  echo_print_complete:
    IRET ; Возвращаемся к "полезной" программе после обработки прерывания (в main) 
  
  insert_carriage_return: ; вводим символ переноса строки
    CLA
    LD #0x0A
    OUT 0x0C
    RET

  print_checking: ; Выводим сообщение о начале проверки
    CLA
    LD #0x063 ; c
    OUT 0x0C
    LD #0x068 ; h
    OUT 0x0C
    LD #0x065 ; e
    OUT 0x0C
    LD #0x063 ; c
    OUT 0x0C
    LD #0x06B ; k
    OUT 0x0C
    LD #0x069 ; i
    OUT 0x0C
    LD #0x06E ; n
    OUT 0x0C
    LD #0x067 ; g
    OUT 0x0C
    LD #0x02E ; .
    OUT 0x0C
    LD #0x02E ; .
    OUT 0x0C
    LD #0x02E ; .
    OUT 0x0C
    RET

  print_error: ; Вывести сообщение об ошибке на ВУ-5 Текстовый принтер
    CLA
    LD #0x6E ; n
    OUT 0x0C  
    LD #0x61 ; a
    OUT 0x0C
    LD #0x61 ; a
    OUT 0x0C
    LD #0x61 ; a
    OUT 0x0C  
    LD #0x68 ; h
    OUT 0x0C  
    LD #0x2C ; ,
    OUT 0x0C  
    LD #0x20 ; whitespace
    OUT 0x0C  
    LD #0x62 ; b
    OUT 0x0C 
    LD #0x72 ; r
    OUT 0x0C 
    LD #0x6F ; o
    OUT 0x0C 
    LD #0x29 ; )
    OUT 0x0C
    CALL insert_carriage_return
    JUMP echo_print_complete
