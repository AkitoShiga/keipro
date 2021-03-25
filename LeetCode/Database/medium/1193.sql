SELECT
  LEFT(trans_date , 7) AS MONTH
  ,country
  ,COUNT(state) AS trans_count
  ,SUM(CASE WHEN STATE = 'approved' THEN 1 ELSE 0 END ) AS approved_count
  ,SUM(amount) AS trans_total_amount
  ,SUM(CASE WHEN STATE = 'approved' THEN amount ELSE 0 END ) AS approved_total_amount
FROM
  Transactions
GROUP BY
  month
  ,country
ORDER BY
  month
  ,country DESC;