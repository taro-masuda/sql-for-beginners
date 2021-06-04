SELECT
    receipt_id
    , price AS max_price
    , name
FROM
    (
        SELECT 
            *
            , ROW_NUMBER() OVER(PARTITION BY receipt_id ORDER BY price DESC) AS seq
        FROM
            receipt_item
    ) AS ri
WHERE
    receipt_id <= 10 AND seq = 1;
/*
 receipt_id | max_price |    name    
------------+-----------+------------
          1 |      1000 | さくらんぼ
          2 |      2000 | カニ
          3 |       500 | エビ
          4 |       500 | タコ
          5 |      1000 | さくらんぼ
          6 |      1000 | メロン
          7 |       350 | 惣菜C
          8 |      1000 | ウニ
          9 |       500 | ブリ
         10 |      1500 | 米E
(10 rows)
*/