# I Семестр

## About

Это наверное самый большой сборник мануалов по первому курсу ВТ.  
Была проделана большая работа как тех, кто находил эту информацию, так и объеденяющих в один источник.

Отдельная благодарность:
  * \<T\>
  * adagio-sostenuto
  * mr-banality
  * DecafMango
  * Imtjl
  * TsIT
  * Отсальные участники чата "Vливаемся в itmo"

## Сокращения

Направления:
 * ВТ - чаще всего употребляеться как совокупность ИВТ и СППО, но иногда означает ПИиКТ-овские направления.
 * ИВТ - "Информатика и вычислительная техника" (09.03.01)
 * СППО - "Cистемное и прикладное программное обеспечение" (09.03.04)
 * Нейротех - "Нейротехнологии и программирование" (09.03.04)
 * СУИР - "Системы управления и робототехники" (09.03.04)
 * КТ (ПМИ) - "Прикладная математика и информатика" (01.03.02)
 * ИС (ИСИТ, ~~β-версия КТ~~) - "Информационные системы и технологии" (09.03.02)
```
                                                      ИТМО
                  /                       |                         |                       \
              мф. КТиУ                мф. ТИнТ                  мф. НОЖ                   ФТ мф.
      /       |     |      \          /       \            /    |     |     \       /    |     |    \
  ф.ПИиКТ  ф.СУИР  ф.БИТ   ц.ХИ    ф.ИТиП    ф.ИкТ   ф.БиоТех  ХБк   НОЦ   ф.ЭиЭ   Фф   и.ЛТ   ИФф ФизФ
    ИВТ                   Биоинж     ПМИ    мобилки                инфохим             Лазеры
 Нейротех                           ИСиТ      ПвИС
  Дизайн                                ИСвГС      
   СППО
```


Предметы:
 * Прога - Программирование
 * ОПД - Основы проффессиональной деятельности
 * Дискра - Дискретная математика
 * Веб - Веб-программирование

Другое:
 * Лаба - может обозначать как пару по предмету, так и научную или аналитическую деятельность
 * Прод - профильная (продвинутая) математика
 * База - базовая математика
 * Экз - Экзамен
 * Алгосы - Алгоритмы
 * Олпрога - Олимпиадное программирование
 * Рубежка - Рубежная работа

## Линки

 * [Фотки с 1 курса](TODO)
 * https://notesitmo.github.io/cse-notes/first-course/firstcourse.html - конспекты и шпаргалки
 * https://picloud.pw/cloud/ - экземпляры работ прошлых лет
 * https://github.com/Roggired/ITMO - репозиторий с общей информацией по проге и опд. Там же можете найти требования к лабам, к отчетам (пример отчета), и всякие другие полезные вещи.

## ITMO ENTER

[Фотки с ITMO Enter 2022](itmo_enter.zip)

Спорт:
 * Талисман - снежный барс Барс Тим
 * 5 раз были лучшим спортивным студенческим клубом с 2016 по 2021

На "внимание образование" посоветовали взять у преподавателей рабочую программу дисциплины и чеклист для зачёта, чтобы не пропустить ничего!

[Как эффективно читать книги](https://kinzhal.media/read-less/)

[ФабЛаб](https://fablab.itmo.ru) - является малой лабораторией-мастерской для реализации личных проектов и ведения учебной деятельности для студентов. [Логин](https://lc.fablab.itmo.ru/login). [ТГ чат](https://t.me/fablabitmo).

[Мегабайт](https://vk.com/mb.news) медиа и их школа (прием анкет уже закрыт, но вы можете написать им на [почту](news@mbradio.ru)). У их участников повышенная стипендия.

## Гелиус
~ в 5-х числах сентября у вас откроеться доступ к Гелиусу [вот здесь](http://se.ifmo.ru/passwd).

Гелиус - итмошный сервак. Там будет сдаваться прога, ОПД, Веб... (все работы нужно загружать туда, что бы они там работали, сделано это для того, чтоб все были в равных условиях).


### Подключение

#### Авторизация в [se.ifmo.ru](https://se.ifmo.ru/)
Логин: `sТабельныйНомер` (далее будет обозначаться как `s######`)  
Пароль: [se.ifmo.ru/passwd](http://se.ifmo.ru/passwd) (далее будет обозначаться как `PASSWD`)
#### PowerShell (консоль)
`PS C:\\Users\\T> ssh -p 2222 s######@helios.cs.ifmo.ru`
#### [PuttY](https://putty.org.ru/download.html) (консоль)
Имя хоста: `s######@se.ifmo.ru`  
Порт: `2222`  
Нажимаем "Соединиться"  
Пишем `PASSWD` (для вставки используйте ПКМ)
#### PowerShell (для загрузки файлов)
`PS C:\\Users\\T> pscp -P 2222 FileForUpload.java s######@se.ifmo.ru:/home/studs/s######/DirectoryToUpload`
#### [WinSCP](https://winscp.net/eng/download.php) (для загрузки файлов)
Протокол: `sftp`  
Имя хоста: `se.ifmo.ru`  
Порт: `2222`  
Имя пользователя: `s######`  
Пароль: `PASSWD`
#### [FileZilla](https://filezilla.ru/get/) (для загрузки файлов)
Хост: `sftp://se.ifmo.ru`  
Имя пользователя: `s######`  
Пароль: `PASSWD`  
Порт: `2222`
#### Git (для загрузки файлов)
Альтернативный способ загрузить проект на сервак через git
1. Создаём репозиторий на гитхабе и загружаем туда свои файлы через браузер: [тутор](https://www.youtube.com/watch?v=yjivWxxH0eE)
2. Заходим на сервак через putty или через ssh с терминала, если вы брутальный качок и у вас линукс
3. Пишем `git clone <Ссылка на репозиторий>`

#### Лайфхаки
`Tab` может помочь вводить имена файлов  
`Enter` может помочь копировать  
`ПКМ` может помочь вставить из буфера обмена  
`chmod -R 700 ./*` может помочь избавиться от ошибок доступа  
`chmod -R 700 ~` может помочь избавиться от любопытных глаз

Создание `.bat`-файла для быстрого подключения к `helios.cs.ifmo.ru`.  
**Уже готовый архив со всем необходимым для подключения можно скачать [здесь](https://205826.github.io/auto_connect_gelius.zip) (никаких дополнительных программ для работы не нужно скачивать, только отредактировать .bat-файлы, написав свой логин и пароль)**  
Пример содержания такого файла:
```
rem PuTTY
start "" "putty_portable.exe" s######@se.ifmo.ru:2222 -pw PASSWORD
rem start "" "C:\\Program Files\\PuTTY\\putty.exe" -ssh -P 2222 s######@se.ifmo.ru -pw PASSWORD

rem WinSCP
start "" "%ProgramFiles%\\WinSCP\\WinSCP.exe" sftp://s######:PASSWORD@se.ifmo.ru:2222
rem start "" "C:\\Program Files (x86)\\WinSCP\\WinSCP.exe" sftp://s######:PASSWORD@se.ifmo.ru:2222

rem FileZilla
rem start "" "%ProgramFiles%\\FileZilla FTP Client\\filezilla.exe" sftp://s######:PASSWORD@se.ifmo.ru:2222
```
### Cоздание перманентной переменной окружения
 1. Создаем файлик .bash_profile в своей пользовательской папке (`cd ~`)
 2. В файлик пишем следующие вещи:  
 `lab5="/home/studs/s######/{pathToFile}"; export lab5`
 3. Закрываем соединение и подключаемся снова
### Траблы
Бывет такое, что JAVA перестаёт работать с ошибкой переполнения кучи (или java по дефолту 11 версии):
```
[s######@helios ~]$ javac
Error occurred during initialization of VM
Could not reserve enough space for 31424512KB object heap
```

В большинстве случаев спасает патч Ценекова:
```
# By @dts256 (feat. @Fenaven)

export _JAVA_OPTIONS="-Xmx256M"
export JAVA_VERSION="17.0+"
export JAVA_HOME="/usr/local/openjdk17"
export PATH=/usr/local/openjdk17/bin/:$PATH
```

Второй патч, который просто закрывает все сессии (Помогает например c `java.net.BindException: Address already in use`)
```
killall -u `whoami`
```
Третий вариант, просто дождаться 4х часов ночи, именно в это время происходит перезагрузка гелиуса
### Приколы
Get IP addresses
```
[s######@helios ~]$ w
USER       TTY      FROM            LOGIN@  IDLE WHAT
s######    pts/$$   $$.$$.$$.$$      $$:$$    $$ -
s######    pts/$$   $$.$$.$$.$$      $$:$$    $$ -
s######    pts/$$   $$.$$.$$.$$      $$:$$    $$ -
s######    pts/$$   $$.$$.$$.$$      $$:$$    $$ -
s######    pts/$$   $$.$$.$$.$$      $$:$$    $$ -
s######    pts/$$   $$.$$.$$.$$      $$:$$    $$ -
```
**За следующие действия вас могут отчислить, так что пользуйтесь с умом, не злоупотребляйте**  
Broadcast message
```
[s######@helios ~]$ echo "Здесь могла быть ваша реклама">>test
[s######@helios ~]$ wall test
Broadcast Message from s######@helios.cs.ifmo.ru
        (/dev/pts/##) at $$:$$ MSK...

Здесь могла быть ваша реклама

```

Игра в minecraft по shh:
```
TODO
```

## Математика
 * [Задачник для линала с ответами](TODO)
### База
 * [Плюс ЦЭ](https://www.youtube.com/c/ПлюсЦЭ)
   * [Миро МАТ 1 сем 1-6](https://miro.com/app/board/uXjVPY6uyi4=/)
   * [Миро ЛГ 1 сем 1-9](https://miro.com/app/board/uXjVPY6uyi4=/)
   * [Миро МАТ 2 сем 1-4](https://miro.com/app/board/uXjVPqAiEZ8=/)
   * [Миро ЛГ 2 сем 3-6](https://miro.com/app/board/uXjVPqAQmLw=/)
 * [Генератор 4 и 6 дз по дискретке 2 сем](https://band-of-four.github.io/discrete-math-homework-second-term/#/4)
 * Рубежный теортест МА №3 TODO

На результаты тестов на OnlineTestPad можно просто скидывать ссылки, таким образом объеденяя ответы. [Exemple](https://onlinetestpad.com/y4wvbdpkg6lsm). В итоге можно получить что-то [такое](https://docs.google.com/spreadsheets/d/17AxW1uOUDC2pFC2_pAqyAEHv_qL8FZxsLnpC8jVggfs/edit?usp=sharing). TODO. Скрипт для автоматизации сбора данных по ссылкам: TODO.

### Прод
 * [Домашка для прод дискретке у карпова](https://logic.pdmi.ras.ru/~dvk/ITMO/Algebra/)

## Программирование

И в первом и во втором семестре по 4 лабы.
Кроме 8 лабы этапы сдачи следующие:
 * Делаете лабу
 * Закидываете гелиус
 * Делаете отчет (у некоторых практиках нетребуется)
 * Защищаете лабу
   * ~~Отчет~~
   * Код (соответвие заданию, реализованые патерны...)
   * Выполнение на гелиусе (программу пытаються крашнуть, Ctrl+C/D, Фаззинг...)
   * Теория

 * [Рубежка по проге](https://miro.com/app/board/uXjVP8oK04Y=/)
 * [Вторая рубежка по проге](https://miro.com/app/board/uXjVP4NqLxI=/) P.S. Во втором задании официально ответ пустой
 * [Мануал по Java](https://apploidx.github.io/programming-manual/)
 * [Free Java Tutorial](https://www.examclouds.com)
 * [Руководство по языку программирования Java](https://metanit.com/java/tutorial/)
 * [сайтик с паттернами и полезными советами по написанию чистого кода](https://refactoring.guru/ru/design-patterns/java) (без впн не работает)

 * [Вопросы для собеседования на Java Developer](https://github.com/enhorse/java-interview)
 * [Ещё один способ подготовиться к собеседованию](https://neetcode.io/) + [решения](https://github.com/neetcode-gh/leetcode)
 * [Список тем для изучения, чтобы стать программистом](https://github.com/jwasham/coding-interview-university)
### Сука, нихуя не компилиться!!!
Успокойтесь, мы поможем вам:  
TODO
## ОПД
 * [Гайд по человеческой трассировке, BCOMP Command Line Interface и ассемблеру](https://github.com/owl-from-hogvarts/OPD-guide#trace)
 * [Небольшой гайдик по 3 лабе](https://docs.google.com/document/d/1-zOg1rctzJ1juD2MEGR6KvePbNCY7l22bjq1_HAqYSU/edit?usp=sharing)
 * [Гайд по 8 лабе](https://vk.com/wall-192451261_27)
 * [Экзаменационные вопросы по ОПД](https://docs.google.com/document/d/12mt8a1ifyFH341VFZ4z_kT-_EDrm5X_GAZi1mlFPMGo/edit)
 * [YT](https://youtube.com/c/SergeKlimenkov)

### Вопросы с 7й лабы
1) Почему команды начинаются с 01, а не с 00. (вопрос глубокий в том плане что да, нам это говорили на лекции, но придётся открыть схему микрокоманд, показать как там происходит всё и дать комментарии)
2) В чём преимущество вертикальных команд перед горизонтальными
3) Какие вентили не имеет смысла, либо не рекомендуется ставить одновременно в ОМК. Ну т.е. какие всё сломают и почему.
4) За какое минимальное и максимальное количество тактов у меня будет работать комплекс микропрограмм (изи вопрос, но оставлю на всякий) (у меня он имеет смысл ибо у меня умножение и тут различается аж на 15 тактов)
5) Забыл, но насколько я помню вопрос был не сложный, я сразу ответил. что-то из серии а что будет если вот так сделать

### Рубеж
 * Висячий переход - это значит, что нет метки назначения или название не совпадает
 * На листах пишем код как на АССЕМБЛЕРЕ БЭВМ
 * В столбце АДРЕС/МЕТКА пишем ТОЛЬКО метку (адрес не нужно)
 * Чтобы указать адрес, достаточно во втором столбце команд написать ORG 0x*
 * [Файл с примерами задач рубежки, кодами и подробностями](https://docs.google.com/document/d/1jdZ76a635Qss6FEJltSNqU9gnUA67ZcGd-v0p7gW0VE/edit#heading=h.xgsi83slcv8a)
 * Самый удобный, на мой взгляд, варинт написания рубежки:
   * Карандашом, со стёркой
   * Сначала пишем рабочий код, а потом уже дописываем все нужные переменные
   * Во время написания кода можно на втором листе, или на этом же, но на обороте
   * писать карандашом заготовки, если не уверены в написании сразу
   * все переменные, о которых забыли - используем как ни в чём не бывало, оставив пометку на полях. и в конце проги, на оставшемся месте дописываем эту перменную

### Экз
 1. Билеты нереально непропорциональны. Одни сложные, другие простые.
 2. Дадут 2 билета - оба чилл, либо 1 чилл 1 сложный (скорее всего так), 2 гробовых давать не должны.
 3. написать один недостаточно - надо писать оба и идеально.
 4. давайте будем честны, надо знать все, другого варианта нет и не будет
 5. половина билетов, которые про бэвм и про числа - ботаются быстро и легко, там ничего сложного нет. Но все равно надо заботать
 6. вторая половина - гробовая. Написание билета может занять как 5 минут, так и 40. 
 7. Билетов 40. Просто прочитав вы не поймете ничего в сложных билетах. Для этого надо лезть в синюю библию, лекции, гугл, e.t.c.
 8. Конченные темы вот:
	* [контроллеры](https://youtu.be/Ya8bc9n6uXY?list=PLBWafxh1dFuwbs2bc_ba_1FIm4SzFYg2p)
    * сети, маршрутизация и передача данных по сетям
    * память (в том числе [виртуальная память](https://www.youtube.com/watch?v=pB7cPle-o24))
 9. Кстати еще аккуратно, тут в билетах не указано про коммутатор, про выборку операнда, ну и могут быть соответствующие неточности и опущения

## БД
 * [Памятка/шпаргалка по SQL](https://habr.com/ru/post/564390/#что-такое-sql)
 * [Экзамен](https://docs.google.com/document/d/1VlCpJtjxr4mZcazKUanbjqBC2RfhEM9D/edit) + [Пример решения](https://miro.com/app/board/uXjVM7mDWzg=/)

## Алгосы (Олпрога)
Теория:
 * [Несложный мануал, brestprog](https://brestprog.by/topics/)
 * [Мануал посложнее, algocode](https://wiki.algocode.ru/index.php?title=Список_всех_категорий)
 * [старая алгоритмики](https://algorithmica.org/ru/)
 * [Переписанные статьи с алгокода, емакса и старой алгоритмики](https://ru.algorithmica.org/cs/)
 * [Графы](https://informatics.msk.ru/course/view.php?id=6#section-2)
 * [e-maxx](https://e-maxx.ru/algo/)
 * [Алгоритмы и структуры данных](https://acm.khpnets.info/wiki/Категория:Учебный_курс_«Алгоритмы_и_структуры_данных»)
 * [ИТМОшные конспкты с КТ/ИСа](http://neerc.ifmo.ru/wiki/index.php?title=Заглавная_страница)

На своём опыте могу сказать, что чтение таких источников в большенстве случаев бесполезна без практики!

Практика:
 * https://codeforces.com/
 * https://leetcode.com/

