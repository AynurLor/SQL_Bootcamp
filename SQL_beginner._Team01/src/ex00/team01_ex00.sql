with currency_valute as (
    SELECT c.id, c.name, MAX(c.updated) last_update FROM currency c
    GROUP BY 1, 2),
    all_valume as (select
    balance.user_id,
        case
           when u.name is null then 'not defined'
           else u.name
        end name,
        case
           when u.lastname is null then 'not defined'
           else u.lastname
        end lastname,
        balance.type as type,
        balance.money as volume,
        case
           when cv.name is null then 'not defined'
           else cv.name
        end currency_name,
        case
           when c.rate_to_usd is null then 1
           else c.rate_to_usd
        end last_rate_to_usd,
        ((case
           when c.rate_to_usd is null then 1
           else c.rate_to_usd
        end) * balance.money) as total_volume_in_usd
    from balance
    full join "user" u on u.id = balance.user_id
    full join currency_valute cv on cv.id = balance.currency_id
    full outer join currency c on c.updated = cv.last_update and c.name = cv.name
    where user_id is not null)

select name, lastname, type, sum(volume), currency_name, last_rate_to_usd, sum(total_volume_in_usd) from all_valume
GROUP BY 1, 2, 3, 5, 6
order by 1 desc, 2 asc, 3 asc
