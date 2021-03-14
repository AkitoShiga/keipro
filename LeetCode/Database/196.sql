WITH duplicate AS
    (
      SELECT
        D.Id
      FROM
        Person AS O
          INNER JOIN
          Person AS D
            ON O.Email = D.Email
            AND O.Id < D.Id
    )
DELETE FROM
  Person
WHERE
  Id IN (
          SELECT
            *
          FROM
            duplicate
        );
-- corrected
delete from
  person
where
  id not in
    (
      select
        *
      from
        (
          select
            min(p.id)
          from
            person p
          group by
            p.email
        ) tmp
    );