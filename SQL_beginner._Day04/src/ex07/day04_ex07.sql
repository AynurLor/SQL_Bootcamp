WITH name_pers as (select id
				from person
				where name = 'Dmitriy'),
     piz_vis as (
             select pizzeria.id
					   from person_visits
					   join pizzeria
					   ON person_visits.pizzeria_id = pizzeria.id
					   join name_pers
					   ON person_visits.person_id = name_pers.id where visit_date = '2022-01-08'),
    count_pizz as (select pizzeria.id
					  	from pizzeria
					  	join menu on pizzeria.id = menu.pizzeria_id
					  	where price < 800)

insert into person_visits (id, person_id, pizzeria_id, visit_date)
values ((select (max(id) + 1) from person_visits),
        (select id from person where name = 'Dmitriy'),
        (select * from count_pizz where count_pizz.id not in (select * from piz_vis) limit 1),
        '2022-01-08'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
select * from mv_dmitriy_visits_and_eats;

-- delete from person_visits
-- where person_visits.id = 21

