-- corrected
  WITH cte AS(
      SELECT
        visited_on
        ,SUM(SUM(amount)) OVER(ORDER BY visited_on ROWS BETWEEN 6 precending AND current ROW)
        ,ROUND(AVG(CAST(SUM(amount) AS FLOAT))
        OVER(ORDER BY visited_on ROWS BETWEEN 6 precending AND current ROW) AS average_amount
      FROM
        Customer
      GROUP BY visited_on
  )
  SELECT
    visited_on
    ,amount
    ,average_amount
FROM
  cte
WHERE
  visited_on >= DATEADD(DAY, 6 (SELECT TOP 1 visited_on FROM cte));