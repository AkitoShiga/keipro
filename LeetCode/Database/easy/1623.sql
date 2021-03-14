SELECT
  sA.student_name AS member_A,
  sB.student_name AS member_B,
  sC.student_name AS member_C
FROM
  SchoolA AS sA
  CROSS JOIN
    SchoolB  AS sB
  CROSS JOIN
    SchoolC  AS sC
WHERE
  sA.student_id <> sB.student_id
  AND sB.student_id <> sC.student_id
  AND sA.student_id <> sC.student_id
  AND sA.student_name <> sB.student_name
  AND sB.student_name <> sC.student_name
  AND sA.student_name <> sC.student_name;