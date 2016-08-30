-- connect to db
\connect galvanize;

-- remove existing rows
TRUNCATE classes CASCADE;

-- create classes
INSERT INTO classes (subject, teacher_id)
VALUES
  ('Janky Python',
    (SELECT id FROM teachers WHERE last_name = 'Herman')),
  ('Promises',
    (SELECT id FROM teachers WHERE last_name = 'Reid')),
  ('Basic Queries',
    (SELECT id FROM teachers WHERE last_name = 'Hajek')),
  ('Defence Against the Dark Queries',
    (SELECT id FROM teachers WHERE last_name = 'Hassara'));

UPDATE classes
SET teacher_id = (SELECT id FROM teachers WHERE last_name = 'Herman')
WHERE subject='Promises';

SELECT subject FROM classes
WHERE teacher_id = (SELECT id FROM teachers WHERE last_name = 'Reid')
OR teacher_id = (SELECT id FROM teachers WHERE last_name = 'Hajek');


DELETE FROM classes
WHERE subject = 'Basic Queries';
