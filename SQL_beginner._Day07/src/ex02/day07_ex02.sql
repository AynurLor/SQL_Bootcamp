(select p.name, count(*) as count, 'visit' as action_type
from person_visits
left join pizzeria p on p.id = person_visits.pizzeria_id
group by name
order by action_type asc, count desc
limit 3)
union all
(select pizzeria.name, count(*) as count, 'order' as action_type
from person_order
left join menu on menu.id = person_order.menu_id
left join pizzeria on menu.pizzeria_id = pizzeria.id
group by name
order by action_type asc, count desc
limit 3)
order by action_type asc, count desc;
