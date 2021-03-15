WITH numbered AS
  (
    SELECT
      USER_ID
      ,visit_date
      ,ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY visit_date) AS rownum
    FROM
      UserVisits
  )
SELECT
  n1.user_id
  ,MAX(CASE
    WHEN
      n2.visit_date IS NOT NULL
      THEN
        DATEDIFF(n2.visit_date, n1.visit_date)
    WHEN
       n2.visit_date IS NULL
       THEN
        DATEDIFF('2021-01-01', n1.visit_date)
    END ) AS biggest_window
FROM
  numbered AS n1
  LEFT JOIN
    numbered AS n2
    ON n1.rownum = n2.rownum -1
    AND n1.user_id = n2.user_id
GROUP BY
  n1.user_id;
--correcteds
WITH leaded AS
  (
    SELECT
       user_id
       ,visit_date
       ,CASE
         WHEN
           ld IS NULL
             THEN '2021-01-01'
         ELSE
           ld
       END AS lead_date
    FROM
      (
        SELECT
          user_id
          ,visit_date
          ,lead(visit_date, 1) OVER(PARTITION BY user_id ORDER BY visit_date) AS ld
        FROM uservisits
      ) AS sub
  )
SELECT
  user_id
  ,MAX(DATEDIFF(lead_date, visit_date)) AS biggest_window
FROM
  leaded
GROUP BY
  user_id;