-- Без добавления индексов
drop index if exists idx_1;
set enable_seqscan = on;

explain analyze

SELECT
    m.pizza_name AS pizza_name,
    max(rating) OVER
        (PARTITION BY rating ORDER BY rating ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS k
FROM  menu m
INNER JOIN pizzeria pz ON m.pizzeria_id = pz.id
ORDER BY 1,2;


-- После добавления индексов
set enable_seqscan = off;
drop index if exists idx_1;
create index if not exists idx_1 on pizzeria (rating, name);

explain analyze

SELECT
    m.pizza_name AS pizza_name,
    max(rating) OVER
        (PARTITION BY rating ORDER BY rating ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS k
FROM  menu m
INNER JOIN pizzeria pz ON m.pizzeria_id = pz.id
ORDER BY 1,2;

