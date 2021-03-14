WITH
  time AS 
    (
      SELECT 
        machine_id,
        SUM
          (
            CASE
              WHEN
                activity_type = 'end'
                  THEN `timestamp`
              WHEN
                activity_type = 'start'
                  THEN `timestamp` * -1
            END
          ) AS processing_time
      FROM
        Activity
      GROUP by
        process_id,
        machine_id
    )
SELECT
  machine_id,
  ROUND(AVG(processing_time), 3)AS processing_time
FROM
 time
GROUP BY
  machine_id
-- corrected
SELECT
 machine_id,
 ROUND(SUM(CASE
             WHEN
               activity_type = 'start'
                 THEN `timestamp` * -1
             WHEN
               activity_type = 'end'
                 THEN `timestamp`
            END ) / COUNT(DISTINCT(process_id)),3) AS processing_time
FROM
  Activity
GROUP BY
  machine_id;
