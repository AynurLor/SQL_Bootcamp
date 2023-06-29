-- 1 сессия выполняется по схеме D08_09 в режиме транзакции для обеих Сессий

BEGIN TRANSACTION ISOLATION LEVEL Serializable;
select * from pizzeria where id = 1;
select * from pizzeria where id = 1;
commit;
select * from pizzeria where id = 1;


-- 2 сессия выполняется по схеме D08_09 в режиме транзакции для обеих Сессий

BEGIN TRANSACTION ISOLATION LEVEL Serializable;
update pizzeria set rating = 3 where id = 1;
commit;
select * from pizzeria where id = 1;