SELECT
    id
    , last_login
    , SUBSTRING(CAST(last_login AS VARCHAR(20)), 6, 2) AS last_login_month
FROM 
    "user"
ORDER BY
    id
LIMIT
    5;
/*
 id |     last_login      | last_login_month 
----+---------------------+------------------
  1 | 2014-03-11 09:11:38 | 03
  2 | 2010-06-23 11:40:23 | 06
  3 | 2015-08-17 01:20:42 | 08
  4 | 2014-09-11 19:41:23 | 09
  5 | 2013-01-28 11:26:13 | 01
(5 rows)
*/