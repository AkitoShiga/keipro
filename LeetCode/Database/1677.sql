SELECT
  NAME
  ,SUM(rest) rest
  ,SUM(paid) paid
  ,SUM(canceled) canceled
  ,SUM(refunded) refunded
FROM
  Invoice
  ,Product
WHERE
  Invoice.product_id = Product.product_id
GROUP BY
  name
ORDER BY
  name;