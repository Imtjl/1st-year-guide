# Гайд по I курсу

## Описание

> Вашему вниманию представляется сборник мануалов и гайдов по первому курсу ВТ. Была проделана большая работа как тех, кто находил эту информацию, так и тех, кто структурировал, оформлял и объеденял в один источник. Мы старались :smile:
<h4 align="center"> Первокурсники, пользуйтесь с умом и всем хороших оценок!)</h4>

<a id="оглавление"></a>
<details open>
   <summary><h2><b> Оглавление </b></h2></summary>

- [Описание](#описание)
- [Оглавление](#оглавление)
- [Устройство университета](#устройство-университета)
  - [Пояснения и расшифровки названий](#пояснения)
  - [Наглядная схема устройства факультетов](#схема-факультетов)
- [Сокращения, сленг и ссылки](#сокращения-сленг-и-ссылки)
  - [Предметы](#предметы)
  - [Здания](#здания)
    - [Корпуса университета](#корпуса-университета)
    - [Общежития](#общежития)
  - [Сайты](#сайты)
  - [Прочее](#прочее)
- [Сборник полезных источников](#сборник-полезных-источников)
  - [Пояснения к иконкам содержимого](#пояснения-к-иконкам-содержимого)
  - [Полезные источники](#полезные-источники)
- [Гелиус](#гелиус)
  - [Подключение и загрузка файлов](#Подключение)
    - [Авторизация на se.ifmo.ru](#авторизация)
    - [Подключение через консоль (powershell, bash, zsh, e.t.c)](#подключение-через-консоль-powershell-bash-zsh-etc)
    - [Загрузка файлов через консоль (powershell, bash, zsh, e.t.c)](#загрузка-файлов-через-консоль-powershell-bash-zsh-etc)
    - [Создание `.bat` - файла для авто-подключения к серверу (консоль + для загрузки файлов)](#создание-bat---файла-для-авто-подключения-к-серверу-консоль--для-загрузки-файлов)
    - [PuttY (консоль)](#putty-консоль)
    - [WinSCP (для загрузки файлов)](#winscp-для-загрузки-файлов)
    - [FileZilla (для загрузки файлов)](#filezilla-для-загрузки-файлов)
    - [Git (для загрузки файлов)](#git-для-загрузки-файлов)
  - [Лайфхаки по работе с сервером](#лайфхаки-по-работе-с-сервером)
    - [Сочетания клавиш и команды терминала](#команды)
    - [Cоздание перманентной переменной окружения](#создание-перманентной-переменной-окружения)
    - [Траблы](#траблы)
    - [Приколы](#Приколы)
- [Система оценивания БаРС и разбалловка по всем предметам](#система-оценивания-барс-и-разбалловка-по-всем-предметам)
  - [Наглядная диаграмма разбалловки БаРС](#разбалловка)
  - [Подробные гугл журналы для самостоятельного учёта успеваемости по ВСЕМ предметам конкретного семестра ВТ/СУиР](#журналы)
- [ITMO ENTER](#itmo-enter)
  - [Фотки презентаций, тестов и QR-кодов с ITMO Enter 2022](#itmo-enter-фотки)
  - [Можно ли получить незачёт?](#itmo-enter-незачёт)
  - [Прочие материалы](#прочие-материалы)
- [Информатика](#информатика)
  - [Автомат и разбалловка](#инф-автомат-и-разбалловка)
  - [Аннотации](#аннотации)
  - [Рубежка](#инфа-рубежка)
- [Математика](#математика)
  - [База](#база)
  - [Прод](#прод)
- [Программирование](#программирование)
  - [Автомат](#прога-автомат)
  - [Алгоритм сдачи лабораторных](#прога-сдача)
  - [Прочие материалы](#прочие-материалы-прога)
    - [Первая рубежка](#прога-рубежка1)
    - [Вторая рубежка](#прога-рубежка2)
    - [Мануал по java](#мануал-по-java)
- [ОПД](#опд)
  - [Автомат](#опд-автомат)
  - [Вопросы с 7й лабы](#вопросы-с-7й-лабы)
  - [Первый рубеж](#опд-рубеж)
  - [Второй рубеж](#опд-рубеж2)
    - [Пояснения к рубежу](#опд-пояснения)
  - [Экз](#опд-экз)
- [БД](#бд)
  - [TODO: Автомат](#бд-автомат)
  - [TODO: Рубеж](#бд-рубеж)
  - [Экз](#бд-экз)
- [Дискретная математика](#дискретная-математика)
  - [Автомат](#дискра-автомат)
  - [Ссылка на материалы в ИСУ](#дискра-материалы)
- [Алгосы (Олпрога)](#алгосы-олпрога)
- [Особая благодарность](#особая-благодарность)

</details>

## Устройство университета

<a id="пояснения"></a>
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

<a id="схема-факультетов"></a>

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

<a id="предметы"></a>
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

<a id="здания"></a>
<details open>
<summary align="center"><h3><b> Здания </b></h3></summary>

> Подробно и наглядно можно посмотреть [тут](https://itmo.ru/ru/map/karta_korpusov.htm)

<a id="корпуса-университета"></a>
<details>
<summary><h3><b> Корпуса университета </b></h3></summary>

- `Кронва` - главный корпус университета на Кронверском 49
- `Ломо` - корпус университета на Ломоносова 9
- `Биржа` - корпус университета на Биржевой линии 14-16
- `Гривцова` - корпус университета на Гривцовом переулке 14-16 лит.А
- `Чайка` - корпус университета на Чайковской улице 11.2 лит.А

</details>

<a id="общежития"></a>
<details>
<summary><h3><b> Общежития </b></h3></summary>

- `Вязьма` - общежитие на Вяземском переулке 5-7 лит.А
- `Белорусская / б6 / белка` - общежитие на Белорусской улице д.6 лит.А
- `Альпийка` - общежитие на Альписском переулке 15 к.2 лит.А
- `Ленсовета` - Общежитие на улице Ленсовета д.23 лит.А
- `МСГ` -  Новоизмайловский пр., 16
- `Доходный дом` - наб. р. Карповки, д. 22, корп. 2, лит. Б
- `ЛТУ` - ул. Вавиловых, д. 12

</details>

</details>

<a id="сайты"></a>
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

<a id="прочее"></a>
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

<a id="пояснения-к-иконкам-содержимого"></a>
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

<a id="полезные-источники"></a>
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

<a id="авторизация"></a>

#### Авторизация в [se.ifmo.ru](https://se.ifmo.ru/)

- Логин: `sТабельныйНомер` (далее `s######` или `sXXXXXX`)  
- Пароль: [se.ifmo.ru/passwd](http://se.ifmo.ru/passwd) (далее `PASSWD`)

### Подключение через консоль (powershell, bash, zsh, e.t.c)

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

1. Протокол: `sftp`  
2. Имя хоста: `se.ifmo.ru`  
3. Порт: `2222`  
4. Имя пользователя: `s######`  
5. Пароль: `PASSWD`

#### [FileZilla](https://filezilla.ru/get/) (для загрузки файлов)

1. Хост: `sftp://se.ifmo.ru`  
2. Имя пользователя: `sXXXXXX`  
3. Пароль: `PASSWD`  
4. Порт: `2222`

#### Git (для загрузки файлов)

1. Создаём репозиторий на гх и [загружаем туда свои файлы через браузер](https://www.youtube.com/watch?v=yjivWxxH0eE)
2. Заходим на сервак
3. Пишем `git clone <Ссылка на репозиторий>`

</details>

<a id="лайфхаки-по-работе-с-сервером"></a>
<details open>
<summary align="center"><h3><b> Лайфхаки по работе с сервером </b></h3></summary>
<a id="команды"></a>

- `Tab` - может помочь вводить имена файлов (автозаполнение)
- `Enter` - может помочь копировать  
- `Cntrl+C` - **EOF**, чтобы оборвать выполнение чего угодно
- `↑↓` - предыдущая / последующая команда
- `Cntrl+shift+V / Cntrl+Shift+C` - **вставить из** / **скопировать в** буфера обмена  
- `chmod -R 755 ./*` может помочь избавиться от ошибок доступа  
- `chmod -R 700 ~` может помочь избавиться от любопытных глаз

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

<a id="разбалловка"></a>


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

<a id="журналы"></a>

|ссылка на гугл таблицу|описание|
|-|-|
|[СУиР 1 курс / 1 семестр БаРС](https://docs.google.com/spreadsheets/d/1rXcCvcgKCp71O90rViDvCNEO5R-fpYi0VmZkV8cPYfQ/edit#gid=0)|Гугл таблица с разбалловкой по ВСЕМ предметам 1 семестра 1 курса СУиРа|
|[СППО/ИВТ 1 курс 2 семестр БаРС](https://docs.google.com/spreadsheets/d/1I43z70oygEIbQNpOb5irSJv1jI42xsz7mNst7oQpFbs/edit#gid=0) |Гугл таблица с разбалловкой по ВСЕМ предметам 2 семестра 1 курса ВТ|

## ITMO ENTER

<a id="itmo-enter-фотки"></a>

[Фотки презентаций, тестов и QR-кодов с ITMO Enter 2022](itmo_enter.zip)

<a id="itmo-enter-незачёт"></a>

### Можно ли получить незачёт?
- В 2022-23 году обучения эта дисциплина была обязательной. Да, по ней действительно в теории можно было получить незачёт. Насколько нам известно, в новом учебном году эту дисциплину сделали необязательной, поэтому поручаем вам задачу выяснить это самостоятельно :)

### Прочие материалы

Спорт:

- Талисман - снежный барс Барс Тим
- 5 раз были лучшим спортивным студенческим клубом с 2016 по 2021

На "внимание образование" посоветовали взять у преподавателей рабочую программу дисциплины и чеклист для зачёта, чтобы не пропустить ничего!

[Как эффективно читать книги](https://kinzhal.media/read-less/)

[ФабЛаб](https://fablab.itmo.ru) - является малой лабораторией-мастерской для реализации личных проектов и ведения учебной деятельности для студентов. [Логин](https://lc.fablab.itmo.ru/login). [ТГ чат](https://t.me/fablabitmo).

[Мегабайт](https://vk.com/mb.news) медиа и их школа (прием анкет уже закрыт, но вы можете написать им на [почту](news@mbradio.ru)). У их участников повышенная стипендия.

## Информатика
Курс по информатике представляет собой совокупность самый актуальных сфер IT. Он достаточно хорошо расписан преподавателем в тг канале [2022-23](https://t.me/balakshin_students), так что сложности с этим предметом возникают редко.

<a id="инф-автомат-и-разбалловка"></a>
<details>
<summary align="center"><h3><b> Автомат и разбалловка </b></h3></summary>

1. ~~Анонимный~~ тест об ожиданиях от курса Информатики (`1 балл` + `1.25 баллов` за своевременность)
2. 7 аннотаций, сдаваемых в начале каждой лекции (`7 * 2 баллов` + `7 * 1.25 баллов` за своевременность)
3. 6 лабораторных:
    1. Системы счисления: n-ричная (вещественная), фибоначчиевая, нега-позиционная, симметричная, факториальная (`3 балла`)
    2. Код Хэмминга (`4 балла`)
    3. Регулярные выражения. `import re` в Python (8 баллов)
    4. Написание парсера на Python из XML/JSON/YAML в XML/JSON/YAML, наверное самая сложная лаба (`8 баллов`)
    5. Поразрядное сложение чисел в Exel (`5 баллов`)
    6. Воссоздание скриншота страницы книги в LaTeX. [Онлайн-редактор](https://overleaf.com/) (`7 баллов`)
4. 2 теста на ЦДО (`2*10 балла`, 2 попытки)
5. Экзамен (`20 баллов`, **автомат** на `11-14 баллов` (вычисляется как `сумма баллов за 1-4 пункт * 0.185`) баллов при 4х первых лабах и 2х ЦДО-тестах на 60%+)
6. Мемы в конце аннотаций, полезные ссылки/смешные мемы в лс преподавателю (`3 балла`)

- [Журнал успеваемости всего потока 2022-23 учебного года](https://docs.google.com/spreadsheets/d/1r6v5E_rWELaAjWtlayyBiXJsQNYZvkREbSepKeY3C8U/edit?usp=sharing)

</details>

<a id="аннотации"></a>
<details>
<summary align="center"><h3><b> Аннотации </b></h3></summary>

- `Аннотация` - это краткое изложение содержания статьи в интернете. В ней нужно собрать всю актуальность, которая будет ценна читателю. Важно именно пересказывать, а не копировать части статьи. 
- Найти подходящую статью не так просто: чаще всего используется [тактика поиска по хабру](https://habr.com/ru/search/?q=Система%20счисления). Более крутые используют статьи с других сайтов (Например: [techxplore.com](https://techxplore.com/) и [newatlas.com](https://newatlas.com/)).
> - Поле `Дата прошедшей лекции` - дата прошедшей лекции  
> - Поле `Номер последней лекции` - порядковый номер прошедшей лекции  
> - Поле `Дата сдачи` - дата лекции, на которую вы `принесёте аннотацию`. Если будете сдавать позже, то писать `фактическую` дату сдачи.   
> - Дата материала должна быть не старше `{текущий год} - 3 года`, т.е. с 01.01.{текущий год - 3} по сегодняшний день.  
> - Материал должен быть `близким к теме прошедшей лекции`. Либо быть очень важным для вас, либо очень прорывная технология и т.п. В ином случае часто режут баллы, но если есть желание писать по тому, что вам интересно - `пишите!` Аннотации приносят не так много баллов, поэтому даже со срезанными баллами не сложно получить 5A (на личном опыте).  
> - Концентрируйтесь лучше на `лабах` и `рубежке`.  
> - Не надо новости IT-экономики, только если Google и Amazon вдруг купят друг друга (тогда это кардинально повлияет на весь IT-мир).  
> - Шаблон аннотации берите из телеграмм канала, он каждый год немного меняется.

</details>

<a id="инфа-рубежка"></a>
<details>
<summary align="center"><h3><b> Рубежка </b></h3></summary>

- [Скриншоты и генераторы ответов](https://github.com/Imtjl/1st-year-guide/tree/main/INF/de).  
- Рубежка пишется под камерой, тактика списывания может быть аналогична списыванию истории.  
- Многие заданий по типу запустить в питоне или посчитать на [калькуляторе](https://205826.github.io/calc). 
> Но мы этого, конечно же, не говорили!  
> `Авторы` этого гайда все писали рубежки `сами` и на `максимум`, чего и вам советуем :)

</details>

## Математика  

[//]: # (TODO: Задачник для линала с ответами)
#### > За лабами и доп.материалами советую всегда обращаться в [сборник полезных источников](#сборник-полезных-источников) <

### База

- [Плюс ЦЭ](https://www.youtube.com/c/ПлюсЦЭ)
  - [Миро МАТ 1 сем 1-6](https://miro.com/app/board/uXjVPY6uyi4=/)
  - [Миро ЛГ 1 сем 1-9](https://miro.com/app/board/uXjVPY6uyi4=/)
  - [Миро МАТ 2 сем 1-4](https://miro.com/app/board/uXjVPqAiEZ8=/)
  - [Миро ЛГ 2 сем 3-6](https://miro.com/app/board/uXjVPqAQmLw=/)

На результаты тестов на OnlineTestPad можно просто скидывать ссылки, таким образом объеденяя ответы. [Exemple](https://onlinetestpad.com/y4wvbdpkg6lsm). В итоге можно получить что-то [такое](https://docs.google.com/spreadsheets/d/17AxW1uOUDC2pFC2_pAqyAEHv_qL8FZxsLnpC8jVggfs/edit?usp=sharing). TODO. Скрипт для автоматизации сбора данных по ссылкам: TODO.

### Прод

- [Домашка для прод дискретке у карпова](https://logic.pdmi.ras.ru/~dvk/ITMO/Algebra/)

## Программирование

#### > За лабами и доп.материалами советую всегда обращаться в [сборник полезных источников](#сборник-полезных-источников) <

> И в `первом` и во `втором` семестре `по 4 лабы`.
<a id="прога-сдача"></a>
### Кроме 8 лабы этапы сдачи следующие:

- Делаете лабу
- Закидываете на гелиус -> [туториал](#гелиус)
- Делаете отчет (у некоторых практиках нетребуется)
- Защищаете лабу
  - ~~Отчет~~
  - Код (соответвие заданию, реализованые патерны...)
  - Выполнение на гелиусе (программу пытаються крашнуть, Ctrl+C/D, Фаззинг...)
  - Теория
> Отличие с 8 лабой в том, что там GUI - графический интерфейс, который не надо выгружать на гелиос. Бд либо локально поднимаете, либо делаете проброс портов на сервер.

<a id="прога-автомат"></a>

### Автомат

- в 1 семестре чтобы получить автомат - достаточно закрыть все лабы и рубежку
- во 2 семестре нужно получить **>= 70 баллов за практику (лабы + рубежка)**, тогда поставят 5А автоматом.

<a id="прочие-материалы-прога"></a>

### Прочие материалы

<a id="прога-рубежка1"></a>
- [Рубежка по проге](https://miro.com/app/board/uXjVP8oK04Y=/)
<a id="прога-рубежка2"></a>
- [Вторая рубежка по проге](https://miro.com/app/board/uXjVP4NqLxI=/) P.S. Во втором задании официально ответ пустой
<a id="мануал-по-java"></a>
- [Мануал по Java](https://apploidx.github.io/programming-manual/)
- [Free Java Tutorial](https://www.examclouds.com)
- [Руководство по языку программирования Java](https://metanit.com/java/tutorial/)
- [сайтик с паттернами и полезными советами по написанию чистого кода](https://refactoring.guru/ru/design-patterns/java) (без впн не работает)

- [Вопросы для собеседования на Java Developer](https://github.com/enhorse/java-interview)
- [Ещё один способ подготовиться к собеседованию](https://neetcode.io/) + [решения](https://github.com/neetcode-gh/leetcode)
- [Список тем для изучения, чтобы стать программистом](https://github.com/jwasham/coding-interview-university)

## ОПД

#### > За лабами и доп.материалами советую всегда обращаться в [сборник полезных источников](#сборник-полезных-источников) <

- [Гайд по человеческой трассировке, BCOMP Command Line Interface и ассемблеру](https://github.com/owl-from-hogvarts/OPD-guide#trace)
- [Перевод гайда выше на русский (outdated)](https://github.com/Zerumi/OPD-guide-RU-)
- [Методичка](https://se.ifmo.ru/documents/10180/38002/%D0%9C%D0%B5%D1%82%D0%BE%D0%B4%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5+%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D0%BD%D0%B8%D1%8F+%D0%BA+%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D1%8E+%D0%BB%D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D1%8B%D1%85+%D1%80%D0%B0%D0%B1%D0%BE%D1%82+%D0%B8+%D1%80%D1%83%D0%B1%D0%B5%D0%B6%D0%BD%D0%BE%D0%B3%D0%BE+%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0%BB%D1%8F+%D0%91%D0%AD%D0%92%D0%9C+2019+bcomp-ng.pdf/d5a1be02-ad3f-4c43-8032-a2a04d6db12e)
- ["Синяя библия"](https://books.ifmo.ru/file/pdf/761.pdf)
- [Тренажёр для 1 рубежки](https://se.ifmo.ru/~s263975/program-tracing/)
- [Тренажёр для 2 рубежки](https://205826.github.io/MicroProgramTracingBasicComputer/) (доступные варианты: 1-3, 100-700)
- [Небольшой гайдик по 3 лабе](https://docs.google.com/document/d/1-zOg1rctzJ1juD2MEGR6KvePbNCY7l22bjq1_HAqYSU/edit?usp=sharing)
- [Мануал к 4 лабе](https://vk.com/wall-192451261_14)
- Мануал к 5 лабе: [1 часть](https://vk.com/wall-192451261_20), [2 часть](https://vk.com/wall-192451261_21)
- [Мануал к 6 лабе](https://vk.com/wall-192451261_27)
- [Экзаменационные вопросы по ОПД](https://docs.google.com/document/d/12mt8a1ifyFH341VFZ4z_kT-_EDrm5X_GAZi1mlFPMGo/edit)
- [YT](https://youtube.com/c/SergeKlimenkov)
- [Как выжить студентам Дмитрия Борисовича Афанасьева](https://se.ifmo.ru/~dima/ovt/)


<a id="опд-автомат"></a>

### Автомат

- в 1 семестре чтобы получить автомат - достаточно закрыть все лабы и рубежку
- во 2 семестре **все будут писать билетный экзамен**

### Вопросы с 7й лабы

1) Почему команды начинаются с 01, а не с 00. (вопрос глубокий в том плане что да, нам это говорили на лекции, но придётся открыть схему микрокоманд, показать как там происходит всё и дать комментарии)
2) В чём преимущество вертикальных команд перед горизонтальными
3) Какие вентили не имеет смысла, либо не рекомендуется ставить одновременно в ОМК. Ну т.е. какие всё сломают и почему.
4) За какое минимальное и максимальное количество тактов у меня будет работать комплекс микропрограмм (изи вопрос, но оставлю на всякий) (у меня он имеет смысл ибо у меня умножение и тут различается аж на 15 тактов)
5) Забыл, но насколько я помню вопрос был не сложный, я сразу ответил. что-то из серии а что будет если вот так сделать

<a id="опд-рубеж"></a>

### Первый рубеж

- Заходим в методичку, указанную в материалах к ОПД выше и читаем, там подробно описан этот рубеж. Советую внимательно прочитать, а затем потренироваться [на тренажёре](https://se.ifmo.ru/~s263975/program-tracing/)

### Второй рубеж

- Есть 2 варианта этой рубежки. `Основной - первый`, второй может быть на переписи.
- `1 вариант`: запускают в аудиторию, выдают листки, реализуем какую-то "полезную" программу `полностью на ассемблере`. Пишем ручкой/карандашём на листочках, вы всё правильно поняли)
- `2 вариант`: трассировка микрокода. Он проще, там по ходу разберётесь. [Потренируйтесь)](https://205826.github.io/MicroProgramTracingBasicComputer/)

<a id="опд-пояснения"></a>

#### Некоторые пояснения к 1 варианту рубежки

- `Висячий переход` - это значит, что нет метки назначения или название не совпадает
- На листах пишем код как на АССЕМБЛЕРЕ БЭВМ, ни на каком другом.
- `Реентерантная программа` - код, который работает корректно `независимо` от количества одновременно вызванных модулей. Поэтому, нужно корректно инициализировать и класть нули в нужные переменные при работе с ними, во избежание `мусорных значений`.
- В столбце АДРЕС/МЕТКА пишем ТОЛЬКО метку (адрес не нужно)
- Чтобы указать адрес, достаточно во втором столбце команд написать ORG 0x*
- [Файл с примерами задач рубежки, кодами и подробностями](https://docs.google.com/document/d/1jdZ76a635Qss6FEJltSNqU9gnUA67ZcGd-v0p7gW0VE/edit#heading=h.xgsi83slcv8a)
- Самый удобный, на мой взгляд, варинт написания рубежки:
  - Карандашом, со стёркой
  - Сначала пишем рабочий код, а потом уже дописываем все нужные переменные
  - Во время написания кода можно на втором листе, или на этом же, но на обороте
  - писать карандашом заготовки, если не уверены в написании сразу
  - все переменные, о которых забыли - используем как ни в чём не бывало, оставив пометку на полях. и в конце проги, на оставшемся месте дописываем эту перменную

<a id="опд-экз"></a>

### Экз

1. Вопросов 40. Билетов 20.
2. Билеты нереально непропорциональны. Одни сложные, другие простые.
3. Дадут 2 билета - оба чилл, либо 1 чилл 1 сложный (скорее всего так), 2 гробовых давать не должны.

> виды информации + прерывания с контроллером, к примеру

4. Написать один вопрос билета недостаточно - надо писать оба и идеально.
5. Половина билетов, которые про бэвм и про числа - ботаются быстро и легко, там ничего сложного нет. Но все равно надо заботать :)
6. Вторая половина - гробовая. Написание билета на экзамене может занять как 5 минут, так и 40, я уже не говорю сколько времени надо потратить чтобы их заботать.
7. Просто прочитав вы не поймете ничего в сложных билетах. Для этого надо лезть в синюю библию, лекции, гугл, e.t.c. Не халтурьте, начните за месяц и делайте по 1-2 билета в день. Потом повторите и углубитесь в сложные билеты и 5А у вас в кармане.
8. Грубо говоря, вот самые сложные темы экзамена:

    - [контроллеры](https://youtu.be/Ya8bc9n6uXY?list=PLBWafxh1dFuwbs2bc_ba_1FIm4SzFYg2p) (в синей библии хорошо расписано)
    - сети, маршрутизация и передача данных по сетям
    - память (в том числе [виртуальная память](https://www.youtube.com/watch?v=pB7cPle-o24))

#### > Сборник расписанных билетов к экзамену смотрите [прямо в этом репозитории](./OPD) <
> P.S. - от человека, у которого 5А: я начинал за месяц, но ботал по одному билету или по 0, в результате чего я начал забывать билеты к сессии, поэтому пришлось в конце ботать всё сразу. Именно поэтому рекомендую сначала во всём разобраться и прочитать как можно больше всего, а потом уже всё повторить. Желательно пару раз, чтобы всё осталость в голове. Могу сказать, что ВСЕ контроллеры можно заботать за 2 дня. А вот в остальном придётся разбираться и запоминать. Рекомендую конспектировать все важные моменты билетов. Удачи!)

## БД

#### > За лабами и доп.материалами советую всегда обращаться в [сборник полезных источников](#сборник-полезных-источников) <

- [Памятка/шпаргалка по SQL](https://habr.com/ru/post/564390/#что-такое-sql)

<a id="бд-экз"></a>

- [Экзамен](https://docs.google.com/document/d/1VlCpJtjxr4mZcazKUanbjqBC2RfhEM9D/edit) + [Пример решения](https://miro.com/app/board/uXjVM7mDWzg=/)

## Дискретная математика (базовая)

#### > За лабами и доп.материалами советую всегда обращаться в [сборник полезных источников](#сборник-полезных-источников) <

- [Генератор 4 и 6 дз по дискретке 2 сем](https://band-of-four.github.io/discrete-math-homework-second-term/#/4)
- [Какой-никакой сборник домашек (пока только 2 сем)](https://github.com/Imtjl/Discrete-math)

<a id="дискра-автомат"></a>

#### Автомат
- `1 сем`: сдаём все домашки и обе части курсача, из сборника домашек выше и получаем зачёт
- `2 сем`: сдаём все домашки и курсач, за 1 курс ставится `средняя арифметическая ВСЕХ оценок за прошедшие кр (1 + 2 семестры)`

<a id="дискра-материалы"></a>

#### Официальные материалы лежат в учебной документации ИСУ

- ИСУ ИТМО -> Учебный процесс -> [Учебная документация](https://isu.ifmo.ru/pls/apex/f?p=2143:6:117252886124089::NO:RP:)

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
- DecafMango
- Zerumi
- TsenekovIT
- maxbarsukov
- owl from hogvarts
- Black Rider
