-- remove existing rows
TRUNCATE classes CASCADE;

INSERT INTO classes (subject)
VALUES
  ('Underwater Basket Weaving'),
  ('Happiness'),
  ('Light Treason');
