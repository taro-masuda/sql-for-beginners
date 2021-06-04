SELECT
    gender,
    COUNT(id)
FROM 
    "user"
WHERE 
    id IN (SELECT DISTINCT user_id
        FROM receipt_item
        WHERE name = 'カップラーメンA'
    )   
GROUP BY 
    gender
ORDER BY
    gender;
/*
 gender | count 
--------+-------
      1 |   196
      2 |   210
(2 rows)
*/