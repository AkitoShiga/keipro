SELECT
  t1.id
  ,CASE
    WHEN
      t1.p_id IS NULL
    THEN
      'Root'
    WHEN
      t1.p_id IS NOT NULL AND (SELECT MAX(id) FROM tree t2 WHERE p_id = t1.id)IS NOT NULL
    THEN
      'Inner'
    WHEN
     t1.p_id IS NOT NULL AND (SELECT MAX(id) FROM tree t2 WHERE p_id = t1.id)IS NULL
    THEN
      'Leaf'
  END AS Type
FROM
  tree t1;

-- corrected
  SELECT
    id
    ,CASE
      WHEN p_id IS NULL THEN 'Root'
      WHEN id IN (SELECT DISTINCT(p_id) FROM tree) THEN 'Inner'
      ELSE 'Leaf'
    END AS Type
  FROM
    tree;
