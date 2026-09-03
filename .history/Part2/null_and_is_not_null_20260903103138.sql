SELECT name,description 
FROM products
WHERE description IS NOT NULL;

SELECT name,price 
FROM products
WHERE is_active=TRUE
AND description is NULL;