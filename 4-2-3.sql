SELECT
    ri.id AS receipt_id
    , u.id AS user_id
    , u.gender
    , ri.name
FROM
    receipt_item AS ri
LEFT JOIN
    "user" as u
ON ri.user_id = u.id
WHERE 
    ri.id >= 135
ORDER BY 
    ri.id
LIMIT 5;
/*
 receipt_id | user_id | gender |      name       
------------+---------+--------+-----------------
        135 |      16 |      2 | アジ
        136 |      16 |      2 | ソフトドリンクE
        137 |      16 |      2 | いちご
        138 |      16 |      2 | 惣菜A
        139 |      16 |      2 | 牡蠣
*/