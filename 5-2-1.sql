SELECT
    COUNT(*)
FROM
    "user" AS u
WHERE NOT EXISTS(
    SELECT
        1
    FROM
        receipt AS r
    WHERE
        r.user_id = u.id
);
/*
 count 
-------
   330
(1 row)
*/