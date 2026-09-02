SELECT name,category,price FROM products WHERE category='electronics' AND price >1000;
SELECT name,category,price FROM products WHERE category='electronics' OR category='furniture';
SELECT name,category,price FROM products WHERE NOT category='electronics';