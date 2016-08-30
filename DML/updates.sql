UPDATE students SET jobs_applied=3
  WHERE first_name = 'Tyler' AND last_name = 'Maier';

UPDATE students SET jobs_applied=72
  WHERE first_name = 'Alex' AND last_name = 'NYE';

UPDATE classes SET teacher_id = (SELECT id FROM teachers WHERE last_name = 'Herman')
  WHERE subject = 'Happiness';

UPDATE classes SET teacher_id = (SELECT id FROM teachers WHERE last_name = 'Bluth')
  WHERE subject = 'Light Treason';

SELECT * FROM students WHERE jobs_applied >1;

SELECT * FROM teachers WHERE last_name = 'Herman' OR last_name = 'Hassara';

SELECT * FROM classes WHERE teacher_id = (SELECT id FROM teachers   WHERE last_name = 'Reid') OR teacher_id = (SELECT id FROM teachers  WHERE last_name = 'Bluth');

DELETE FROM students WHERE jobs_applied = 0;

DELETE FROM classes WHERE subject = 'Underwater Basket Weaving';
DELETE FROM
