--limit means how many rows you can return
-- offset control how many rows we want to skip
SELECT name,price
FROM products
ORDER BY name ASC
LIMIT 5;