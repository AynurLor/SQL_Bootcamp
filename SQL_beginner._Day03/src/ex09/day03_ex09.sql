INSERT INTO person_visits
(id, person_id, pizzeria_id, visit_date)
VALUES
((select (max(id) + 1) from person_visits),
 (select id from person where name = 'Denis'), 2, '2022-02-24'),
((select (max(id) + 2) from person_visits),
 (select id from person where name = 'Irina'), 2, '2022-02-24')


-- delete from person_visits
-- where person_visits.id = 20 OR person_visits.id = 21