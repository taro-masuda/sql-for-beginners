SELECT 
    COUNT (receipt_id) AS r_id
    , COUNT (DISTINCT receipt_id) AS distinct_r_id
FROM
    receipt_item;
/*
  r_id  | distinct_r_id 
--------+---------------
 331698 |         82798
(1 row)
*/