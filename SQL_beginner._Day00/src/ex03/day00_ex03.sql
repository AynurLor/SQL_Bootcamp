SELECT DISTINCT person_id
-- 	(SELECT name FROM person
-- 	WHERE id=person_visits.person_id) AS NAME
FROM person_visits
	WHERE (visit_date BETWEEN '2022-01-06' AND '2022-01-09') OR pizzeria_id IN (2)
ORDER BY person_id DESC;
