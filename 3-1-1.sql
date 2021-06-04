SELECT
    SUM(
        CASE WHEN state_code = '27' THEN 1
            ELSE 0
        END
    ) AS sum_osaka
FROM
    "user";
/*
 sum_osaka 
-----------
        31
(1 row)
*/