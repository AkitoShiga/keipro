SELECT
  DISTINCT(title)
FROM
  TVProgram
  INNER JOIN
    Content
    USING(content_id)
WHERE
  Kids_content = 'Y'
  AND content_type = 'Movies'
  and program_date BETWEEN '2020-06-01' and '2020-06-30';