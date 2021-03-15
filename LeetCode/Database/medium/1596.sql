--corrected
WITH cte AS(
    SELECT
      customer_id
      ,product_id
      ,RANK() OVER(PARTITION BY customer_id ORDER BY COUNT(product_id) DESC) AS most
    FROM
      Orders
    GROUP BY
      customer_id
      ,product_id
)
SELECT
  customer_id
  ,C.product_id
  ,product_name
FROM
  cte AS C
  INNER JOIN
    Products AS P
    USING(product_id)
WHERE
  most = 1;