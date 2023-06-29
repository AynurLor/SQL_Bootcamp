INSERT
INTO menu
    (id, pizzeria_id, pizza_name, price)
VALUES ((select (max(id) + 1) as idd from menu),
        (select id from pizzeria where name = 'Dominos'),
        'sicilian pizza',
        900)

-- delete from menu
-- where menu.id = 19
