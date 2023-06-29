drop view if exists v_price_with_discount,
            v_symmetric_union,
            v_generated_dates,
            v_persons_female,
            v_persons_male;

drop MATERIALIZED view if exists
mv_dmitriy_visits_and_eats;