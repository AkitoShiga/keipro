WITH allInfo AS
  (
    SELECT
      *
    FROM
      Sales AS S
      INNER JOIN
        Product AS P
        USING(product_id)
  )
SELECT
  DISTINCT(buyer_id)
FROM
  allInfo
WHERE
  product_name = 'S8'
  AND buyer_id NOT IN
    (
      SELECT
      buyer_id
      FROM
      allInfo
      WHERE
      product_name = 'iPhone'
    );