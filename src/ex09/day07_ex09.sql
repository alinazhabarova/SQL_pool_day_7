SELECT address, formula, average,
    CASE 
        WHEN formula > average THEN 'True'
        ELSE 'False' 
    END AS comprasion
FROM (SELECT address, 
        ROUND(MAX(age::decimal) - (MIN(age::decimal) / MAX(age::decimal)), 2) AS formula,
        ROUND(AVG(age::decimal), 2) AS average
    FROM person
    GROUP BY address)
ORDER BY address;
