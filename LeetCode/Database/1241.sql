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

-- correncted
SELECT
  s1.sub_id AS post_id
  , IFNULL(COUNT(DISTINCT s2.sub_id), 0) AS number_of_comments
FROM
  Submissions AS s1
LEFT JOIN
  Submissions s2
    ON s1.sub_id = s2.parent_id
WHERE
  s1.parent_id IS NULL
GROUP BY
  s1.sub_id;

