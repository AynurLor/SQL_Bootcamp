-- 1 сессия выполняется по схеме D08_11 в режиме транзакции для обеих Сессий

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select sum(rating) from pizzeria;
select sum(rating) from pizzeria;
commit;
select sum(rating) from pizzeria;

-- 2 сессия выполняется по схеме D08_11 в режиме транзакции для обеих Сессий

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
update pizzeria set rating = 5 where id = 1;
commit;
select sum(rating) from pizzeria;