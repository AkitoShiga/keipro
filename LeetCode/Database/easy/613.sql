SELECT
MIN(CASE
      WHEN
        pA.x <> pB.x
          THEN ABS(pA.x - pB.x)
      END ) AS shortest
FROM
  point AS pA
  CROSS JOIN
    point AS pB;

-- corrected
SELECT
  pB.x - pA.x AS shortest
FROM
  point AS pA
    JOIN point AS pB
      ON pA.x < pB.x
ORDER BY
  shortest ASC
LIMIT 1;
