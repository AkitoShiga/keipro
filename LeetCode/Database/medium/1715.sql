WITH
  allQ AS
    (
      SELECT
        B.apple_count + coalesce(C.apple_count , 0) AS apple_count
        ,B.orange_count + coalesce(C.orange_count , 0) AS orange_count
      FROM
        Boxes AS B
          LEFT JOIN
            Chests AS C
            USING(chest_id)
      GROUP BY
      box_id
    )
SELECT
  SUM(apple_count) AS apple_count
  ,SUM(orange_count) AS orange_count
FROM
  allQ;
-- more compact
SELECT
  sum(B.apple_count + coalesce(C.apple_count , 0)) AS apple_count
  ,sum(B.orange_count + coalesce(C.orange_count , 0))AS orange_count
FROM
  Boxes AS B
    LEFT JOIN
      Chests AS C
      USING(chest_id)