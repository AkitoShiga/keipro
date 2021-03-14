WITH Jan AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Jan'
  )
, Feb AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Feb'
  )
, Mar AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Mar'
  )
, Apr AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Apr'
  )
, May AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'May'
  )
, Jun AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Jun'
  )
, Jul AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Jul'
  )
, Aug AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Aug'
  )
, Sep AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Sep'
  )
, Oct AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Oct'
  )
, Nov AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Nov'
  )
, `Dec` AS
  (
    SELECT
      DISTINCT(id),
      revenue
    FROM
      Department
    WHERE
      month = 'Dec'
  )
SELECT
  DISTINCT(Dep.id),
  Jan.Revenue AS Jan_Revenue,
  Feb.Revenue AS Feb_Revenue,
  Mar.Revenue AS Mar_Revenue,
  Apr.Revenue AS Apr_Revenue,
  May.Revenue AS May_Revenue,
  Jun.Revenue AS Jun_Revenue,
  Jul.Revenue AS Jul_Revenue,
  Aug.Revenue AS Aug_Revenue,
  Sep.Revenue AS Sep_Revenue,
  Oct.Revenue AS Oct_Revenue,
  Nov.Revenue AS Nov_Revenue,
  Dec.Revenue AS Dec_Revenue
FROM
  Department AS Dep
  LEFT JOIN
    Jan
      ON Dep.id = Jan.id
  LEFT JOIN
    Feb
      ON Dep.id = Feb.id
  LEFT JOIN
    Mar
      ON Dep.id = Mar.id
  LEFT JOIN
    Apr
      ON Dep.id = Apr.id
  LEFT JOIN
    May
      ON Dep.id = May.id
  LEFT JOIN
    Jun
      ON Dep.id = Jun.id
  LEFT JOIN
    Jul
      ON Dep.id = Jul.id
  LEFT JOIN
    Aug
      ON Dep.id = Aug.id
  LEFT JOIN
    Sep
      ON Dep.id = Sep.id
  LEFT JOIN
    Oct
      ON Dep.id = Oct.id
  LEFT JOIN
    Nov
      ON Dep.id = Nov.id
  LEFT JOIN
    `Dec`
      ON Dep.id = Dec.id;
-- corrected
SELECT
  id,
  MAX(CASE month WHEN 'Jan' THEN revenue ELSE NULL END)AS Jan_revenue,
  MAX(CASE month WHEN 'Feb' THEN revenue ELSE NULL END)AS Feb_revenue,
  MAX(CASE month WHEN 'Mar' THEN revenue ELSE NULL END)AS Mar_revenue,
  MAX(CASE month WHEN 'Apr' THEN revenue ELSE NULL END)AS Apr_revenue,
  MAX(CASE month WHEN 'May' THEN revenue ELSE NULL END)AS May_revenue,
  MAX(CASE month WHEN 'Jun' THEN revenue ELSE NULL END)AS Jun_revenue,
  MAX(CASE month WHEN 'Jul' THEN revenue ELSE NULL END)AS Jul_revenue,
  MAX(CASE month WHEN 'Aug' THEN revenue ELSE NULL END)AS Aug_revenue,
  MAX(CASE month WHEN 'Sep' THEN revenue ELSE NULL END)AS Sep_revenue,
  MAX(CASE month WHEN 'Oct' THEN revenue ELSE NULL END)AS Oct_revenue,
  MAX(CASE month WHEN 'Nov' THEN revenue ELSE NULL END)AS Nov_revenue,
  MAX(CASE month WHEN 'Dec' THEN revenue ELSE NULL END)AS Dec_revenue
FROM
  Department
GROUP BY
  id
ORDER BY
  id ASC;