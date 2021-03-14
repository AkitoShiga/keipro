SELECT
  M.employee_id
  ,M.name
  ,COUNT(E.employee_id) AS reports_count
  ,ROUND(AVG(E.age)) AS average_age
FROM
  Employees AS E
  INNER JOIN
    Employees AS M
    ON E.reports_to = M.employee_id
GROUP BY
  M.employee_id
HAVING
  reports_count <> 0
ORDER BY
  M.employee_id;