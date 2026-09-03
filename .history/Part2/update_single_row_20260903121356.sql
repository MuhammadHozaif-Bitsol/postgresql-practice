SELECT name,price,category,description
FROM products
WHERE sku ='ELEC-KEY-001';

UPDATE products
SET price=4000
WHERE sku ='ELEC-KEY-001';

SELECT name,price,category,description
FROM products
WHERE sku ='ELEC-KEY-001';
