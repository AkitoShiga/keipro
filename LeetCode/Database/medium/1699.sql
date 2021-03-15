WITH Shaped AS
(
SELECT
  from_id AS person1
  ,to_id AS person2
  ,duration
FROM
  Calls
WHERE
  from_id < to_id
UNION ALL
SELECT
  to_id AS person1
  ,from_id AS person2
  ,duration
FROM
  Calls
WHERE
  from_id > to_id
)
SELECT
  person1
  ,person2
  ,COUNT(*) AS call_count
  ,SUM(duration) AS total_duration
FROM
  Shaped
GROUP BY
  person1
  ,person2;

--corrected
SELECT
  CASE
    WHEN
      from_id < to_id
      THEN
        from_id
    ELSE
      to_id
  END AS person1
  ,CASE
    WHEN
      from_id < to_id
      THEN
        to_id
    ELSE
      from_id
  END AS person2
  ,COUNT(*) AS call_count
  ,SUM(duration) AS total_duration
FROM
  Calls
GROUP BY
  person1
  ,person2;