WITH strt AS(
SELECT
  log_id
  ,ROW_NUMBER() OVER (ORDER BY  log_id) AS 'row'
FROM
  Logs
WHERE
  log_id - 1 NOT IN (SELECT log_id FROM Logs)
),
ed AS (
SELECT
  log_id
  ,row_number() OVER (ORDER BY log_id) AS 'row'
FROM
  Logs
WHERE
  log_id + 1 NOT IN (SELECT log_id FROM Logs)
)

SELECT
  strt.log_id AS start_id
  ,IFNULL(ed.log_id, strt.log_id) AS end_id
FROM
  strt
  LEFT JOIN
    ed
      ON strt.row = ed.row;
--corrected
select
  MIN(log_id) AS start_id
  ,MAX(log_id) AS end_id
from
  (
    select
      log_id
      ,RANK() OVER(ORDER BY log_id) AS overall_rank
      ,(log_id -RANK() OVER(ORDER BY log_id) AS ind)
    FROM
      Logs
  ) AS t1
GROUP BY
  ind