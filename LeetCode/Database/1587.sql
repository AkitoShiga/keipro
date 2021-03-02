SELECT
  U.name,
  SUM(T.amount) AS balance
FROM
  Users AS U
  INNER JOIN
    Transactions AS T
    ON U.account = T.account
GROUP BY
  U.name
HAVING
  balance >= 10000;
