SELECT
  project_id
  ,ROUND(AVG(experience_years), 2) AS average_years
FROM
  Project AS P
  INNER JOIN
  Employee AS E
  USING(employee_id)
GROUP BY
  project_id;