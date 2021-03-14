WITH fixed AS
  (
    SELECT
      LOWER(TRIM(product_name)) AS product_name
      ,LEFT(sale_date, 7) AS sale_date
    FROM
      Sales
  )
SELECT
  *
  ,COUNT(*) AS total
FROM
  fixed
GROUP BY
  product_name
  ,sale_date
ORDER BY
  product_name ASC
  ,sale_date ASC;