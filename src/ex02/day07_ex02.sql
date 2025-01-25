SELECT pizzeria.name, COUNT(*) AS count, 'visit' AS action_type
FROM person_visits
JOIN pizzeria ON pizzeria.id = pizzeria_id
GROUP BY pizzeria.name

UNION

SELECT pizzeria.name, COUNT(*) AS count, 'order' AS action_type
FROM person_order 
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.name
ORDER BY action_type ASC, count DESC;



