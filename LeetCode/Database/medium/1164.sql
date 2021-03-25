WITH newest AS(
  SELECT
    *
  FROM(
    SELECT
      DISTINCT(product_id)
      ,10 AS price
    FROM
      products
  ) c
  LEFT JOIN(
    SELECT
      product_id
      ,change_date
      ,new_price
    FROM
      products p1
    WHERE
      change_date = (
        SELECT
          change_date
        FROM
          products p2
        WHERE
          p1.product_id = p2.product_id
          AND change_date <= '2019-8-16'
        ORDER BY
          change_date DESC
        LIMIT
          1
     )
  ) AS newer
  USING(product_id)
)
SELECT
  product_id
  ,CASE WHEN new_price IS NOT NULL THEN new_price ELSE price END AS price
FROM
  newest;

-- corrected
WITH t AS(
    SELECT
      DISTINCT product_id
      ,first_value(new_price) OVER(PARTITION BY product_id ORDER BY change_date DESC) AS price1
    FROM
      products
    WHERE
      change_date <= '2019-08-16'
)
SELECT
  DISTINCT a.product_id
  ,IFNULL(price1, 10) AS price
FROM
  products a
LEFT JOIN
  t
ON a.product_id = t.product_id;
