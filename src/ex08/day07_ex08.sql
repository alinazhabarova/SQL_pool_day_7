SELECT  person.address, pizzeria.name, COUNT(person.address) AS count_of_orders
FROM person_order
JOIN menu ON person_order.menu_id = menu.id
JOIN person ON person.id = person_order.person_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY person.address, pizzeria.name
ORDER BY address, pizzeria.name;


