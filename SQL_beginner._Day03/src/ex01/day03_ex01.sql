select m.id as menu_id from menu m
full join person_order ps on ps.menu_id = m.id
where menu_id is null
order by menu_id