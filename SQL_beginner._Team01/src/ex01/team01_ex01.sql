WITH t1 AS (SELECT max(c.updated) AS last_cur_u, b.money, b.user_id, b.type, max(b.updated) AS last_bal_u, b.currency_id
            FROM currency c
                     JOIN balance b ON c.id = b.currency_id AND c.updated <= b.updated
            GROUP BY b.money, b.user_id, b.type, b.currency_id),
     t2 AS (SELECT min(c.updated) AS last_cur_u, b.money, b.user_id, b.type, max(b.updated) AS last_bal_u, b.currency_id
            FROM currency c
                     JOIN balance b ON c.id = b.currency_id AND c.updated > b.updated
            GROUP BY b.money, b.user_id, b.type, b.currency_id),
     new_t2 AS
         (SELECT money, user_id, type, currency_id
          FROM t2
          except
          SELECT money, user_id, type, currency_id
          FROM t1),
     res AS (SELECT new_t2.money, new_t2.user_id, new_t2.type, t2.last_cur_u, t2.last_bal_u, t2.currency_id
             FROM new_t2
                      JOIN t2 ON t2.money = new_t2.money AND t2.type = new_t2.type AND t2.user_id = new_t2.user_id
             UNION
             SELECT money, user_id, type, last_cur_u, lASt_bal_u, currency_id
             FROM t1
             ORDER BY last_cur_u DESC, last_bal_u DESC)
SELECT coalesce(u.name, 'not defined')     AS name,
       coalesce(u.lastname, 'not defined') AS lastname,
       c2.name                             AS currency_name,
       c2.rate_to_usd * money              AS currency_in_usd
FROM res
         LEFT JOIN currency c2 ON res.last_cur_u = c2.updated AND res.currency_id = c2.id
         LEFT JOIN "user" u ON user_id = u.id
ORDER BY 1 DESC, 2, 3;