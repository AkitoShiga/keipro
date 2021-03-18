WITH sumed AS(
    SELECT
      *
      ,SUM(WEIGHT) OVER(ORDER BY turn) AS limited
      ,lead(WEIGHT)OVER() AS nextWeight
    FROM
      QUEUE
    ORDER BY
      turn
)
SELECT
  person_name
FROM
  sumed
WHERE
  limited <= 1000
ORDER BY
 turn DESC
LIMIT 1;