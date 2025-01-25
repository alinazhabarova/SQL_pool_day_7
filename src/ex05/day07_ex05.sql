SELECT DISTINCT	person.name
FROM person_order
INNER JOIN person ON person.id = person_id
ORDER BY person.name ;