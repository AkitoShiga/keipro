WITH ranked AS
(
SELECT
  *
  ,COUNT(*) OVER(PARTITION BY activity ORDER BY activity) erank
FROM
  Friends
)
SELECT
  DISTINCT(activity)
FROM
  ranked
WHERE
  erank > (SELECT MIN(erank) FROM ranked)
  AND erank < (SELECT MAX(erank) FROM ranked);

-- corrected
select
  activity
from
  friends
group by
  activity
having
  count(*) > (select count(*) from friends group by activity order by 1 limit 1)
  and count(*) (select count(*) from friends group by activity order by 1 desc limit 1)