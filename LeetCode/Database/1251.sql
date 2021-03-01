SELECT
  P.product_id,
  ROUND(sum(P.price * U.units ) / sum(U.units), 2) AS average_price
FROM
  Prices AS P
  INNER JOIN UnitsSold AS U
    ON P.product_id = U.product_id
    AND U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY
  P.product_id;