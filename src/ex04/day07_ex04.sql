SELECT 	person.name, COUNT(pizzeria_id) AS count_of_visits
FROM person_visits
JOIN person ON person.id = person_id
GROUP BY person.name
HAVING COUNT(pizzeria_id) > 3;