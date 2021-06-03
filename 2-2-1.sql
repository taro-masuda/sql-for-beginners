SELECT 
    birthday, gender
FROM
    "user"
WHERE
    birthday >= '2006-01-01'
ORDER BY
    birthday
LIMIT
    5;
/*
  birthday  | gender 
------------+--------
 2006-03-24 | 2
 2006-03-31 | 1
 2006-09-16 | 2
 2007-05-13 | 2
 2007-05-18 | 2
(5 rows)
*/