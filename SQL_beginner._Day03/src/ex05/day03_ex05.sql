with visit_piz as (
    select *
    from person ps
             join person_visits on person_id = ps.id
             join pizzeria p on person_visits.pizzeria_id = p.id
    where ps.name = 'Andrey'),

     order_piz as (
         select pizzeria_id
         from person ps
                  join person_order on person_id = ps.id
                  join menu m on person_order.menu_id = m.id
         where ps.name = 'Andrey'),
     id_pizza as (select visit_piz.pizzeria_id
                  from visit_piz
                  except all
                  select pizzeria_id
                  from order_piz)
select pizzeria.name as pizzeria_name from pizzeria
join id_pizza on pizzeria_id = id;



WITH andery_visit AS (SELECT pizzeria.name AS pizzeria_name
                      FROM person_visits
                               JOIN pizzeria
                                    ON pizzeria.id = person_visits.pizzeria_id
                      WHERE person_visits.person_id = 2),

     andrey_order AS (SELECT pizzeria.name AS pizzeria_name
                      FROM person_order
                               JOIN menu
                                    ON menu.id = person_order.menu_id
                               JOIN pizzeria
                                    ON pizzeria.id = menu.pizzeria_id
                      WHERE person_order.person_id = 2)

SELECT  pizzeria_name FROM andery_visit
EXCEPT
SELECT pizzeria_name FROM andrey_order ORDER BY 1;


