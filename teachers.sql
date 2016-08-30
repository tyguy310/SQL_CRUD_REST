-- delete existing rows
TRUNCATE teachers CASCADE;

-- create teachers
INSERT INTO teachers (first_name, last_name)
VALUES
  ('Michael', 'Herman'),
  ('Wes', 'Reid'),
  ('Robby', 'Hajek'),
  ('Ben', 'Hassara');

INSERT INTO teachers (first_name, last_name)
VALUES ('Bob', 'Ross');

SELECT * FROM teachers
WHERE last_name = 'Herman' OR last_name = 'Hassara';
