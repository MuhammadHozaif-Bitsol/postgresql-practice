INSERT INTO products 
(name,category,price,stock,sku,description)
VALUES
('temp product','stationery',4554.23,43,'STAT-TEMP-001','A sample product to be deleted');

DELETE from products
WHERE sku ='STAT-TEMP-001'
RETURNING name,price,category;