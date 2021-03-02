WITH
  team AS
    (
      SELECT
        team_id,
        COUNT(*) AS team_size
      FROM
        Employee
      GROUP BY
        team_id
    )
SELECT
  EMP.employee_id,
  team.team_size
FROM
  Employee AS emp
  LEFT JOIN
    team ON emp.team_id = team.team_id;
-- corrected
SELECT
  employee_id,
  COUNT(*) OVER (PARTITION BY team_id ) AS team_size
FROM
  Employee;