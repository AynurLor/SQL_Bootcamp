with pn as (select * from menu where (pizza_name = 'mushroom pizza' or pizza_name = 'pepperoni pizza'))
select pn.pizza_name as pizza_name, p.name as pizzeria_name, price as price
FROM pn
         left join pizzeria p on pn.pizzeria_id = p.id
order by pizza_name, pizzeria_name