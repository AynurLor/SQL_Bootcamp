create index if not exists idx_person_name on person (upper(name));
SET enable_seqscan = OFF;
EXPLAIN ANALYZE

select * from person where upper(name) = upper('Kate')