create or replace function fnc_fibonacci(pstop integer default 10)
    returns SETOF integer
as
    $$
        with recursive fibonacci(a, b) as (
                values (0, 1)
            union all
                select b, a + b from fibonacci
                where b < pstop
        )
        select a from fibonacci;
    $$
language sql;


SELECT * FROM fnc_fibonacci(100);
SELECT * FROM fnc_fibonacci(5);