SELECT
    AVG(sum_price) AS "AVG(tbl.sum_price)"
FROM (
    SELECT
        user_id
        , SUM(price) AS sum_price
    FROM receipt_item
    GROUP BY user_id
) AS tbl;
/*
 AVG(tbl.sum_price)  
---------------------
 173798.402985074627
(1 row)
*/