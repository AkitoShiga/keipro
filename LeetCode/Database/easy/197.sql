SELECT
  D.id
FROM
  Weather AS D
  INNER JOIN
    Weather AS P
    ON D.recordDate = date_add(P.recordDate, interval 1 DAY)
WHERE
  D.Temperature > P.Temperature;