WITH rankedOrder AS(
SELECT
  *
  ,RANK() OVER (PARTITION customer_id ORDER BY order_date DESC) AS rankedDate
FROM
  Orders
)
SELECT
  NAME AS customer_name
  ,R.customer_id
  ,order_id
  ,order_date
FROM
  rankedOrder AS R
  INNER JOIN
    Customers AS C
    USING(customer_id)
WHERE
  rankedDate < 4
ORDER BY
  customer_name ASC
  , rankedDate DESC;