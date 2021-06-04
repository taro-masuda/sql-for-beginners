SELECT
    id
    , name
    , LENGTH(name) AS length_name
    , REPLACE(name, 'スナック', 'ポテトチップス') AS replace_name
FROM
    receipt_item
ORDER BY
    id
LIMIT
    5;
/*
 id |    name    | length_name |  replace_name   
----+------------+-------------+-----------------
  1 | スナックA  |           5 | ポテトチップスA
  2 | さくらんぼ |           5 | さくらんぼ
  3 | 鮭         |           1 | 鮭
  4 | スナックD  |           5 | ポテトチップスD
  5 | 弁当C      |           3 | 弁当C
(5 rows)

*/