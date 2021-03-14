--corrected
SELECT
  MAX(Salary) as SecondHighestSalary
FROM
  employee
WHERE
  Salary < (
             SELECT
               MAX(Salary)
             FROM
               Employee
           );
