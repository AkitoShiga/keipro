SELECT
  DISTINCT(S.product_id)
  ,product_name
FROM
  Sales AS S
  INNER JOIN
    Product AS P
    USING(product_id)
WHERE
  sale_date BETWEEN '2019-01-01' AND '2019-03-31'
  AND S.product_id NOT IN
  (
    SELECT
      product_id
    FROM
      Sales
    WHERE
      sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31'
  );
