-- 1 сессия выполняется по схеме D08_12 в режиме транзакции для обеих Сессий

BEGIN TRANSACTION;
update pizzeria set rating = 1 where id = 1;
update pizzeria set rating = 4 where id = 2;
commit;
select * from pizzeria;

-- 2 сессия выполняется по схеме D08_12 в режиме транзакции для обеих Сессий

BEGIN TRANSACTION;
update pizzeria set rating = 5 where id = 2;
update pizzeria set rating = 2 where id = 1;
commit;
select * from pizzeria;