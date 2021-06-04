SELECT
    id
    , create_date
    , CAST(create_date AS DATE) as cast_create_date
FROM 
    "user"
ORDER BY
    id
LIMIT
    5;
/*
 id |     create_date     | cast_create_date 
----+---------------------+------------------
  1 | 2010-01-05 21:51:02 | 2010-01-05
  2 | 2010-01-14 20:55:48 | 2010-01-14
  3 | 2010-01-19 08:14:53 | 2010-01-19
  4 | 2010-01-22 11:22:08 | 2010-01-22
  5 | 2010-01-23 15:11:11 | 2010-01-23
*/