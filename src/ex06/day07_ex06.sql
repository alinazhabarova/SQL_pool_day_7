SELECT 	pizzeria.name, 
		count(*) AS count_of_orders, 
        ROUND(AVG(menu.price), 2) AS average_price,
        max(menu.price) AS max_price, 
        min(menu.price) AS min_price
FROM menu
JOIN pizzeria ON pizzeria.id = pizzeria_id
JOIN person_order ON person_order.menu_id = menu.id
GROUP BY pizzeria.name
ORDER BY pizzeria.name;