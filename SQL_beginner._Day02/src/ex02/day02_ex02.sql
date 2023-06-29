select coalesce(person.name, '-')   AS person_name,
       pv.visit_date                AS visit_date,
       coalesce(pizzeria.name, '-') as pizzeria_name
from person
         full join (select * from person_visits where visit_date between '2022-01-01' and '2022-01-3') pv
                   on person.id = pv.person_id
         full join pizzeria on pizzeria.id = pv.pizzeria_id
ORDER BY person_name, visit_date, pizzeria_name
