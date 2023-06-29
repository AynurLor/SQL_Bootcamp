select mn.pizza_name as pizza_name, p.name as pizzeria_name
from person_order ps
         join menu mn on mn.id = ps.menu_id
         join pizzeria p on mn.pizzeria_id = p.id
where person_id = 1
   or person_id = 4
order by pizza_name, pizzeria_name

