SELECT
  name
FROM
  salesperson
WHERE
  name NOT IN
    (
      SELECT
        S.name
      FROM
        salesperson AS S
        INNER JOIN
          orders AS O
          ON O.sales_id = S.sales_id
        INNER JOIN
          company AS C
          ON O.com_id = C.com_id
      WHERE
        C.name = 'RED'
    )
ORDER BY
  sales_id;