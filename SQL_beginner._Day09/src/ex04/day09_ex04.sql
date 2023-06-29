create or replace function fnc_persons_male()
returns table (id bigint, name varchar, age integer, gender varchar, address varchar)
as
    $$
        select *
        from person p
        where p.gender = 'male';
    $$ language sql;

create or replace function fnc_persons_female()
returns table (id bigint, name varchar, age integer, gender varchar, address varchar)
as
    $$
        select * from person p
        where p.gender = 'female';
    $$ language sql;

SELECT * FROM fnc_persons_female();
SELECT * FROM fnc_persons_male();
