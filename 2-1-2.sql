SELECT 
    id
    , user_id
    , receipt_id
    , price 
FROM
    receipt_item
LIMIT
    2;
/*
       id        |     user_id     |   receipt_id    | price 
-----------------+-----------------+-----------------+-------
 1               | 2               | 1               |   100
 2               | 2               | 1               |  1000
(2 rows)
*/