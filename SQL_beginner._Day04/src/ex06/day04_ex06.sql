create materialized view IF NOT EXISTS  mv_dmitriy_visits_and_eats as (
    select pizzeria.name as pizzeria_name
        from pizzeria
                 join person_visits pv on pizzeria.id = pv.pizzeria_id
                 join person on person.id = pv.person_id
                 join menu m on pizzeria.id = m.pizzeria_id
        where person.name = 'Dmitriy'
          and visit_date = '2022-01-08'
          and price < 800)
