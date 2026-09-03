SELECT name,price,category
FROM products
WHERE category = 'stationery';

UPDATE products
SET price= price +(0.1 * price)
WHERE category='stationery';

SELECT name,price,category
FROM products
WHERE category = 'stationery';