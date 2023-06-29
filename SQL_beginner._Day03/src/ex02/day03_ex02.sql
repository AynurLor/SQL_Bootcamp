select pizza_name, price, p.name as pizzeria_name from menu m
full join person_order ps on ps.menu_id = m.id
full join pizzeria p on p.id = m.pizzeria_id
where menu_id is null
order by pizza_name, price