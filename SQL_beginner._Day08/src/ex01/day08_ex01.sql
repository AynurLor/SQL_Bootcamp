-- 1 сессия, проверку на изоляции, обновление рейтинга, сомит
SHOW TRANSACTION ISOLATION LEVEL;
begin;
select * from pizzeria where id = 1;
update pizzeria set rating = 4 where id = 1;
commit;
select * from pizzeria where id = 1;
-- 2 сессия, проверку на изоляции, обновление рейтинга, сомит
SHOW TRANSACTION ISOLATION LEVEL;
begin;
select * from pizzeria where id = 1;
update pizzeria set rating = 3,6 where id = 1;
commit;
select * from pizzeria where id = 1;
