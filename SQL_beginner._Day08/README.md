# День 08

## Упражнение 00 

Пожалуйста, для этого задания используйте командную строку для базы данных PostgreSQL (psql). Вам нужно проверить, как ваши изменения будут опубликованы в базе данных для других пользователей базы данных. 

На самом деле, нам нужны две активные сессии (то есть 2 параллельные сессии в командной строке). 

Пожалуйста, предоставьте доказательство того, что ваша параллельная сессия не сможет увидеть ваши изменения, пока вы не сделаете `COMMIT`;


## Упражнение 01 

Пожалуйста, для этого задания используйте командную строку для базы данных PostgreSQL (psql). Вам нужно проверить, как ваши изменения будут опубликованы в базе данных для других пользователей базы данных. 

На самом деле, нам нужны две активные сессии (то есть 2 параллельные сессии в командной строке). 

Перед выполнением задания убедитесь, что в вашей базе данных установлен уровень изоляции по умолчанию. Просто выполните следующий оператор

`SHOW TRANSACTION ISOLATION LEVEL;`

и результат должен быть "read committed"


## Упражнение 02

Пожалуйста, для этого задания используйте командную строку для базы данных PostgreSQL (psql). Вам нужно проверить, как ваши изменения будут опубликованы в базе данных для других пользователей базы данных. 

На самом деле, нам нужны две активные сессии (то есть 2 параллельные сессии в командной строке).


## Упражнение 03

Вам нужно проверить, как ваши изменения будут опубликованы в базе данных для других пользователей базы данных. 

На самом деле, нам нужны две активные сессии (то есть 2 параллельные сессии в командной строке). 

| | |
| ------ | ------ |
| Давайте проверим один из известных шаблонов базы данных "Неповторяемые чтения", но на уровне изоляции `READ COMMITTED`. Вы можете увидеть графическое представление этой аномалии на рисунке. Горизонтальная красная линия означает окончательные результаты после всех последовательных шагов для обеих сессий. 

Пожалуйста, проверьте рейтинг для "Pizza Hut" в режиме транзакции для обеих сессий и после этого сделайте `UPDATE` рейтинга до значения 3.6 в сессии #2 (в том же порядке, что и на рисунке). 


## Упражнение 04 

Пожалуйста, для этого задания используйте командную строку для базы данных PostgreSQL (psql). Вам нужно проверить, как ваши изменения будут опубликованы в базе данных для других пользователей базы данных. 

На самом деле, нам нужны две активные сессии (то есть 2 параллельные сессии в командной строке).


## Упражнение 05

Вам нужно проверить, как ваши изменения будут опубликованы в базе данных для других пользователей базы данных. 

На самом деле, нам нужны две активные сессии (то есть 2 параллельные сессии в командной строке).

| | |
| ------ | ------ |
| Давайте проверим один из известных паттернов базы данных "Phantom Reads", но на уровне изоляции `READ COMMITTED`. Графическое представление этой аномалии вы можете увидеть на рисунке. Горизонтальная красная линия означает окончательные результаты после всех последовательных шагов для обеих сессий. 

Пожалуйста, суммируйте все рейтинги для всех пиццерий в транзакционном режиме для обеих сессий и после этого сделайте `UPDATE` рейтинга в 1 значение для ресторана "Pizza Hut" в сессии #2 (в том же порядке, что и на картинке). 


## Упражнение 06

Вам нужно проверить, как ваши изменения будут опубликованы в базе данных для других пользователей базы данных. 

На самом деле, нам нужны две активные сессии (то есть 2 параллельные сессии в командной строке).

| | |
| ------ | ------ |
| Давайте проверим один из известных шаблонов базы данных "Phantom Reads", но под уровнем изоляции `REPEATABLE READ`. Вы можете увидеть графическое представление этой аномалии на рисунке. Горизонтальная красная линия означает окончательные результаты после всех последовательных шагов для обеих сессий.

Пожалуйста, суммируйте все рейтинги для всех пиццерий в транзакционном режиме для обеих сессий и после этого сделайте `UPDATE` рейтинга до значения 5 для ресторана "Pizza Hut" в сессии #2 (в том же порядке, что и на картинке). 


## Упражнение 07

Пожалуйста, для этого задания используйте командную строку для базы данных PostgreSQL (psql). Вам нужно проверить, как ваши изменения будут опубликованы в базе данных для других пользователей базы данных. 

На самом деле, нам нужны две активные сессии (то есть 2 параллельные сессии в командной строке). 

Давайте воспроизведем ситуацию тупика в нашей базе данных. 




