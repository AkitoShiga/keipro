SELECT
  sell_date,
  COUNT(DISTINCT(product)) AS num_sold,
  GROUP_CONCAT(DISTINCT(product)) AS  products
FROM
  Activities
GROUP BY
  sell_date
ORDER BY
  sell_date,
  product;
--corrected
SELECT
  sell_date,
  COUNT(DISTINCT(product)) AS num_sold,
  GROUP_CONCAT(DISTINCT product ORDER BY product ASC)AS products--ここでORDER BYが使えるという衝撃
FROM
  Activities
GROUP BY
  sell_date
ORDER BY
 sell_date;