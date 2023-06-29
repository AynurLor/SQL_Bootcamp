create or replace function fnc_minimum(variadic arr integer[])
    returns integer
as
    $$
        begin
            return (select min(arr[i])
            from generate_subscripts(arr, 1) g(i));
        end;
    $$
language plpgsql;

select fnc_minimum(variadic arr => array [10.0, -1.0, 5.0, 4.4]);