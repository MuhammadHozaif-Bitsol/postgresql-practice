--limit means how many rows you can return
-- offset control how many rows we want to skip
SELECT name,price
FROM products
ORDER BY name ASC
LIMIT 5;
-- return first 5 products
SELECT name,price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 0;
--return the next 5
SELECT name,price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 5;