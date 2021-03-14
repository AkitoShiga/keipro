--corrected
SELECT
  c.country_name
  ,(
     CASE
       WHEN
         SUM(w.weather_state)/COUNT(w.weather_state) <= 15
           THEN 'Cold'
       WHEN
         SUM(w.weather_state)/COUNT(w.weather_state) >= 25
           THEN 'Hot'
       ELSE 'Warm'
     END
    ) AS weather_type
FROM
  weather w
  ,countries c
WHERE
  c.country_id = w.country_id
  AND MONTH(w.day) = 11
GROUP BY
  c.country_name;
