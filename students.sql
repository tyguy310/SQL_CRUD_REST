-- connect to db
\connect galvanize;

-- delete existing rows
TRUNCATE students CASCADE;

-- create students
INSERT INTO students (first_name, last_name)
VALUES
  ('Adam', 'Franzen'),
  ('Akiko', 'Okabe'),
  ('Alex', 'Glassford'),
  ('Alex', 'Nye'),
  ('Alias', 'Montoya'),
  ('Allen', 'Fordham'),
  ('Austin', 'Mahan'),
  ('Brandon', 'Blair'),
  ('Derek', 'Styer'),
  ('George', 'Vickstrom'),
  ('Gina', 'DeBell'),
  ('Isaac', 'Collier'),
  ('Isaac', 'Miller'),
  ('John', 'Berger'),
  ('Jordon', 'Hoshor'),
  ('Kristjan', 'Gannon'),
  ('Mark', 'Dickinson'),
  ('Nathan', 'Dennis'),
  ('Phil', 'Benz'),
  ('Ryan', 'Harings'),
  ('Ryan', 'Pando'),
  ('Sam', 'Goldsmith'),
  ('Shane', 'Pittman'),
  ('Tommy', 'Gaessler'),
  ('Tyler', 'Maier');

UPDATE students
SET jobs_applied=3
WHERE last_name = 'Franzen';


UPDATE students
SET jobs_applied=5
WHERE last_name = 'Benz';


-- SELECT
SELECT s.*
FROM students s
WHERE s.first_name = 'Alias';

-- students with less than 5 jobs_applied
SELECT *
FROM students
WHERE jobs_applied < 5;
