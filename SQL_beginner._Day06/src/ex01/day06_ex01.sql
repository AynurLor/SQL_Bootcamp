insert into person_discounts
select row_number() over () as id,
       person_id, pizzeria_id,
       case
           when count(*) = 1 then 10.5
            when count(*) = 2 then 22
            else 30
       end as discount
from person_order
join menu on person_order.menu_id = menu.id
join pizzeria on menu.pizzeria_id = pizzeria.id
group by 2,3
order by 1,2