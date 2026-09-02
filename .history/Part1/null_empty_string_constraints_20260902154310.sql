DROP TABLE IF EXISTS basics.value_examples;
CREATE TABLE basics.value_examples(
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);
