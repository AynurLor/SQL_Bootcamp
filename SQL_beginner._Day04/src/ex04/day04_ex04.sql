create or replace view v_symmetric_union (person_id) as
(
with R as (select * from person_visits where visit_date = '2022-01-02'),
     S as (select * from person_visits where visit_date = '2022-01-06'),
     R_S as (select * from R except all select * from S),
     S_R as (select * from S except all select * from R)
select person_id
from R_S
union
select person_id
from S_R
order by person_id
)