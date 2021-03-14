WITH min_date AS
  (
    SELECT
      player_id
      ,MIN(event_date) min_event_date
    FROM
      Activity
    GROUP BY
      player_id
  )
SELECT
  player_id
  ,device_id
FROM
  Activity AS A
  INNER JOIN
    min_date AS M
    USING(player_id)
WHERE
  A.event_date = M.min_event_date;