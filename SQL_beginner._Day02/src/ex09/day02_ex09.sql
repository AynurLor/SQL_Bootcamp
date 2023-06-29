with pers1 as (
    select m.pizza_name AS pizza_name, p.name AS pzname, person.name
    from person
             join person_order po on person.id = po.person_id
--              join person_visits pv on person.id = pv.person_id
             join menu m on m.id = po.menu_id
             join pizzeria p on p.id = m.pizzeria_id)

select name
    from pers1
    where pizza_name = 'cheese pizza' and name in (select name from pers1 where pizza_name = 'pepperoni pizza')
