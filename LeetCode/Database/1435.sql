--corrected
WITH CTE1 AS
  (
    SELECT
      session_id,
      CASE
        WHEN
          duration / 60 < 5
          THEN '[0-5>'
        WHEN
          duration / 60 BETWEEN 5 AND 10
          THEN '[5-10>'
        WHEN
          duration / 60 BETWEEN 10 AND 15
          THEN '[10-15>'
        WHEN
          duration / 60 >= 15
          THEN '15 or more'
      END AS bin
  FROM
    Sessions
),

CTE2 AS
  (
    SELECT
      '[0-5>' AS Bin
    UNION All
    SELECT
      '[5-10>' AS Bin
    UNION All
    SELECT
      '[10-15>' AS Bin
    UNION All
    SELECT
      '15 or more' AS Bin
  )
  SELECT
    b.bin AS BIN,
    Coalesce(count(session_id), 0) as Total
  FROM
    CTE1 A
  RIGHT JOIN
    CTE2 B
    ON A.bin=B.bin
  GROUP by
    B.bin