SELECT
  A.sale_date
  , A.sold_num - O.sold_num AS diff
FROM
  Sales AS A
  INNER JOIN
    Sales AS O
      ON A.sale_date = O.sale_date
      AND A.fruit = 'apples'
      AND O.fruit = 'oranges';

--corrected
SELECT
  sale_date,
  SUM(
      CASE
        WHEN fruit = 'apples'
          THEN sold_num
        ELSE -sold_num
      END
  ) AS diff
FROM
  sales
GROUP BY
  sale_date;


