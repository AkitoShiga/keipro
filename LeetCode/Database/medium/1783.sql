WITH total AS
  (
    SELECT
      Wimbledon AS winner
    FROM
      Championships
    UNION ALL
    SELECT
      Fr_open AS winner
    FROM
      Championships
    UNION ALL
    SELECT
      US_open AS winner
    FROM
      Championships
    UNION ALL
    SELECT
      Au_open AS winner
    FROM
      Championships
   ),
countTotal AS
(
SELECT
  winner AS player_id
  ,COUNT(winner) AS cT
FROM
  total
GROUP BY
  winner
)
SELECT
  P.player_id
  ,player_name
  ,COALESCE(cT, 0) AS grand_slams_count
FROM
  Players AS P
  INNER JOIN
    countTotal AS C
    USING(player_id);