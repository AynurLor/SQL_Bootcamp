select pizzeria.name, count(menu_id) as count_of_orders,
       round(sum(price)  / count(menu_id), 2) as average_price,
       max(price) as max_price,
       min(price) as min_price
from person_order
         INNER JOIN menu ON menu.id = person_order.menu_id
         INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
group by 1
order by 1