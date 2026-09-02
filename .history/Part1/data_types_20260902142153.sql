DROP TABLE IF EXISTS basics.products_basic;
CREATE TABLE basics.products_basic(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    description TEXT,
    stock INTEGER DEFAULT 0,
    total_views BIGINT DEFAULT 0,
    price NUMERIC(10,2),
    is_active BOOLEAN DEFAULT true
);
INSERT INTO basics.products_basic
    (name, description, stock, total_views, price, is_active)
VALUES
    ('hair brush', 'a brush for combing your hair', 23, 431, 321.17132, true),
    ('hair brush', 'a brush for combing your hair', DEFAULT, DEFAULT, 321.17132, DEFAULT);

SELECT * FROM basics.products_basic;
SELECT "id","name" FROM basics.products_basic WHERE is_active