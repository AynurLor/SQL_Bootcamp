
set enable_seqscan = off;
set enable_nestloop = off;
EXPLAIN ANALYZE


select pizza_name, name from menu
left join pizzeria on pizzeria.id = menu.pizzeria_id