DROP TABLE IF EXISTS basics.accounts;
CREATE TABLE basics.accounts(
    email TEXT NOT NULL UNIQUE,
    is_active BOOLEAN DEFAULT true,
    age INTEGER CHECK(age>=18)
);
