create index if not exists idx_person_order_multi on person_order(person_id, menu_id);

SET enable_seqscan = OFF;
EXPLAIN ANALYZE

SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;