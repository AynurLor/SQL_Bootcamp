WITH all_id AS (SELECT COUNT(DISTINCT person_id) FROM person_order),
     all_mx AS (SELECT MAX(id) + (SELECT * FROM all_id) FROM person_order)

INSERT
INTO person_order
    (SELECT generate_series((SELECT MAX(id) + 1 FROM person_order),
                            (SELECT * FROM all_mx)),
            generate_series(1, (SELECT * FROM all_id)),
menu.id, '2022-02-25' AS order_date
FROM menu
WHERE pizza_name = 'greek pizza');

-- DELETE FROM person_order WHERE id > 20;

