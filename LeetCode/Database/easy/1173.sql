WITH immediate AS
  (
    SELECT
      COUNT(*) AS times
    FROM
      Delivery
    WHERE
      order_date = customer_pref_delivery_date
  )
SELECT
  ROUND(((SELECT times FROM immediate) / COUNT(*) * 100), 2) AS immediate_percentage
FROM
  Delivery;

--corrected
SELECT
  ROUND(AVG(IF(order_date = customer_pref_delivery_date, 1, 0)) * 100,2)
    AS immediate_percentage
FROM
  Delivery;
--another answer...Maybe a little slower than corrected
SELECT
  ROUND(
    AVG(
      CASE
        WHEN order_date = customer_pref_delivery_date
          THEN 1
        ELSE 0
      END
    ) * 100, 2
  )AS immediate_percentage
FROM
  Delivery;