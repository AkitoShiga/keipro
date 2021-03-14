WITH Parents AS
  (
    SELECT
      DISTINCT(sub_id) AS sub_id
    FROM
      Submissions
    WHERE
      parent_id IS NULL
  ),
Childs as
  (
    SELECT
      DISTINCT(sub_id) AS sub_id
      , parent_id
    FROM
      Submissions
    WHERE
      parent_id IS NOT NULL
  )
SELECT
  Parents.sub_id AS post_id
  ,COALESCE((COUNT(Childs.parent_id)), 0) AS number_of_comments
FROM
  Parents
  LEFT JOIN
    Childs
    ON Parents.sub_id = Childs.parent_id
GROUP BY
  post_id
ORDER BY
  post_id;