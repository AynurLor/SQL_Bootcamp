-- 1 сессия, проверку на изоляцию транзакции, обновление рейтинга, все действия проводятся паралельно по схеме
SHOW TRANSACTION ISOLATION LEVEL REPEATABLE READ;
begin TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from pizzeria where id = 1;
update pizzeria set rating = 4 where id = 1;
commit;
select * from pizzeria where id = 1;
-- 2 сессия, проверку на изоляции, обновление рейтинга, сомит, все действия проводятся паралельно по схеме
SHOW TRANSACTION ISOLATION LEVEL REPEATABLE READ;
begin TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from pizzeria where id = 1;
update pizzeria set rating = 3,6 where id = 1;
commit;
select * from pizzeria where id = 1;