-- % after wireless means anything can come after it
SELECT name,price
FROM products
WHERE name LIKE 'wireless%';
-- % after wireless means anything can come after it
SELECT name,price
FROM products
WHERE name ILIKE 'o%';