 WITH ranked AS(
     SELECT
       *
       ,RANK() OVER (PARTITION BY student_id ORDER BY grade DESC) AS rankedGrade
       ,RANK() OVER (PARTITION BY student_id ORDER BY course_id ASC) AS rankedCourse
     FROM
      Enrollments
 )
 SELECT
   student_id
   ,course_id
   ,grade
FROM
  ranked
WHERE
  rankedGrade = 1
GROUP BY
  student_id
ORDER BY
  student_id;