SELECT
  *
  ,CASE
     WHEN  x < (y + z) AND x >= y AND x >= z
       THEN 'Yes'
     WHEN  y < (x + z) AND y >= x AND y >= z
       THEN 'Yes'
     WHEN  z < (y + x) AND z >= x AND z >= y
       THEN 'Yes'
     WHEN  x = y and y = z
       THEN 'Yes'
     ELSE
       'No'
   END AS `triangle`
FROM
  triangle;
-- corrected
SELECT
  *
  ,IF((2 * greatest(x, y, z)) < x + y + z, 'Yes', 'No') AS triangle
FROM
  triangle;

SELECT
  *
  ,CASE
     WHEN
       x + y > z
       AND x + z > y
       AND y + z > x
         THEN 'Yes'
     ELSE 'No'
   END AS triangle
FROM
  triangle;