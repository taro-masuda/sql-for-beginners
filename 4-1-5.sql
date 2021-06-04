WITH tbl AS (
    SELECT
        user_id
        , COUNT(DISTINCT receipt_id) AS receipt_count
    FROM 
        receipt_item
    GROUP BY user_id
)
SELECT
    AVG(receipt_count) AS "AVG(receipt_count)"
FROM
    tbl;
/*
  AVG(receipt_count)  
----------------------
 123.5791044776119403
(1 row)

*/