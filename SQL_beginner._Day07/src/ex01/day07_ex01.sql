select pp.name , count(*) as count_of_visits from person_visits
left join person pp on pp.id = person_visits.person_id
group by 1
order by 2 desc, 1 asc
limit 4;



