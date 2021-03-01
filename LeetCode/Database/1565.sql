SELECT
  DATE_FORMAT (order_date , '%Y-%m') AS month,
  COUNT(customer_id) AS order_count,
  COUNT(DISTINCT(customer_id)) as customer_count
FROM
  Orders
WHERE
  invoice > 20
 GROUP BY
  month;
--corrected
SELECT
  LEFT(order_date, 7) AS month,
  COUNT(*) AS order_count,
  COUNT(DISTINCT(customer_id)) AS customer_count
FROM
  Orders
WHERE
  invoice > 20
GROUP BY
  month;