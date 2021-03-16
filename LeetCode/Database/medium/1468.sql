WITH highest AS
  (
    SELECT
      company_id
      ,MAX(salary) AS highest_salary
    FROM
      Salaries
    GROUP BY
      company_id
  )
SELECT
  company_id
  ,employee_id
  ,employee_name
   ,CASE
    WHEN
      H.highest_salary > 10000
      THEN
         ROUND(salary - 0.49 * salary, 0)
    WHEN
      H.highest_salary <= 10000 AND H.highest_salary >= 1000
      THEN
         ROUND(salary - 0.24 * salary, 0)
    WHEN
      salary < 1000
      THEN salary
  END AS salary
FROM
  Salaries AS S
  INNER JOIN
    highest AS H
    USING(company_id);