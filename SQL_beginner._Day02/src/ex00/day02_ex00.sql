SELECT name, rating
FROM pizzeria
         left outer join person_visits pv on pizzeria.id = pv.pizzeria_id
WHERE pv.id is null
