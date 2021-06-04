CREATE TEMPORARY TABLE at_table AS (
    SELECT
        id
        , 'paid_at' AS xxx_at
        , CAST(paid_at AS TIMESTAMP) AS "date"
    FROM
        receipt
    UNION ALL
    SELECT
        id
        , 'read_at' AS xxx_at
        , CAST(read_at AS TIMESTAMP) AS "date"
    FROM
        receipt
    UNION ALL
    SELECT
        id
        , 'update_at' AS xxx_at
        , CAST(update_at AS TIMESTAMP) AS "date"
    FROM 
        receipt
);

SELECT
    *
FROM 
    at_table
ORDER BY 
    id, xxx_at
LIMIT 
    10;
/*
 id |  xxx_at   |        date         
----+-----------+---------------------
  1 | paid_at   | 2010-01-22 00:00:00
  1 | read_at   | 2010-01-23 00:00:00
  1 | update_at | 2010-01-23 00:00:00
  2 | paid_at   | 2010-01-23 00:00:00
  2 | read_at   | 2010-01-25 00:00:00
  2 | update_at | 2010-01-25 00:00:00
  3 | paid_at   | 2010-01-25 00:00:00
  3 | read_at   | 2010-01-25 00:00:00
  3 | update_at | 2010-01-25 00:00:00
  4 | paid_at   | 2010-01-24 00:00:00
(10 rows)
*/