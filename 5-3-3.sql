CREATE TEMPORARY TABLE month_table AS (
SELECT
    state_code
    , SUBSTRING(CAST(paid_at AS VARCHAR(20)), 6, 2) AS "month"
    , COUNT(*) AS month_count
FROM
    receipt AS r
INNER JOIN "user" AS u
ON u.id = r.user_id
GROUP BY 
    state_code, "month"
);

SELECT
    state_code
    , MAX(CASE WHEN "month" = '03' THEN month_count END) AS "march"
    , MAX(CASE WHEN "month" = '04' THEN month_count END) AS "april"
    , MAX(CASE WHEN "month" = '05' THEN month_count END) AS "may"
FROM
    month_table
GROUP BY
    state_code
ORDER BY
    state_code;

/*
 state_code | march | april | may 
------------+-------+-------+-----
 01         |    61 |    48 |  54
 02         |   143 |   114 | 136
 03         |    83 |    84 |  90
 04         |   299 |   288 | 327
 05         |   119 |   118 | 139
 06         |    66 |    40 |  67
 07         |   137 |   145 | 131
 08         |   112 |    90 |  99
 09         |   301 |   333 | 330
 10         |    56 |    35 |  40
 11         |   147 |   117 | 129
 12         |   367 |   369 | 441
 13         |   168 |   158 | 187
 14         |   117 |    92 | 102
 15         |   134 |   115 | 121
 16         |    32 |    30 |  34
 17         |   132 |   165 | 149
 18         |   290 |   252 | 226
 19         |   199 |   191 | 188
 20         |   161 |   154 | 161
 21         |    73 |    82 |  63
 22         |   183 |   175 | 150
 23         |   125 |   123 | 155
 24         |   136 |   127 | 155
 25         |   180 |   176 | 176
 26         |    91 |   101 | 107
 27         |   220 |   202 | 206
 28         |   202 |   180 | 204
 29         |   150 |   155 | 162
 30         |   145 |   131 | 126
 31         |   155 |   148 | 168
 32         |    30 |    39 |  42
 33         |   183 |   223 | 209
 34         |    55 |    63 |  51
 35         |    46 |    39 |  62
 36         |   178 |   194 | 190
 37         |    99 |   115 |  99
 38         |   134 |   134 | 126
 39         |   100 |   115 | 130
 40         |    78 |    72 |  92
 41         |    52 |    48 |  52
 42         |   203 |   223 | 222
 43         |    60 |    73 |  71
 44         |   355 |   359 | 374
 45         |   162 |   153 | 175
 46         |   179 |   210 | 190
 47         |   154 |   178 | 170
(47 rows)
*/