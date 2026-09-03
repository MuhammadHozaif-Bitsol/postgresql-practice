SELECT name,description 
FROM products
WHERE description IS NOT NULL;

SELECT name,price,description 
FROM products
WHERE is_active=TRUE
AND description is NULL;