WITH ranked AS (
  SELECT
    project_id
    ,P.employee_id AS employee_id
    ,NAME
    ,experience_years
    ,RANK() OVER(PARTITION BY project_id ORDER BY experience_years DESC) AS erank
  FROM
    Project AS P
    INNER JOIN
      Employee AS E
      USING(employee_id)
  ORDER BY
    project_id
 )
SELECT
  project_id
  ,employee_id
FROM
  ranked
WHERE
  erank = 1
ORDER BY
  project_id
  ,employee_id;