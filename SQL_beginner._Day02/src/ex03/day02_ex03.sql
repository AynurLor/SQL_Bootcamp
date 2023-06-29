WITH dt AS (SELECT gs::date as missing_date
            FROM generate_series('2022-01-01'::timestamp, '2022-01-10'::timestamp, '1 DAY'::interval) as gs)
SELECT dt.missing_date
FROM dt
         left join
     (select visit_date
      from person_visits
      where (person_visits.visit_date between '2022-01-01' and '2022-01-10')
        and person_visits.person_id between 1 and 2) as vs
     on vs.visit_date = dt.missing_date
Where vs is null