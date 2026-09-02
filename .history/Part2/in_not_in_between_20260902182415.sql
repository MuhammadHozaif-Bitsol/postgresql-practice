SELECT name,category,price
FROM products
WHERE category IN('electronics','furniture');

SELECT name,category,price
FROM products
WHERE category NOT IN('electronics','furniture');

SELECT name,category,price
FROM products
WHERE price BETWEEN 100 AND 1200;