SELECT
  V.customer_id,
  COUNT(*) AS count_no_trans
FROM
  Visits AS V
  LEFT JOIN
    Transactions AS T
      ON V.visit_id = T.visit_id
WHERE
  T.visit_id IS NULL
GROUP BY
  V.customer_id
order by
  count_no_trans DESC;