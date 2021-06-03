SELECT
    COUNT (*)
FROM
    "user"
WHERE
    gender = 2
    AND state_code IN ('13', '27');
/*
 count 
-------
    29
(1 row)
*/