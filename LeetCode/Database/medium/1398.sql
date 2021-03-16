SELECT
  C.customer_id
  ,customer_name
FROM
  Customers AS C
  LEFT JOIN
  Orders AS AO
  ON C.customer_id = AO.customer_id
  AND AO.product_name = 'A'
  LEFT JOIN
  Orders AS BO
  ON C.customer_id = BO.customer_id
  AND BO.product_name = 'B'
  LEFT JOIN
  Orders AS CO
  ON C.customer_id = CO.customer_id
  AND CO.product_name = 'C'
WHERE
  AO.product_name IS NOT NULL
  AND BO.product_name IS NOT NULL
  AND CO.product_name IS NULL;