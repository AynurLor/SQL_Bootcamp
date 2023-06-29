SELECT vt.order_date,
       CONCAT(name, ' (age:', age, ')') AS person_infromation
FROM (SELECT person_id AS id, order_date FROM person_order) AS vt
RIGHT JOIN person
ON vt.id=person.id
ORDER BY order_date, person_infromation
