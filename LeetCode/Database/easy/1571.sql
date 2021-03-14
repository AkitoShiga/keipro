SELECT
  W.name AS warehouse_name,
  SUM(W.units * P.width * P.Length * P.Height) AS volume
FROM
  Warehouse AS W
  INNER JOIN
    Products AS P
    ON W.product_id = p.product_id
GROUP BY
  W.name;