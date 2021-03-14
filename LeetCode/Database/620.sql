SELECT
  *
FROM
  cinema
WHERE
  id % 2 = 1
  AND DESCRIPTION regexp '^(?!.*boring).*$'
ORDER BY
  rating DESC;