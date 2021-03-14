 WITH delD AS
   (
      SELECT
        class,
        student,
        COUNT(*) AS c
      FROM
        courses
      GROUP BY
        class,
        student
      HAVING
        c = 1
  ),
countC AS
 (
  SELECT
    class,
    COUNT(*) AS cc
  FROM
     delD
  GROUP BY
     class
  HAVING
     cc > 4
 )
SELECT
  class
FROM
  countC;
--corrected
SELECT
  class
FROM
  courses
GROUP BY
  HAVING COUNT(DISTINCT student) >=5;