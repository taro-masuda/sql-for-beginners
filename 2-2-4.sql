SELECT
    id, user_id, paid_at
FROM
    receipt
WHERE
    paid_at BETWEEN '2010-01-01' AND '2010-12-31'
ORDER BY
    paid_at
LIMIT
    5;
/*
       id        |     user_id     |  paid_at   
-----------------+-----------------+------------
 1               | 2               | 2010-01-22
 2               | 5               | 2010-01-23
 6               | 4               | 2010-01-24
 4               | 4               | 2010-01-24
 3               | 4               | 2010-01-25
(5 rows)
*/