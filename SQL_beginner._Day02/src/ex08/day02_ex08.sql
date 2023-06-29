select person.name as name
from person
         join person_order po on person.id = po.person_id
         join menu m on m.id = po.menu_id
where address in ('Moscow', 'Samara')
  and pizza_name in ('pepperoni pizza', 'mushroom pizza')
and person.gender = 'male'
order by name desc

