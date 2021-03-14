WITH counts AS
  (
    SELECT
      ad_id
      ,SUM(
          (CASE
            WHEN ACTION = 'Clicked'
              THEN 1
            ELSE
              0
           END)
        ) AS click
      ,SUM(
          (CASE
            WHEN ACTION = 'Viewed'
              THEN 1
            ELSE
              0
           END)
        )AS view
    FROM
      Ads
    GROUP BY
      ad_id
  )
SELECT
  DISTINCT(A.ad_id) AS ad_id
  , ROUND(COALESCE(click / (click + view ) * 100, 0), 2) AS ctr
FROM
  Ads AS A
  INNER JOIN
    Counts AS C
    USING(ad_id)
ORDER BY
  ctr DESC
  ,A.ad_id;
