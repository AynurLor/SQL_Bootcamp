select person.name, pizza_name, price, (menu.price /100 * (100 - person_discounts.discount)) as  discount_price, pizzeria.name as pizzeria_name
from person_order
join person on person.id = person_order.person_id
join menu on person_order.menu_id = menu.id
join pizzeria on menu.pizzeria_id = pizzeria.id
join person_discounts on person_discounts.person_id = person_order.person_id
order by 1,2

