select ps.address, pz.name, count(pz.name) as count_of_orders from person_order po
left join person ps on po.person_id = ps.id
left join menu m on m.id = po.menu_id
left join pizzeria pz on pz.id = m.pizzeria_id
group by 2,1
order by 1, 2