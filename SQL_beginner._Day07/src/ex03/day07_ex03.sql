with visit_table as ((select p.name as name, count(person_id) as count, 'visit' as action_type
                      from person_visits
                               inner join pizzeria p on p.id = person_visits.pizzeria_id
                      group by name
                      order by action_type asc, count desc)
                     union all
                     (select pizzeria.name as name, count(person_id) as count, 'order' as action_type
                      from person_order
                               inner join menu on menu.id = person_order.menu_id
                               inner join pizzeria on menu.pizzeria_id = pizzeria.id
                      group by name
                      order by action_type asc, count desc))

select name, sum(count) as total_count from visit_table
group by 1
order by 2 desc



