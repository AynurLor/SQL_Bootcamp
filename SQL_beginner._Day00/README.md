## День 00 — Piscine SQL
Реляционная модель данных и SQL
Резюме: Сегодня вы увидите, как работает реляционная модель и как получить необходимые данные на основе базовых конструкций SQL.

## Упражнение 00. Первые шаги в мир SQL
Давайте сделаем нашу первую задачу. Пожалуйста, сделайте оператор select, который возвращает все имена и возраст людей из города «Казань».

Глава V
## Упражнение 01. Первые шаги в мир SQL
Пожалуйста, сделайте оператор select, который возвращает имена и возраст для всех женщин из города «Казань». Да, и, пожалуйста, отсортируйте результат по имени.

Глава VI
## Упражнение 02. Первые шаги в мир SQL
Пожалуйста, сделайте 2 оператора выбора с разными синтаксисом, которые возвращают список пиццерий (название пиццерии и рейтинг) с рейтингом от 3,5 до 5 баллов (включая предельные баллы) и упорядоченные по рейтингу пиццерии.

1-й оператор select должен содержать знаки сравнения (<=, >=) с отсечкой 2021-09-12, 23:24:47.

## Упражнение 03 
Составьте оператор select, который возвращает идентификаторы людей (без дублирования), посетивших пиццерии в период с 6 января 2022 года по 9 января 2022 года (включая все дни) или посетивших пиццерию с идентификатором 2. Также включите условие упорядочивания по идентификатору человека в нисходящем порядке.

## Упражнение 04
Составьте оператор select, который возвращает одно вычисляемое поле с именем 'person_information' в одной строке, как описано в следующем примере:

`Анна (возраст:16,пол:'женский',адрес:'Москва')`.

Наконец, добавьте условие упорядочивания по вычисляемому столбцу в режиме возрастания.
Пожалуйста, обратите внимание на символы кавычек в вашей формуле!

## Упражнение 05

Пожалуйста, сделайте оператор select, который возвращает имена людей (на основе внутреннего запроса в пункте `SELECT`), которые сделали заказы на меню с идентификаторами 13, 14 и 18 и дата заказов должна быть равна 7 января 2022 года. Пожалуйста, перед началом работы ознакомьтесь с разделом "Отказано".

Пожалуйста, посмотрите на шаблон внутреннего запроса.

    SELECT 
        (SELECT ... ) AS NAME -- это внутренний запрос в основном предложении SELECT
    FROM ...
    WHERE ...


## Упражнение 06
Используйте конструкцию SQL из упражнения 05 и добавьте новую вычисляемую колонку (используйте имя колонки 'check_name') с оператором проверки (псевдокод для этой проверки представлен ниже) в предложении `SELECT`.

    if (имя_человека == 'Денис') then return true
        else return false
        
        
## Упражнение 07
Давайте применим интервалы данных для таблицы `person`. 
Составьте SQL-оператор, который возвращает идентификаторы человека, его имена и интервал возраста человека (задайте имя нового вычисляемого столбца как 'interval_info') на основе приведенного ниже псевдокода. 

    if (age >= 10 and age <= 20) then return 'interval #1'
    else if (age > 20 and age < 24) then return 'interval #2'
    else return 'interval #3'


## Упражнение 08
Составьте SQL-оператор, который возвращает все столбцы из таблицы `person_order` со строками, чей идентификатор является четным числом. Результат должен быть упорядочен по возвращаемому идентификатору.


## Упражнение 09
Составьте оператор select, который возвращает имена людей и названия пиццерий на основе таблицы `person_visit` с датой посещения в период с 07 января по 09 января 2022 года (включая все дни) (на основе внутреннего запроса в пункте `FROM`).
