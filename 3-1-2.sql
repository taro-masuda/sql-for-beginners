SELECT
    NULL AS "null"
    , COALESCE(NULL, 0) AS co_null;
/*
 null | co_null 
------+---------
      |       0
(1 row)
*/