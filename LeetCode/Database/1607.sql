SELECT
  seller_name
FROM
  Seller AS S
  LEFT JOIN
    Orders AS O
    USING(seller_id)
WHERE
   S.seller_id NOT IN
    (
      SELECT
        seller_id
      FROM
        Orders
      WHERE
        YEAR(sale_date) = 2020
    )
ORDER BY
  seller_name ASC;