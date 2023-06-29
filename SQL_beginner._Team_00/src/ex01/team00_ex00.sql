WITH RECURSIVE
    cost AS (
        SELECT ways.node1 AS tour,
               ways.node1,
               ways.node2,
               ways.cost,
               ways.cost  AS summ
        FROM ways
        WHERE ways.node1 = 'a'
        UNION ALL
        SELECT parrent.tour || ',' || child.node1 AS trace,
               child.node1,
               child.node2,
               parrent.cost,
               parrent.summ + child.cost          AS summ
        FROM ways AS child
                 inner JOIN cost AS parrent ON child.node1 = parrent.node2
        WHERE parrent.tour NOT LIKE '%' || child.node1 || '%'),

    all_ways as (select summ as total_cost, '{' || cost.tour || ',' || cost.node2 || '}' as tour
                 from cost
                 WHERE length(tour) = 7
                   and node2 = 'a'
                 order by summ),
    min_ways as (select * from all_ways where all_ways.total_cost in (select min(all_ways.total_cost) from all_ways)),
    max_ways as (select * from all_ways where all_ways.total_cost in (select max(all_ways.total_cost) from all_ways))

select * from min_ways
union
select * from max_ways
order by total_cost, tour