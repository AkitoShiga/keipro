SELECT
  P.product_name,
  SUM(O.unit) AS unit
FROM
  Products AS P
   INNER JOIN Orders AS O
      ON P.product_id = O.product_id
WHERE
  order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY
  O.product_id
HAVING
  sum(O.unit)>100
ORDER BY
  unit DESC;