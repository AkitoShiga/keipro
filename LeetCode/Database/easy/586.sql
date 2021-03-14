WITH mC AS
  (
      SELECT
        customer_number,
        COUNT(customer_number) OVER (PARTITION BY customer_number) AS maxC
      FROM
        Orders
  )
SELECT
  DISTINCT(O.customer_number)
FROM
Orders AS O
    INNER JOIN mC
    ON O.customer_number = mC.customer_number
WHERE
  mc.maxC = (SELECT MAX(maxC) FROM mC);

--corrected
SELECT
  customer_number
FROM
  Orders
GROUP BY
  customer_number
ORDER BY
  COUNT(cusotmer_number) DESC
LIMIT 1;