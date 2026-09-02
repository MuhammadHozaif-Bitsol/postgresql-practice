DROP TABLE IF EXISTS basics.accounts;
CREATE TABLE basics.accounts(
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT true,
    age INTEGER CHECK(age>=18)
);
INSERT INTO basics.accounts
(email,is_active,age)
VALUES
('mbcd@gmail.com',DEFAULT, 3),
('abcd@gmail.com',false,45);
SELECT * FROM basics.accounts;