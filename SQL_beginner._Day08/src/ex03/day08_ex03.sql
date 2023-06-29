-- 1 сессия выполняется по схеме D08_08
begin TRANSACTION;
select * from pizzeria where id = 1;
select * from pizzeria where id = 1;
commit;
select * from pizzeria where id = 1;


-- 2 сессия выполняется по схеме D08_08
begin TRANSACTION;
update pizzeria set rating = 3.6 where id = 1;
commit;
select * from pizzeria where id = 1;

