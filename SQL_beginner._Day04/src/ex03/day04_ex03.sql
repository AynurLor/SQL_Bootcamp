SELECT generated_date as missing_date
FROM v_generated_dates as gs
         left join person_visits as vs
                   on vs.visit_date = generated_date
Where vs is null;


