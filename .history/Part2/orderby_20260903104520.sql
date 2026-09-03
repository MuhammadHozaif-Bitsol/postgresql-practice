SELECT name,price
FROM products
ORDER BY  price ASC;
SELECT name,price
FROM products
WHERE description is NOT NULL
ORDER BY price DESC;