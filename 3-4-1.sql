SELECT
    id
    , birthday
    , current_date
    , CURRENT_DATE - birthday AS date_diff
FROM 
    "user"
ORDER BY
    id
LIMIT 
    5;
/*
 id |  birthday  | current_date | date_diff 
----+------------+--------------+-----------
  1 | 1983-03-09 | 2021-06-04   |     13967
  2 | 1984-01-01 | 2021-06-04   |     13669
  3 | 1989-08-20 | 2021-06-04   |     11611
  4 | 1981-02-14 | 2021-06-04   |     14720
  5 | 1982-05-15 | 2021-06-04   |     14265
(5 rows)
*/