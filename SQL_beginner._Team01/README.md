# Командный проек 01

## Упражнение 00

Определение таблицы `User` (в базе данных Green Source):

| Column Name | Description |
| ------ | ------ |
| ID | Первичный ключ |
| name | Имя пользователя |
| Фамилия | Имя | Фамилия пользователя

Определение таблицы `Currency` (в базе данных Red Source):

| Column Name | Description |
| ------ | ------ |
| ID | Первичный ключ |
| name | Название валюты |
| rate_to_usd | Соотношение к валюте USD |.

Определение таблицы `Balance` (в базе данных Blue Source):

| Column Name | Description |
| ------ | ------ |
| user_id | "Виртуальный внешний ключ" к таблице User из другого источника |
| money | Сумма денег |
| type | Тип баланса (может быть 0,1,...)|
| currency_id | "Виртуальный внешний ключ" к таблице Currency из другого источника | |

Зеленая, красная и синяя базы данных являются независимыми источниками данных и удовлетворяют шаблону микросервиса. Это означает, что существует высокий риск аномалий данных (представленных ниже).
- Таблицы не согласованы с данными. Это означает, что есть Пользователь, но нет строк в таблице Баланс, или наоборот, есть Баланс, но нет строк в таблице Пользователь. Такая же ситуация между таблицами Currency и Balance. (другими словами, между ними не существует явных внешних ключей).
- Возможные значения NULL для name и lastname в таблице User
- Все таблицы работают под OLTP (OnLine Transactional Processing) SQL трафиком. Это означает, что существует актуальное состояние данных в один момент времени, исторические изменения не сохраняются для каждой таблицы.

Эти 3 перечисленные таблицы являются источниками данных для таблиц с аналогичными моделями данных в области DWH.

Определение таблицы `User` (в базе данных DWH):

| Column Name | Description |
| ------ | ------ |
| ID | Первичный ключ |
| name | Имя пользователя |
| Фамилия | Имя | Фамилия пользователя

Определение таблицы `Currency` (в базе данных DWH):

| Column Name | Description |
| ------ | ------ |
| ID | Имитированный первичный ключ |
| имя | Название валюты |
| rate_to_usd | Отношение к валюте USD | rate_to_usd | Rate_to_usd | Rate_to_usd | Ratio to USD
| обновлено | Временная метка события из исходной базы данных |

Имитированный первичный ключ" означает, что существуют дубликаты с одинаковым ID, потому что был добавлен новый обновленный атрибут, который преобразует нашу реляционную модель в временную реляционную модель. 

Пожалуйста, посмотрите на образец данных для валюты "EUR" ниже.
Этот образец основан на SQL-запросе

    SELECT *
    FROM Валюта
    WHERE name = 'EUR'
    ORDER BY updated DESC;

| ID | name | rate_to_usd | updated |
| ------ | ------ | ------ | ------ |
| 100 | EUR | 0.9 | 03.03.2022 13:31 | |
| 100 | EUR | 0.89 | 02.03.2022 12:31 | |
| 100 | EUR | 0,87 | 02.03.2022 08:00 | | 100 | EUR | 0,87 | 02.03.2022 08:00 |
| 100 | EUR | 0.9 | 01.03.2022 15:36 | | 100 | EUR | 0.9 | 01.03.2022 15:36 | ...
| ... | ... | ... | ... |

Определение таблицы `Баланс` (в базе данных DWH):

| Column Name | Description |
| ------ | ------ |
| user_id | "Виртуальный внешний ключ" к таблице User из другого источника |
| money | Сумма денег |
| type | Тип баланса (может быть 0,1,...)|
| currency_id | "Виртуальный внешний ключ" к таблице Currency из другого источника | |
| updated | Временная метка события из исходной базы данных |

Пожалуйста, посмотрите на пример данных ниже.
Этот пример основан на операторе SQL

    SELECT *
    FROM Баланс
    WHERE user_id = 103
    ORDER BY type, updated DESC;

| user_id | money | type | currency_id | updated |
| ------ | ------ | ------ | ------ | ------ |
| 103 | 200 | 0 | 100 | 03.03.2022 12:31 |
| 103 | 150 | 0 | 100 | 02.03.2022 11:29 |
| 103 | 15 | 0 | 100 | 03.03.2022 08:00 |
| 103 | -100 | 1 | 102 | 01.03.2022 15:36 |
| 103 | 2000 | 1 | 102 | 12.12.2021 15:36 |
| ... | ... | ... | ... |... |

Все таблицы в DWH наследуют все аномалии и от исходных таблиц.
- Таблицы не находятся в состоянии согласованности данных. 
- Возможные значения NULL для name и lastname в таблице User

Напишите, пожалуйста, SQL-запрос, который возвращает общий объем (сумму всех денег) транзакций с баланса пользователя, агрегированных по пользователю и типу баланса. Обратите внимание, что должны быть обработаны все данные, включая данные с аномалиями. Ниже представлена таблица столбцов результата и соответствующая формула расчета.


## Упражнение 01 

Напишите, пожалуйста, SQL-запрос, который возвращает всех пользователей, все транзакции баланса (в этой задаче, пожалуйста, игнорируйте валюты, которые не имеют ключа в таблице `Currency`) с названием валюты и рассчитанным значением валюты в USD за ближайший день.