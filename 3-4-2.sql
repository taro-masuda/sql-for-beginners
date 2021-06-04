SELECT
    id
    , last_login
    , birthday,
    TRUNC( 
        (
            CAST(SUBSTRING(REPLACE( CAST(last_login AS VARCHAR(20)), '-', ''), 1, 8) AS INTEGER)
            - CAST(SUBSTRING(REPLACE( CAST(birthday AS VARCHAR(20)), '-', '') , 1, 8) AS INTEGER)
        ) / 10000
        , 0
    ) AS age_at_last_login
FROM 
    "user"
ORDER BY
    id
LIMIT
    5;
/*
 id |     last_login      |  birthday  | age_at_last_login 
----+---------------------+------------+-------------------
  1 | 2014-03-11 09:11:38 | 1983-03-09 |                31
  2 | 2010-06-23 11:40:23 | 1984-01-01 |                26
  3 | 2015-08-17 01:20:42 | 1989-08-20 |                25
  4 | 2014-09-11 19:41:23 | 1981-02-14 |                33
  5 | 2013-01-28 11:26:13 | 1982-05-15 |                30
(5 rows)
*/