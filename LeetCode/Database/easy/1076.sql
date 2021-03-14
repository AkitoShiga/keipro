WITH C AS
  (
    SELECT
      project_id
      , COUNT(*) AS cc
    FROM
      Project
    GROUP BY
      project_id
  ),
mC AS
  (
    SELECT
      MAX(cc) AS maxC
    FROM
      C
  )
SELECT
  DISTINCT(P.project_id)
FROM
  Project AS P
  INNER JOIN
    Employee AS E
    USING(employee_id)
  INNER JOIN
    C
    USING(project_id)
WHERE
  C.cc = (SELECT maxC FROM mC)
ORDER BY
  C.cc DESC;

--corrected
WITH tab AS
  (
    SELECT
      project_id
      ,COUNT(*) AS mycount
    FROM
      project
    GROUP BY
      project_id
    ORDER BY
      COUNT(*) DESC
  )
SELECT
  tab.project_id
FROM
  tab
WHERE
  tab.mycount = (
      SELECT
        MAX(mycount)
      FROM
        tab
  );