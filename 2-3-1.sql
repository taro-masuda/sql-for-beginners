SELECT
    receipt_id, MIN(price) AS min_price
FROM
    receipt_item
GROUP BY
    receipt_id
ORDER BY
    receipt_id
LIMIT
    5;
/*
 receipt_id | min_price 
------------+-----------
          1 |       100
          2 |       700
          3 |       100
          4 |       100
          5 |       100
(5 rows)
*/