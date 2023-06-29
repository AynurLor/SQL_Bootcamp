-- 1. Начинаю новую транзакцию, обновляю рейтинг,
-- фикс. измин в транзакции
begin;
update pizzeria set rating = 5 where id = 1;
select * from pizzeria where id = 1;
commit;

-- 2 рейтинг = 4,6
select * from pizzeria where id = 1;
-- после коммита рейтинг = 5
select * from pizzeria where id = 1;



