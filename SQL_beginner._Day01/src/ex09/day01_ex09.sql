SELECT name FROM pizzeria
    WHERE name NOT IN (SELECT name FROM person_visits WHERE pizzeria_id = pizzeria.id );

SELECT name FROM pizzeria
    WHERE NOT EXISTS (SELECT * FROM person_visits WHERE pizzeria_id = pizzeria.id );