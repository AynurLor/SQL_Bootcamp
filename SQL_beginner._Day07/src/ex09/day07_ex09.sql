with
    sel as (
        select address,
       round(max(age)::dec -  min(age)::dec / max(age)::dec, 2) as formula,
       round(AVG(age), 2) as average
        from person
        group by 1
    )
select address, formula, average,
       case
            when formula > average then 'true'
            else 'false'
       end comparison
from sel
order by 1
