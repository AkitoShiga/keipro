-- corrected
  WITH cte as(
      select
        visited_on
        ,sum(sum(amount)) over(order by visited_on rows between 6 precending and current row)
        ,round(avg(cast(sum(amount) as float))
        over(order by visited_on rows between 6 precending and current row) as average_amount
      from
        Customer
      group by visited_on
  )
  select
    visited_on
    ,amount
    ,average_amount
from
  cte
where
  visited_on >= DATEADD(DAY, 6 (SELECT TOP 1 visited_on FROM cte))