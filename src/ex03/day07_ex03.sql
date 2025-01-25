WITH count_visits AS 
(SELECT pizzeria.name, COUNT(pizzeria.name) AS count_1
FROM person_visits
JOIN pizzeria ON pizzeria.id = pizzeria_id
GROUP BY pizzeria.name),

count_order AS 
(SELECT pizzeria.name, COUNT(pizzeria.name) AS count_2
FROM person_order 
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.name)

SELECT  count_visits.name,
		COALESCE(count_1,0) + COALESCE(count_2,0) AS total_count
FROM count_visits
JOIN count_order ON count_visits.name = count_order.name

ORDER BY  total_count DESC, count_visits.name ASC;