# Гайд по I курсу

## About

Это, наверное, самый большой сборник мануалов и гайдов по первому курсу ВТ.  
Была проделана большая работа как тех, кто находил эту информацию, так и объеденяющих в один источник. Первокурсники, пользуйтесь с умом, всем хороших оценок!)

## Содержание

- [Гайд по I курсу](#гайд-по-i-курсу)
  - [About](#about)
  - [Содержание](#содержание)
  - [Устройство университета](#устройство-университета)
  - [Сокращения, сленг и ссылки](#сокращения-сленг-и-ссылки)
  - [Сборник полезных источников](#сборник-полезных-источников)
  - [Гелиус](#гелиус)
    - [Подключение и загрузка файлов](#Подключение)
      - [Авторизация в se.ifmo.ru](#авторизация-в-seifmoru)
      - [Подключение через консоль (powershell, bash, zsh, e.t.c)](#подключение-через-консоль-powershell-bash-zsh-etc)
      - [Загрузка файлов через консоль (powershell, bash, zsh, e.t.c)](#загрузка-файлов-через-консоль-powershell-bash-zsh-etc)
      - [Создание `.bat` - файла для авто-подключения к серверу (консоль + для загрузки файлов)](#создание-bat---файла-для-авто-подключения-к-серверу-консоль--для-загрузки-файлов)
      - [PuttY (консоль)](#putty-консоль)
      - [WinSCP (для загрузки файлов)](#winscp-для-загрузки-файлов)
      - [FileZilla (для загрузки файлов)](#filezilla-для-загрузки-файлов)
      - [Git (для загрузки файлов)](#git-для-загрузки-файлов)
    - [Лайфхаки по работе с сервером](#лайфхаки-по-работе-с-сервером)
    - [Cоздание перманентной переменной окружения](#создание-перманентной-переменной-окружения)
    - [Траблы](#траблы)
      - [JAVA: ошибка переполнения кучи или java по дефолту 11 версии, BindException](#JAVA-ошибка-переполнения-кучи-или-java-по-дефолту-11-версии-BindException)
      - [Проблемы с базой данных и клиентскими и серверными приложениями](#Проблемы-с-базой-данных-и-клиентскими-и-серверными-приложениями)
    - [Приколы](#Приколы)
  - [Система оценивания БаРС и разбалловка по всем предметам](#система-оценивания-барс-и-разбалловка-по-всем-предметам)
  - [ITMO ENTER](#itmo-enter)
  - [Математика](#математика)
    - [База](#база)
    - [Прод](#прод)
  - [Программирование](#программирование)
    - [Сука, нихуя не компилиться](#сука-нихуя-не-компилиться)
  - [ОПД](#опд)
    - [Вопросы с 7й лабы](#вопросы-с-7й-лабы)
    - [Рубеж](#рубеж)
    - [Экз](#экз)
  - [БД](#бд)
  - [Алгосы (Олпрога)](#алгосы-олпрога)
  - [Особая благодарность](#особая-благодарность)

## Устройство университета

<a id="Пояснения"></a>
<details>
<summary align="center"><h3><b> Пояснения и расшифровки </b></h3></summary>

- **ВТ**: раньше была кафедра Вычислительной Техники, вместо которой сейчас факультет ПИиКТ. Употребляется ВТ заместо СППО или ИВТ.
- **ИВТ**: "Информатика и вычислительная техника" (09.03.01)
- **СППО**: "Cистемное и прикладное программное обеспечение" (09.03.04)
- **Нейротех**: "Нейротехнологии и программирование" (09.03.04)
- **СУИР**: факультет Систем управления и Робототехники. Часто спрашивают, т.к. существует используемый многими первашами перевод с конкретных направлений СУИРа на ВТ.
- **КТ (ПМИ)**: "Прикладная математика и информатика" (01.03.02)
- **ИС (ИСиТ, ~~β-версия КТ~~)**: "Информационные системы и технологии" (09.03.02)

</details>

```mermaid
graph TD;
  ИТМО-->мф.КТиУ;
  ИТМО-->мф.ТИнТ;
  ИТМО-->мф.НОЖ;
  ИТМО-->ФТмф;
  
  мф.КТиУ-->ф.ПИиКТ;
  мф.КТиУ-->ф.СУИР;
  мф.КТиУ-->ф.БИТ;
  мф.КТиУ-->ц.ХИ;

  ф.ПИиКТ-->ИВТ;
  ф.ПИиКТ-->Нейротех;
  ф.ПИиКТ-->Дизайн;
  ф.ПИиКТ-->СППО;

  ц.ХИ-->Биоинж

  мф.ТИнТ-->ф.ИТиП
  мф.ТИнТ-->ф.ИкТ

  ф.ИТиП-->ПМИ;
  ф.ИТиП-->ИСиТ;
  ф.ИкТ-->Мобилки;
  ф.ИкТ-->ПвИС;
  ф.ИкТ-->ИСвГС;

  мф.НОЖ-->ф.БиоТех;
  мф.НОЖ-->ХБк;
  мф.НОЖ-->НОЦ;
  мф.НОЖ-->ф.ЭиЭ;

  НОЦ-->Инфохим;

  ФТмф-->Фф;
  ФТмф-->и.ЛТ;
  ФТмф-->ИФф;
  ФТмф-->ФизФ;

  и.ЛТ-->Лазеры;
```

## Сокращения, сленг и ссылки

<a id="Предметы"></a>
<details>
<summary align="center"><h3><b> Предметы </b></h3></summary>

- `Прога` - [Программирование на java](https://se.ifmo.ru/courses/programming)
- `ОПД` - [Основы профессиональной деятельности](https://se.ifmo.ru/courses/csbasics)
- `Веб` - [Веб-программирование](https://se.ifmo.ru/courses/web)
- `БД` - [Базы данных](https://se.ifmo.ru/courses/db)
- `Дискра` - Дискретная математика
- `ЯПы` - Языки программирования (2 курс)
- `КИК` - Коммуникации и Командообразование
- `БЖД` - Культура Безопасности Жизнедеятельности

</details>

<a id="Здания"></a>
<details>
<summary align="center"><h3><b> Здания </b></h3></summary>

Подробно и наглядно можно посмотреть [тут](https://itmo.ru/ru/map/karta_korpusov.htm)
<details>
<summary align="center"><h3><b> Корпуса университета </b></h3></summary>

- `Кронва` - главный корпус университета на Кронверском 49
- `Ломо` - корпус университета на Ломоносова 9
- `Биржа` - корпус университета на Биржевой линии 14-16
- `Гривцова` - корпус университета на Гривцовом переулке 14-16 лит.А
- `Чайка` - корпус университета на Чайковской улице 11.2 лит.А

</details>

<details>
<summary align="center"><h3><b> Общежития </b></h3></summary>

- `Вязьма` - общежитие на Вяземском переулке 5-7 лит.А
- `Белорусская` - общежитие на Белорусской улице д.6 лит.А
- `Альпийка` - общежитие на Альписском переулке 15 к.2 лит.А
- `Ленсовета` - Общежитие на улице Ленсовета д.23 лит.А
- `МСГ` -  Новоизмайловский пр., 16
- `Доходный дом` - наб. р. Карповки, д. 22, корп. 2, лит. Б
- `ЛТУ` - ул. Вавиловых, д. 12

</details>

</details>

<a id="Сайты"></a>
<details open>
<summary align="center"><h3><b> Сайты </b></h3></summary>

- `май итмо` - [расписание, стипа, выборность, физра, зачётка...](https://my.itmo.ru/)
- `ЦДО` - [платформа для тестирований по истории, ITMOEnter, информатика...](https://de.ifmo.ru/)
- `ИСУ` - [главная платформа университета](https://isu.ifmo.ru/)
- `се ифмо` - [сайт с лабами ВТ](https://se.ifmo.ru/)
- `барс` - [баллы по предметам (актуальнее чем в май итмо)](https://bars.itmo.ru/)
- `центр карьеры` - [центр карьеры обучающихся ИТМО](https://careers.itmo.ru/)
- `апартаменты` - [сервис подбора арендного жилья](https://aparts.itmo.ru/)

</details>

<a id="Прочее"></a>
<details>
<summary align="center"><h3><b> Прочее </b></h3></summary>

- `Лаба` - может обозначать как пару по предмету, так и саму лабораторную работу
- `Прод` - профильная (продвинутая) математика
- `База` - базовая математика
- `Экз` - Экзамен
- `Алгосы` - Алгоритмы
- `Олпрога` - Олимпиадное программирование
- `Рубежка` - Рубежная работа
- `Гх` - гитхаб
- `Гит` - git, распределённая система контроля версий
- `ось` - операционная система
- `линка` - ссылка (от англ. link)

</details>

## Сборник полезных источников

<a id="Пояснения к иконкам"></a>
<details>
<summary align="center"><h3><b> Пояснения к иконкам </b></h3></summary>

- <img src="./icons/psql.svg" width="30" height="30"> - курс по базам данных
- <img src="./icons/c.png" width="30" height="30"> - курс по ЯПам
- <img src="./icons/calculus.png" width="30" height="30"> - курс по вышмату
- <img src="./icons/nodes.png" width="30" height="30"> - курс по дискретной математике
- <img src="./icons/informatics.png" width="30" height="30"> - курс по информатике
- <img src="./icons/java.png" width="30" height="30"> - курс по программированию на java
- <img src="./icons/kik.png" width="30" height="30"> - курс по КИКу
- <img src="./icons/bjd.png" width="30" height="30"> - курс по БЖД
- <img src="./icons/opd.png" width="30" height="30"> - курс по ОПД
- <img src="./icons/web.png" width="30" height="30"> - курс по веб-программированию
- <img src="./icons/philosophy.png" width="30" height="30"> - курс по философии
- <img src="./icons/physics.png" width="30" height="30"> - курс по физике

</details>

> P.S. сортировка содержимого по релевантности слева->направо

|источник|содержимое (иконки кликабельны)|
|-|-|
|worthant|[<img src="./icons/java.png" width="40" height="40">](https://github.com/worthant/Java_labs) [<img src="./icons/opd.png" width="40" height="40">](https://github.com/worthant/OPD) [<img src="./icons/informatics.png" width="40" height="40">](https://github.com/worthant/Informatics)[<img src="./icons/psql.svg" width="40" height="40">](https://github.com/worthant/Databases-course) [<img src="./icons/calculus.png" width="40" height="40">](https://github.com/worthant/Higher-Mathematics)|
|Black Rider|[<img src="./icons/nodes.png" width="40" height="40">](https://t.me/+qO4dE84coBlkNDU6) [<img src="./icons/opd.png" width="40" height="40">](https://github.com/eliteSufferer/ITMO_Studies/tree/main/OPD_Labs) [<img src="./icons/psql.svg" width="40" height="40">](https://github.com/eliteSufferer/ITMO_Studies/tree/main/Databases)|
|Zerumi|[<img src="./icons/opd.png" width="40" height="40">](https://github.com/Zerumi/Ifmo-BPA_Labs) [<img src="./icons/java.png" width="40" height="40">](https://github.com/Zerumi?tab=repositories&q=no) [<img src="./icons/informatics.png" width="40" height="40">](https://github.com/Zerumi/inf_labs) [<img src="./icons/psql.svg" width="40" height="40">](https://github.com/Zerumi/bd1_180223_367837)|
|maxbarsukov|[<img src="./icons/java.png" width="40" height="40">](https://github.com/maxbarsukov/itmo/tree/master/1-2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5) [<img src="./icons/opd.png" width="40" height="40">](https://github.com/maxbarsukov/itmo/tree/master/1-2%20%D0%BE%D0%BF%D0%B4) [<img src="./icons/informatics.png" width="40" height="40">](https://github.com/maxbarsukov/itmo/tree/master/1%20%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B0)[<img src="./icons/psql.svg" width="40" height="40">](https://github.com/maxbarsukov/itmo/tree/master/2%20%D0%B1%D0%B0%D0%B7%D1%8B%20%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)|
|<https://notesitmo.github.io/cse-notes/first-course/firstcourse.html>|[<img src="./icons/physics.png" width="40" height="40">](https://notesitmo.github.io/cse-notes/first-course/firstcourse.html) [<img src="./icons/philosophy.png" width="40" height="40">](https://notesitmo.github.io/cse-notes/first-course/firstcourse.html) [<img src="./icons/opd.png" width="40" height="40">](https://notesitmo.github.io/cse-notes/first-course/firstcourse.html) [<img src="./icons/java.png" width="40" height="40">](https://notesitmo.github.io/cse-notes/first-course/firstcourse.html)|
|\<T\>| [<img src="./icons/kik.png" width="40" height="40">](https://205826.github.io/KIK/) [<img src="./icons/java.png" width="40" height="40">](https://205826.github.io/C2C.html) [<img src="./icons/calculus.png" width="40" height="40">](https://205826.github.io/DL/)|
|<https://picloud.pw/cloud/>|экземпляры лаб прошлых лет; ответы на ЦДО; |
|<https://github.com/Roggired/ITMO>|Репозиторий с общей информацией по проге и опд. Там же можете найти требования к лабам, к отчетам (пример отчета), и всякие другие полезные вещи.|

## Гелиус

- Примерно в 5-х числах сентября у вас откроется доступ к Гелиусу [вот здесь](http://se.ifmo.ru/passwd).
- Гелиус - это *итмошный сервак*. На нём будут сдаваться лабораторные по `проге`(1-7), `ОПД`(1) и `БД`(1-4)

> Все работы нужно загружать на этот сервер, они должны на нём полностью функционировать, если это требуется.  
> Сделано это для того, чтоб все были в равных условиях и вы могли попрактиковать bash и взаимодействие с сервером.
> P.S. - на сервере стоит ось `FreeBSD`

<a id="Подключение"></a>
<details open>
<summary align="center"><h3><b> Подключение и загрузка файлов </b></h3></summary>

<a id="authorization"></a>

#### Авторизация в [se.ifmo.ru](https://se.ifmo.ru/)

Логин: `sТабельныйНомер` (далее будет обозначаться как `s######`)  
Пароль: [se.ifmo.ru/passwd](http://se.ifmo.ru/passwd) (далее будет обозначаться как `PASSWD`)


#### Подключение через консоль (powershell, bash, zsh, e.t.c)
```bash
На выбор:
1. ssh -p 2222 sXXXXXX@helios.cs.ifmo.ru
2. ssh sXXXXXX@helios.se.ifmo.ru -p 2222
3. ssh sXXXXXX@se.ifmo.ru -p 2222
```

#### Загрузка файлов через консоль (powershell, bash, zsh, e.t.c)

```bash
scp -P 2222 FileForUpload.java sXXXXXX@helios.se.ifmo.ru:DirectoryToUpload
```

- Пример загрузки файла README.md в вашу корневую директорию sXXXXXX:

```bash
scp -P 2222 README.md sXXXXXX@se.ifmo.ru:.
```

#### Создание `.bat` - файла для авто-подключения к серверу (консоль + для загрузки файлов)

Уже готовый архив со всем необходимым для подключения можно скачать [здесь](https://205826.github.io/auto_connect_gelius.zip)
> Никаких дополнительных программ для работы не нужно скачивать, следует лишь отредактировать `.bat` - файлы, написав свой `логин` и `пароль`

Пример содержания такого файла:

```powershell
rem PuTTY
start "" "putty_portable.exe" sXXXXXX@se.ifmo.ru:2222 -pw PASSWORD
rem start "" "C:\\Program Files\\PuTTY\\putty.exe" -ssh -P 2222 sXXXXXX@se.ifmo.ru -pw PASSWORD

rem WinSCP
start "" "%ProgramFiles%\\WinSCP\\WinSCP.exe" sftp://sXXXXXX:PASSWORD@se.ifmo.ru:2222
rem start "" "C:\\Program Files (x86)\\WinSCP\\WinSCP.exe" sftp://sXXXXXX:PASSWORD@se.ifmo.ru:2222

rem FileZilla
rem start "" "%ProgramFiles%\\FileZilla FTP Client\\filezilla.exe" sftp://sXXXXXX:PASSWORD@se.ifmo.ru:2222
```

#### [PuttY](https://putty.org.ru/download.html) (консоль)

1. Имя хоста: `sXXXXXX@se.ifmo.ru`  
2. Порт: `2222`  
3. Нажимаем "Соединиться"  
4. Пишем `PASSWD`

#### [WinSCP](https://winscp.net/eng/download.php) (для загрузки файлов)

Протокол: `sftp`  
Имя хоста: `se.ifmo.ru`  
Порт: `2222`  
Имя пользователя: `s######`  
Пароль: `PASSWD`

#### [FileZilla](https://filezilla.ru/get/) (для загрузки файлов)

Хост: `sftp://se.ifmo.ru`  
Имя пользователя: `sXXXXXX`  
Пароль: `PASSWD`  
Порт: `2222`

#### Git (для загрузки файлов)

1. Создаём репозиторий на гитхабе и загружаем туда свои файлы через браузер: [туториал](https://www.youtube.com/watch?v=yjivWxxH0eE)
2. Заходим на сервак
3. Пишем `git clone <Ссылка на репозиторий>`

</details>

<a id="лайфхаки-по-работе-с-сервером"></a>
<details open>
<summary align="center"><h3><b> Лайфхаки по работе с сервером </b></h3></summary>

- `Tab` - может помочь вводить имена файлов (автозаполнение)
- `Enter` - может помочь копировать  
- `Cntrl+C` - **EOF**, чтобы оборвать выполнение чего угодно
- `↑↓` - предыдущая / последующая команда
- `Cntrl+shift+V / Cntrl+Shift+C` - **вставить из** / **скопировать в** буфера обмена  
- `chmod -R 755 ./*` может помочь избавиться от ошибок доступа  
- `chmod -R 700 ~` может помочь избавиться от любопытных глаз

</details>

<a id="создание-перманентной-переменной-окружения"></a>
<details>
<summary align="center"><h3><b> Cоздание перманентной переменной окружения </b></h3></summary>

1. Создаем файлик .bash_profile в своей корневой директории `sXXXXXX`:

```bash
vim .bash_profile
```

2. В файлик пишем следующее (на примере 5 лабы):

```bash
lab5="/home/studs/s######/{pathToFile}"; export lab5
```

3. Нажимаем `Esc` и пишем следующее:

```bash
:wq
```

> *записываем* + *выходим* из текстового редактора `vim`

4. Закрываем соединение (`exit`) и подключаемся снова

</details>

<a id="траблы"></a>
<details>
<summary align="center"><h3><b> Траблы </b></h3></summary>

#### JAVA: ошибка переполнения кучи или java по дефолту 11 версии, BindException

```bash
[s######@helios ~]$ javac
Error occurred during initialization of VM
Could not reserve enough space for 31424512KB object heap
```

В большинстве случаев спасает патч Ценекова:

```bash
# By @dts256 (feat. @Fenaven)

export _JAVA_OPTIONS="-Xmx256M"
export JAVA_VERSION="17.0+"
export JAVA_HOME="/usr/local/openjdk17"
export PATH=/usr/local/openjdk17/bin/:$PATH
```

Второй патч, который просто закрывает все сессии

```bash
killall -u `whoami`
```

> Закрываем все сессии  
> Также поможет при `java.net.BindException: Address already in use`

Третий вариант, просто дождаться 4х часов ночи, именно в это время происходит перезагрузка гелиуса

#### Проблемы с базой данных и клиентскими и серверными приложениями (не запускается, переполнение кучи и т.д.)
  
- Посмотрите какие потоки работают:

```bash
ps -A
```

- Искусственно выключите ненужные:

```bash
kill <pid>
```

</details>

<a id="Приколы"></a>
<details>
<summary align="center"><h3><b> Приколы </b></h3></summary>

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

```bash
1. echo "Здесь могла быть ваша реклама">>test
2. wall test
3. Broadcast Message from sXXXXXX@helios.cs.ifmo.ru
        (/dev/pts/##) at $$:$$ MSK...

Здесь могла быть ваша реклама
```

[//]: # (Игра в minecraft по shh:)
[//]: # (TODO: сделать гайд)

</details>

</details>

## Система оценивания БаРС и разбалловка по всем предметам

```mermaid
graph 
POINTS(ваши баллы)-->A(<60);
POINTS(ваши баллы)-->С(60-67);
POINTS(ваши баллы)-->Е(67.01-74);
POINTS(ваши баллы)-->G(74.01-83);
POINTS(ваши баллы)-->I(83.01-90);
POINTS(ваши баллы)-->К(90.01);

A(<60)-->B[2FX]; 
С(60-67)-->D[3E];
Е(67.01-74)-->F[3D];
G(74.01-83)-->H[4C];
I(83.01-90)-->J[4B];
К(90.01+)-->L[5A];
```

|ссылка на гугл таблицу|описание|
|-|-|
|[СУиР 1 курс / 1 семестр БаРС](https://docs.google.com/spreadsheets/d/1rXcCvcgKCp71O90rViDvCNEO5R-fpYi0VmZkV8cPYfQ/edit#gid=0)|Гугл таблица с разбалловкой по ВСЕМ предметам 1 семестра 1 курса СУиРа|
|[СППО/ИВТ 1 курс 2 семестр БаРС](https://docs.google.com/spreadsheets/d/1I43z70oygEIbQNpOb5irSJv1jI42xsz7mNst7oQpFbs/edit#gid=0) |Гугл таблица с разбалловкой по ВСЕМ предметам 2 семестра 1 курса ВТ|

## ITMO ENTER

[Фотки с ITMO Enter 2022](itmo_enter.zip)

Спорт:

- Талисман - снежный барс Барс Тим
- 5 раз были лучшим спортивным студенческим клубом с 2016 по 2021

На "внимание образование" посоветовали взять у преподавателей рабочую программу дисциплины и чеклист для зачёта, чтобы не пропустить ничего!

[Как эффективно читать книги](https://kinzhal.media/read-less/)

[ФабЛаб](https://fablab.itmo.ru) - является малой лабораторией-мастерской для реализации личных проектов и ведения учебной деятельности для студентов. [Логин](https://lc.fablab.itmo.ru/login). [ТГ чат](https://t.me/fablabitmo).

[Мегабайт](https://vk.com/mb.news) медиа и их школа (прием анкет уже закрыт, но вы можете написать им на [почту](news@mbradio.ru)). У их участников повышенная стипендия.

## Математика  

[//]: # (TODO: Задачник для линала с ответами)

### База

- [Плюс ЦЭ](https://www.youtube.com/c/ПлюсЦЭ)
  - [Миро МАТ 1 сем 1-6](https://miro.com/app/board/uXjVPY6uyi4=/)
  - [Миро ЛГ 1 сем 1-9](https://miro.com/app/board/uXjVPY6uyi4=/)
  - [Миро МАТ 2 сем 1-4](https://miro.com/app/board/uXjVPqAiEZ8=/)
  - [Миро ЛГ 2 сем 3-6](https://miro.com/app/board/uXjVPqAQmLw=/)
- [Генератор 4 и 6 дз по дискретке 2 сем](https://band-of-four.github.io/discrete-math-homework-second-term/#/4)
- Рубежный теортест МА №3 TODO

На результаты тестов на OnlineTestPad можно просто скидывать ссылки, таким образом объеденяя ответы. [Exemple](https://onlinetestpad.com/y4wvbdpkg6lsm). В итоге можно получить что-то [такое](https://docs.google.com/spreadsheets/d/17AxW1uOUDC2pFC2_pAqyAEHv_qL8FZxsLnpC8jVggfs/edit?usp=sharing). TODO. Скрипт для автоматизации сбора данных по ссылкам: TODO.

### Прод

- [Домашка для прод дискретке у карпова](https://logic.pdmi.ras.ru/~dvk/ITMO/Algebra/)

## Программирование

И в первом и во втором семестре по 4 лабы.
Кроме 8 лабы этапы сдачи следующие:

- Делаете лабу
- Закидываете гелиус
- Делаете отчет (у некоторых практиках нетребуется)
- Защищаете лабу
  - ~~Отчет~~
  - Код (соответвие заданию, реализованые патерны...)
  - Выполнение на гелиусе (программу пытаються крашнуть, Ctrl+C/D, Фаззинг...)
  - Теория

- [Рубежка по проге](https://miro.com/app/board/uXjVP8oK04Y=/)
- [Вторая рубежка по проге](https://miro.com/app/board/uXjVP4NqLxI=/) P.S. Во втором задании официально ответ пустой
- [Мануал по Java](https://apploidx.github.io/programming-manual/)
- [Free Java Tutorial](https://www.examclouds.com)
- [Руководство по языку программирования Java](https://metanit.com/java/tutorial/)
- [сайтик с паттернами и полезными советами по написанию чистого кода](https://refactoring.guru/ru/design-patterns/java) (без впн не работает)

- [Вопросы для собеседования на Java Developer](https://github.com/enhorse/java-interview)
- [Ещё один способ подготовиться к собеседованию](https://neetcode.io/) + [решения](https://github.com/neetcode-gh/leetcode)
- [Список тем для изучения, чтобы стать программистом](https://github.com/jwasham/coding-interview-university)

### Сука, нихуя не компилиться

Успокойтесь, мы поможем вам:  
TODO

## ОПД

- [Гайд по человеческой трассировке, BCOMP Command Line Interface и ассемблеру](https://github.com/owl-from-hogvarts/OPD-guide#trace)
- [Небольшой гайдик по 3 лабе](https://docs.google.com/document/d/1-zOg1rctzJ1juD2MEGR6KvePbNCY7l22bjq1_HAqYSU/edit?usp=sharing)
- [Гайд по 8 лабе](https://vk.com/wall-192451261_27)
- [Экзаменационные вопросы по ОПД](https://docs.google.com/document/d/12mt8a1ifyFH341VFZ4z_kT-_EDrm5X_GAZi1mlFPMGo/edit)
- [YT](https://youtube.com/c/SergeKlimenkov)
- [Как выжить студентам Дмитрия Борисовича Афанасьева](https://se.ifmo.ru/~dima/ovt/)

### Вопросы с 7й лабы

1) Почему команды начинаются с 01, а не с 00. (вопрос глубокий в том плане что да, нам это говорили на лекции, но придётся открыть схему микрокоманд, показать как там происходит всё и дать комментарии)
2) В чём преимущество вертикальных команд перед горизонтальными
3) Какие вентили не имеет смысла, либо не рекомендуется ставить одновременно в ОМК. Ну т.е. какие всё сломают и почему.
4) За какое минимальное и максимальное количество тактов у меня будет работать комплекс микропрограмм (изи вопрос, но оставлю на всякий) (у меня он имеет смысл ибо у меня умножение и тут различается аж на 15 тактов)
5) Забыл, но насколько я помню вопрос был не сложный, я сразу ответил. что-то из серии а что будет если вот так сделать

### Рубеж

- Висячий переход - это значит, что нет метки назначения или название не совпадает
- На листах пишем код как на АССЕМБЛЕРЕ БЭВМ
- В столбце АДРЕС/МЕТКА пишем ТОЛЬКО метку (адрес не нужно)
- Чтобы указать адрес, достаточно во втором столбце команд написать ORG 0x*
- [Файл с примерами задач рубежки, кодами и подробностями](https://docs.google.com/document/d/1jdZ76a635Qss6FEJltSNqU9gnUA67ZcGd-v0p7gW0VE/edit#heading=h.xgsi83slcv8a)
- Самый удобный, на мой взгляд, варинт написания рубежки:
  - Карандашом, со стёркой
  - Сначала пишем рабочий код, а потом уже дописываем все нужные переменные
  - Во время написания кода можно на втором листе, или на этом же, но на обороте
  - писать карандашом заготовки, если не уверены в написании сразу
  - все переменные, о которых забыли - используем как ни в чём не бывало, оставив пометку на полях. и в конце проги, на оставшемся месте дописываем эту перменную

### Экз

 1. Билеты нереально непропорциональны. Одни сложные, другие простые.
 2. Дадут 2 билета - оба чилл, либо 1 чилл 1 сложный (скорее всего так), 2 гробовых давать не должны.
 3. написать один недостаточно - надо писать оба и идеально.
 4. давайте будем честны, надо знать все, другого варианта нет и не будет
 5. половина билетов, которые про бэвм и про числа - ботаются быстро и легко, там ничего сложного нет. Но все равно надо заботать
 6. вторая половина - гробовая. Написание билета может занять как 5 минут, так и 40.
 7. Билетов 40. Просто прочитав вы не поймете ничего в сложных билетах. Для этого надо лезть в синюю библию, лекции, гугл, e.t.c.
 8. Конченные темы вот:

- [контроллеры](https://youtu.be/Ya8bc9n6uXY?list=PLBWafxh1dFuwbs2bc_ba_1FIm4SzFYg2p)
  - сети, маршрутизация и передача данных по сетям
  - память (в том числе [виртуальная память](https://www.youtube.com/watch?v=pB7cPle-o24))

 9. Кстати еще аккуратно, тут в билетах не указано про коммутатор, про выборку операнда, ну и могут быть соответствующие неточности и опущения

## БД

- [Памятка/шпаргалка по SQL](https://habr.com/ru/post/564390/#что-такое-sql)
- [Экзамен](https://docs.google.com/document/d/1VlCpJtjxr4mZcazKUanbjqBC2RfhEM9D/edit) + [Пример решения](https://miro.com/app/board/uXjVM7mDWzg=/)

## Алгосы (Олпрога)

Теория:

- [Несложный мануал, brestprog](https://brestprog.by/topics/)
- [Мануал посложнее, algocode](https://wiki.algocode.ru/index.php?title=Список_всех_категорий)
- [старая алгоритмики](https://algorithmica.org/ru/)
- [Переписанные статьи с алгокода, емакса и старой алгоритмики](https://ru.algorithmica.org/cs/)
- [Графы](https://informatics.msk.ru/course/view.php?id=6#section-2)
- [e-maxx](https://e-maxx.ru/algo/)
- [Алгоритмы и структуры данных](https://acm.khpnets.info/wiki/Категория:Учебный_курс_«Алгоритмы_и_структуры_данных»)
- [ИТМОшные конспкты с КТ/ИСа](http://neerc.ifmo.ru/wiki/index.php?title=Заглавная_страница)

На своём опыте могу сказать, что чтение таких источников в большенстве случаев бесполезна без практики!

Практика:

- <https://codeforces.com/>
- <https://leetcode.com/>

## Особая благодарность

- \<T\>
- worthant
- mr-banality
- DecafMango
- Zerumi
- TsenekovIT
