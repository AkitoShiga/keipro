SELECT
  COALESCE(ROUND(COUNT(DISTINCT session_id)/ COUNT(DISTINCT user_id), 2), 0.00) as average_sessions_per_user
FROM
  Activity
WHERE
  activity_date > date_sub('2019-07-27', interval 30 DAY);