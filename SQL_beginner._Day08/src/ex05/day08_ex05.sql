-- 1 сессия выполняется по схеме D08_10 в режиме транзакции для обеих Сессий

BEGIN TRANSACTION;
select sum(rating) from pizzeria;
select sum(rating) from pizzeria;
commit;
select sum(rating) from pizzeria;

-- 2 сессия выполняется по схеме D08_10 в режиме транзакции для обеих Сессий

BEGIN TRANSACTION;
update pizzeria set rating = 1 where id = 1;
commit;
select sum(rating) from pizzeria;