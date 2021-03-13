SELECT
  NAME
  ,CASE
     WHEN
       bonus < 1000
         THEN bonus
     WHEN
        bonus IS NULL
          THEN NULL
     ELSE
       NULL
   END AS bonus
FROM
  Employee AS E
  LEFT JOIN
    Bonus AS B
    ON E.empId = B.empId
WHERE
  bonus < 1000
  OR bonus IS NULL;