DROP TABLE IF EXISTS basics.value_examples;
CREATE TABLE basics.value_examples(
    id SERIAL PRIMARY KEY,
    nickname TEXT,
    bio TEXT,
    score INTEGER
);
INSERT INTO basics.value_examples
(nickname,bio,score)
VALUES
(null,'null nickname',10),
('','empty nickname',20),
('abcd','',0);
SELECT * FROM basics.value_examples;
-- intentional absence of a value
SELECT * FROM basics.value_examples where nickname IS null;