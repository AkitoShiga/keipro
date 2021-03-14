-- corrected
SELECT
  customer_id
  ,NAME
FROM
 customers
WHERE
 customer_id IN
   (
     SELECT
       customer_id
     FROM
       Orders t1
       ,Product t2
     WHERE
       t1.product_id = t2.product_id
     AND MONTH(order_date) = "6"
     GROUP BY
       customer_id
     HAVING
       sum(quantity * price) >= 100
   ) AND customer_id IN
   (
     SELECT
       customer_id
     FROM
       Orders t1
       ,Product t2
     WHERE
       t1.product_id = t2.product_id
       AND MONTH(order_date) = "7"
     GROUP BY
       customer_id
     HAVING SUM(quantity * price) >= 100
   );