SELECT DISTINCT pizza_name AS pizza_name
FROM menu
UNION
SELECT pizza_name FROM menu
 ORDER BY pizza_name DESC
