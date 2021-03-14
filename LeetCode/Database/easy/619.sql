WITH
  numD AS
    (
      SELECT
        num,
        COUNT(num) AS dup
      FROM
        my_numbers
      GROUP BY
        num
      HAVING
        dup = 1
    )
SELECT
  MAX(num) AS num
FROM
  numD
