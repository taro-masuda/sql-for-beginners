SELECT
    ri.id AS receipt_id
    , u.id AS user_id
    , ri.name
    , u.gender
FROM
    receipt_item AS ri
INNER JOIN
    "user" as u
ON ri.user_id = u.id
ORDER BY 
    ri.id
LIMIT 
    5;
/*
 receipt_id | user_id |    name    | gender 
------------+---------+------------+--------
          1 |       2 | スナックA  |      1
          2 |       2 | さくらんぼ |      1
          3 |       2 | 鮭         |      1
          4 |       2 | スナックD  |      1
          5 |       5 | 弁当C      |      2
(5 rows)
*/