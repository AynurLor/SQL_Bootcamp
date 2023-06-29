select m.pizza_name as pizza_name, price as price, p.name as pizzeria_name, visit_date as visit_date
from menu m
         join pizzeria p on m.pizzeria_id = p.id
         join person_visits pv on p.id = pv.pizzeria_id
where pv.person_id = 3
and price >= 800 AND price < 1000
order by pizza_name, price, pizzeria_name;