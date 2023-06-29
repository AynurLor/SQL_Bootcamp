select pp.name , count(person_id) as count_of_visits from person_visits
left join person pp on pp.id = person_visits.person_id
-- where count_of_visits > 3
group by 1 HAVING COUNT(person_id) > 3
order by 2 desc, 1 asc;

