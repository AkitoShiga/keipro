WITH O AS (
 SELECT
  DISTINCT(CASE
    WHEN user1_id = 1 THEN user2_id
    WHEN user2_id = 1 THEN user1_id
    ELSE 1
  END) AS user_id
 FROM
  Friendship F
 INNER JOIN
  Likes L
 USING(user_id)
)
SELECT
  page_id
FROM
  O
NOT EXISTS(
    SELECT
      page_id
    FROM
      O
    WHERE
      user_id = 1
);
