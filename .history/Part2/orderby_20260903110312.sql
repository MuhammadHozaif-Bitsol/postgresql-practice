SELECT name,price
FROM products
ORDER BY  price ASC;

SELECT name,price
FROM products
WHERE description IS NULL
ORDER BY price DESC;

SELECT name,price
FROM products
ORDER BY category ASC,price DESC
