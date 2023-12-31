# Day 03

## Exercise 00

Напишите SQL-запрос, который возвращает список названий пицц, цен на пиццу, названий пиццерий и дат посещения для Kate и для цен в диапазоне от 800 до 1000 рублей. Отсортируйте список по названиям пицц, ценам и пиццериям.


## Упражнение 01

Пожалуйста, найдите все идентификаторы меню, которые никем не упорядочены. Результат должен быть отсортирован по идентификаторам.


## Упражнение 02 

Пожалуйста, используйте SQL оператор из упражнения #01 и покажите названия пицц из пиццерии, которые никто не заказывал, включая также соответствующие цены. Результат должен быть отсортирован по названию пиццы и цене. 


## Упражнение 03

Найдите объединение пиццерий, которые посещали как женщины, так и мужчины. Другими словами, вы должны найти набор названий пиццерий, которые посещали только женщины, и выполнить операцию "UNION" с набором названий пиццерий, которые посещали только мужчины. Пожалуйста, помните, что слово "только" относится к обоим полам. Для любых операторов SQL с наборами сохраняйте дубликаты (конструкции `UNION ALL`, `EXCEPT ALL`, `INTERSECT ALL`). Пожалуйста, отсортируйте результат по названию пиццерии.


## Упражнение 04

Найдите, пожалуйста, объединение пиццерий, в которых заказы принимают либо от женщин, либо от мужчин. Другими словами, вы должны найти набор пиццерий, названия которых заказывали только женщины, и выполнить операцию "UNION" с набором пиццерий, названия которых заказывали только мужчины. Пожалуйста, помните, что слово "только" относится к обоим полам. Для любых операторов SQL с множествами не сохраняйте дубликаты (`UNION`, `EXCEPT`, `INTERSECT`).  Пожалуйста, отсортируйте результат по названию пиццерии.


## Упражнение 05

Напишите SQL-запрос, который возвращает список пиццерий, которые посетил Андрей, но не сделал ни одного заказа. Пожалуйста, делайте заказы по названию пиццерии.


## Упражнение 06

Пожалуйста, найдите одинаковые названия пиццы, которые имеют одинаковую цену, но из разных пиццерий. Убедитесь, что результат упорядочен по названию пиццы.



## Упражнение 07

Зарегистрируйте новую пиццу с названием "Греческая пицца" (use id = 19) по цене 800 рублей в ресторане "Domino's" (pizzeria_id = 2).
**Предупреждение**: это упражнение, вероятно, станет причиной изменения данных неправильным образом. На самом деле, вы можете восстановить исходную модель базы данных с данными по ссылке в разделе "Правила дня".


## Упражнение 08

Зарегистрируйте новую пиццу с названием "сицилийская пицца" (id которой должен быть вычислен по формуле "максимальное значение id + 1") по цене 900 рублей в ресторане "Domino's" (для получения идентификатора пиццерии используйте внутренний запрос).
**Предупреждение**: это упражнение, вероятно, станет причиной изменения данных неправильным образом. На самом деле, вы можете восстановить исходную модель базы данных с данными по ссылке в разделе "Правила дня" и воспроизвести сценарий из упражнения 07.


## Упражнение 09

Пожалуйста, зарегистрируйте новые посещения в ресторан Domino's от Дениса и Ирины 24 февраля 2022 года.
**Предупреждение**: это упражнение, вероятно, станет причиной изменения данных неправильным образом. На самом деле, вы можете восстановить исходную модель базы данных с данными по ссылке в разделе "Правила дня" и воспроизвести сценарий из упражнений 07 и 08...


## Упражнение 10

Пожалуйста, зарегистрируйте новые заказы от Дениса и Ирины от 24 февраля 2022 года на новое меню с "сицилийской пиццей".
**Предупреждение**: это упражнение, вероятно, станет причиной изменения данных неправильным образом. На самом деле, вы можете восстановить исходную модель базы данных с данными по ссылке в разделе "Правила дня" и воспроизвести сценарий из упражнений 07, 08 и 09.



