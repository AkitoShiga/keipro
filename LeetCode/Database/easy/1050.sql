SELECT
  actor_id
  ,director_id
FROM
  ActorDirector
WHERE
  actor_id  = actor_id
  AND director_id  = director_id
GROUP BY
  actor_id,
  director_id
HAVING
  COUNT(*) > 2;
--corrected
SELECT
  actor_id
  ,director_id
FROM
  ActorDirector
GROUP BY
  actor_id,
  director_id
HAVING
  COUNT(*)>2;
