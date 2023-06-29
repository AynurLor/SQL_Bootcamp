with vis_fem as (
    select pizzeria.name as pizzeria_name
    from pizzeria
             join person_visits pv on pizzeria.id = pv.pizzeria_id
             join person p on pv.person_id = p.id
    where gender = 'female'),
     vis_male as (
         select pizzeria.name as pizzeria_name
         from pizzeria
                  join person_visits pv on pizzeria.id = pv.pizzeria_id
                  join person p on pv.person_id = p.id
         where gender = 'male'),
     dif_fem as (
         select pizzeria_name
         from vis_fem
         except all
         select pizzeria_name
         from vis_male),
     dif_mal as (
         select pizzeria_name
         from vis_male
         except all
         select pizzeria_name
         from vis_fem
     )
select pizzeria_name from dif_fem
union all
select pizzeria_name from dif_mal
order by pizzeria_name


