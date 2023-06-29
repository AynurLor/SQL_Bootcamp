--
-- with t1 as (select distinct pizza_name, price, pizzeria_id from menu),
--      t2 as (select distinct pizza_name, price, pizzeria_id from menu)
--
-- select distinct t1.pizza_name,
--                 (select distinct pizzeria.name from pizzeria where t1.pizzeria_id = pizzeria.id) as pizzeria_name_1,
--                 (select distinct pizzeria.name from pizzeria where t2.pizzeria_id = pizzeria.id) as pizzeria_name_2,
--                 t1.price from t1, t2, menu mn
-- join pizzeria p on mn.pizzeria_id = p.id
-- where t1.price = t2.price and t1.pizzeria_id > t2.pizzeria_id and t1.pizza_name = t2.pizza_name order by 1

select menu_1.pizza_name, pizz_1.name as pizzeria_name_1, pizz_2.name as pizzeria_name_2, menu_1.price
from menu as menu_1
         inner join menu as menu_2 on menu_1.price = menu_2.price and menu_1.pizza_name = menu_2.pizza_name and
                                      menu_1.pizzeria_id > menu_2.pizzeria_id
         inner join pizzeria pizz_1 on menu_1.pizzeria_id = pizz_1.id
         inner join pizzeria pizz_2 on menu_2.pizzeria_id = pizz_2.id
