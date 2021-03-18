WITH counts AS(
  SELECT
    @seq_no := 1 AS seq_no
  UNION
  SELECT
    @seq_no := @seq_no + 1 AS seq_no
  FROM
    information_schema.COLUMNS
  LIMIT 100
)
SELECT
  CAST(C.seq_no AS signed) AS ids
FROM
  counts AS C
  LEFT JOIN
    Customers AS Cu
    ON C.seq_no = Cu.customer_id
WHERE
  Cu.customer_id IS NULL
  AND C.seq_no <= (SELECT MAX(customer_id) FROM Customers);
-- corrected

WITH RECURSIVE new AS(
  SELECT
    1 AS ids
  UNION ALL
  SELECT
    ids  + 1
  FROM
    new
  WHERE
    ids < (SELECT MAX(customer_id) FROM customers)
)
SELECT
  ids
FROM
  new
WHERE
  ids NOT IN(
      SELECT
        customer_id
      FROM
        customers
  );