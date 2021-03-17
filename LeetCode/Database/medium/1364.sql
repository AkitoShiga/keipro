SELECT
  I.invoice_id
  ,Cu.customer_name
  ,I.price
  ,SUM(CASE WHEN Co.user_id IS NOT NULL THEN 1 WHEN Co.user_id IS NULL THEN  0 END ) AS contacts_cnt
  ,sum(CASE WHEN CuC.customer_id IS NOT NULL THEN 1 WHEN CuC.customer_id IS NULL THEN  0 END ) AS trusted_contacts_cnt
FROM
  Invoices AS I
    LEFT JOIN
      Customers AS Cu
      ON I.user_id = Cu.customer_id
      LEFT JOIN
        Contacts AS Co
        ON I.user_id = Co.user_id
        LEFT JOIN
          Customers AS CuC
          ON Co.contact_email = Cuc.email
          AND Co.contact_name = CuC.customer_name
GROUP BY
  I.invoice_id
ORDER BY
  I.invoice_id ASC;
