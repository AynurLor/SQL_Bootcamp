create view v_generated_dates (generated_date)
as
(SELECT gs::date as missing_date
FROM generate_series('2022-01-01', '2022-01-31', '1 DAY'::interval) as gs
order by missing_date)