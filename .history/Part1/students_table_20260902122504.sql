DROP TABLE IF EXISTS basics.students;
CREATE TABLE basics.students(
    -- serial creates an auto incrementing integer
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    age INTEGER CHECK(age>=18),
    created_at TIMESTAMP DEFAULT NOW()

);

INSERT INTO basics.students(name,email,age)
VALUES
('ABC','abcd@gmail.com',23),
('ABCD','abcde@gmail.com',23)