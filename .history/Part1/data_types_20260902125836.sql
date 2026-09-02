DROP TABLE IF EXISTS basics.products_basic;
CREATE TABLE basics.products_basic(
    id SERIAL PRIMARY,
    name VARCHAR(50),
    description TEXT,
    stock INTEGER DEFAULT 0,
    total_views BIGINT DEFAULT 0,
    price NUMERIC(10,2),

);
