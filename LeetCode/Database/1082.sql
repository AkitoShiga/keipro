SELECT
  S.seller_id
FROM
  (
    SELECT
      seller_id,
        SUM(price) AS sumPrice
    FROM
      Sales
    GROUP BY
      seller_id
  ) AS S
WHERE
  sumPrice = (
               SELECT
                 SUM(price) s
               FROM
                 Sales
               GROUP BY
                 seller_id
               ORDER BY
                 s DESC
               LIMIT 1
              );
-- corrected
WITH temp AS
  (
    SELECT
      seller_id,
      SUM(price) AS price
    FROM
      sales
    GROUP BY
      seller_id
  ),
temp2 AS
  (
    SELECT seller_id,
    RANK() OVER (ORDER BY price DESC) AS RNK
    FROM temp
  )
SELECT
  seller_id
FROM
  temp2
WHERE
  RNK = 1;