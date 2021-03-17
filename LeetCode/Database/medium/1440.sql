WITH t AS
  (
    SELECT
      1 AS bool
      ,'true' AS `value`
    UNION
    SELECT
      0 as bool
      ,'false' AS `value`
  )
, b AS
(
SELECT
  left_operand
    ,VX.value AS left_value
    ,operator
    ,right_operand
    ,VY.value AS right_value
  ,CASE
    WHEN
      operator = '>'
        THEN  VX.value > VY.value
    WHEN
      operator = '<'
        THEN  VX.value < VY.value
    WHEN
      operator = '='
        THEN  VX.value = VY.value
  END AS bool
FROM
  Expressions AS E
INNER JOIN
    Variables AS VX
    ON E.left_operand = VX.name
INNER JOIN
    Variables AS VY
    ON E.right_operand = VY.name
)
SELECT
  left_operand
  ,operator
  ,right_operand
  ,t.value
FROM
  b
INNER JOIN
   t
    USING(bool);