SELECT
  DISTINCT(C1.seat_id)
FROM
  cinema AS C1
  INNER JOIN
    cinema AS C2
    ON C1.seat_id - 1 = C2.seat_id
    OR C1.seat_id + 1 = C2.seat_id
WHERE
  C2.free = 1
  AND C1.free = 1;