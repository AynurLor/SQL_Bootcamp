create or replace view v_price_with_discount (name, pizza_name, price, discount_price) as
(
    select name, pizza_name, m.price, round(m2.price2 - 0.1 * m2.price2) as discount_price
    from person_order
             LEFT JOIN menu m on m.id = person_order.menu_id
             LEFT JOIN (select id, price as price2 from menu) as m2 on m2.id = person_order.menu_id
             left join person p on person_order.person_id = p.id
    order by name, pizza_name
)
