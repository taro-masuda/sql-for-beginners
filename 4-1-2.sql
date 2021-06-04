SELECT
    user_id
    , price
    , (SELECT STDDEV_POP(price) FROM receipt_item) AS stddev_price
FROM
    receipt_item
ORDER BY
    user_id
LIMIT
    5;
/*
     user_id     | price |   stddev_price   
-----------------+-------+------------------
 1               |   200 | 377.611184854868
 1               |   100 | 377.611184854868
 1               |   300 | 377.611184854868
 1               |   350 | 377.611184854868
 1               |   100 | 377.611184854868
(5 rows)
*/