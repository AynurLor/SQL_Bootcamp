create
or replace function fnc_person_visits_and_eats_on_date(in pperson varchar default 'Dmitriy',
                                                       in pprice integer default 500,
                                                       in pdate date DEFAULT '2022-01-08')
    returns varchar
as
    $$
        declare
            pizzeria_name varchar;
            begin
                select pz.name
                into pizzeria_name
                from pizzeria pz
                         join person_visits pv on pv.pizzeria_id = pz.id
                         join person p on p.id = pv.person_id
                         join menu m on m.pizzeria_id = pz.id
                         join person_order on p.id = person_order.id
                where m.price < pprice
                  and p.name in (pperson)
                  and pv.visit_date in (pdate) and person_order.order_date  in (pdate);
                return pizzeria_name;
            end;
    $$
language plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');


    select *
from fnc_person_visits_and_eats_on_date(pprice := 800);