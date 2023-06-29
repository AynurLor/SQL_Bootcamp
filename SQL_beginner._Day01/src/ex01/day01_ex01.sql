SELECT pizza_name AS object_name FROM menu
UNION ALL
SELECT name FROM person
ORDER BY object_name