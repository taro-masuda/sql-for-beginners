SELECT 
    receipt_id
    , MAX(price) AS max_price
FROM
    receipt_item
WHERE 
    price >= 0
GROUP BY
    receipt_id
HAVING
    MAX(price) >= 1000
ORDER BY
    receipt_id
LIMIT
    5;
/*
 receipt_id | max_price 
------------+-----------
          1 |      1000
          2 |      2000
          5 |      1000
          6 |      1000
          8 |      1000
(5 rows)
*/