SELECT
  U.name,
  COALESCE(SUM(R.distance), 0) AS travelled_distance
FROM
  Users AS U
    LEFT JOIN
      Rides AS R
      ON U.id = R.user_id
GROUP BY
  U.name
ORDER BY
  travelled_distance DESC,
  U.name ASC;
--corrected
--どっちでも良いが、この場合はIFNULLを使ったほうが丁度いい感じがする
SELECT
  U.name,
  IFNULL(SUM(R.distance), 0) AS travelled_distance
FROM
  Users AS U
    LEFT JOIN
      Rides AS R
      ON U.id = R.user_id
GROUP BY
  U.name
ORDER BY
  travelled_distance DESC,
  U.name ASC;