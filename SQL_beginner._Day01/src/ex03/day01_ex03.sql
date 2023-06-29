SELECT order_date AS action_date, person_id AS person_id FROM person_order
INTERSECT ALL
SELECT visit_date, person_id FROM person_visits
ORDER BY action_date ASC, person_id DESC