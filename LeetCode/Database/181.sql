--original
WITH
  Managed AS
    (
      SELECT
        *
      FROM
        Employee
      WHERE
        ManagerId IS NOT NULL
    )
SELECT
  Name AS Employee
FROM
  Managed
WHERE
  Salary >
    (
      SELECT
        Salary
      FROM
        Employee
      WHERE
        Employee.Id = Managed.ManagerId
    )
--Corrected
SELECT
  Managed.Name AS Employee
FROM
  Employee AS Managed
  INNER JOIN
    Employee AS Manager
    ON Managed.ManagerId = Manager.Id
WHERE
  Managed.Salary > Manager.Salary;

