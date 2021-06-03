SELECT
    id, user_id, receipt_id, name
FROM 
    receipt_item
WHERE 
    name IN ('マグロ', 'りんご')
ORDER BY 
    id
LIMIT 
    5;
/*
 id  |     user_id     |   receipt_id    |  name  
-----+-----------------+-----------------+--------
 151 | 4               | 35              | りんご
 196 | 5               | 46              | りんご
 273 | 13              | 66              | マグロ
 306 | 14              | 73              | りんご
 328 | 5               | 80              | りんご
*/