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

INSERT INTO students (first_name, last_name)
VALUES ('Morty', 'Smith');


-- change jobs applied to 3
UPDATE s*
SET jobs_applied=3
WHERE s.last_name = 'Franzen';

-- change jobs applied to 5
UPDATE s*
SET jobs_applied=5
WHERE s.last_name = 'Benz';


-- students with at least 1 jobs_applied
SELECT FROM students
WHERE jobs_applied >= 1;

DELETE FROM students
WHERE jobs_applied > 5;


DELETE FROM students
WHERE last_name = 'Franzen';
