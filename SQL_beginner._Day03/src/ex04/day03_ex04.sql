with vis_fem as (
    select p.name as pizzeria_name, p.id as idd
    from menu
             join person_order po on menu.id = po.menu_id
             join pizzeria p on p.id = menu.pizzeria_id
             join person p2 on po.person_id = p2.id
            where gender = 'female'),
    vis_male as (
    select p.name as pizzeria_name, p.id as idd
    from menu
             join person_order po on menu.id = po.menu_id
             join pizzeria p on p.id = menu.pizzeria_id
             join person p2 on po.person_id = p2.id
            where gender = 'male'),
    dif_fem as (select distinct vis_fem.pizzeria_name
         from vis_fem
        left join vis_male on vis_male.idd = vis_fem.idd
        where vis_male.idd is null),
    dif_male as (select distinct vis_male.pizzeria_name
         from vis_male
        left join vis_fem on vis_male.idd = vis_fem.idd
        where vis_fem.idd is null)

select dif_fem.pizzeria_name from dif_fem
union
select dif_male.pizzeria_name from dif_male



