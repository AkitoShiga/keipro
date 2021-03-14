SELECT
  A.employee_id
FROM
  Employees AS A
    INNER JOIN
      Employees AS B
      ON A.manager_id = B.employee_id
    INNER JOIN
      Employees AS C
      ON B.manager_id = C.employee_id
WHERE
  A.employee_id <> 1
  AND(
    A.manager_id = 1
    OR B.manager_id = 1
    OR C.manager_id = 1
  );
