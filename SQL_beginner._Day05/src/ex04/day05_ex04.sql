create unique index if not exists idx_menu_unique on menu(pizzeria_id, pizza_name);

set enable_seqscan = off;
explain analyze
-- EXPLAIN ANALYZE

select * from menu where pizzeria_id < 20 and pizza_name = 'cheese pizza'