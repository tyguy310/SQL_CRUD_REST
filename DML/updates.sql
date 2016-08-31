-- UPDATE students SET jobs_applied=3
--   WHERE first_name = 'Tyler' AND last_name = 'Maier';
--
-- UPDATE students SET jobs_applied=72
--   WHERE first_name = 'Alex' AND last_name = 'NYE';
--
-- UPDATE classes SET teacher_id = (SELECT id FROM teachers WHERE last_name = 'Herman')
--   WHERE subject = 'Happiness';
--
-- UPDATE classes SET teacher_id = (SELECT id FROM teachers WHERE last_name = 'Bluth')
--   WHERE subject = 'Light Treason';
--
-- SELECT * FROM students WHERE jobs_applied >1;
--
-- SELECT * FROM teachers WHERE last_name = 'Herman' OR last_name = 'Hassara';
--
-- SELECT * FROM classes WHERE teacher_id = (SELECT id FROM teachers   WHERE last_name = 'Reid') OR teacher_id = (SELECT id FROM teachers  WHERE last_name = 'Bluth');
--
-- DELETE FROM students WHERE jobs_applied = 0;
--
-- DELETE FROM classes WHERE subject = 'Underwater Basket Weaving';
-- DELETE FROM

-- Operator

UPDATE students SET jobs_applied = 5 WHERE LENGTH(first_name) > 4;

UPDATE students SET jobs_applied = 4 WHERE last_name ~* 't';
-- UPDATE students SET jobs_applied = 4 WHERE LOWER(last_name) LIKE '%t%';

UPDATE students SET jobs_applied = 3 WHERE LENGTH(CONCAT(first_name, last_name)) > 12;

UPDATE students SET jobs_applied = 2 WHERE first_name ~* '^a' OR last_name ~* 'd';

UPDATE students SET jobs_applied = 1 WHERE LENGTH(first_name) < 5 AND last_name ~* '^b';

UPDATE students SET jobs_applied = 10 WHERE jobs_applied = 0;

-- JOIN

SELECT * FROM teachers t INNER JOIN classes c ON t.id = c.teacher_id;

SELECT t.first_name || ' ' || t.last_name AS name, t.id AS teacher_id, subject AS Class FROM teachers t JOIN classes c ON t.id = c.teacher_id;

SELECT student_id, first_name, last_name FROM classes_students cs JOIN students ON cs.student_id = students.id;

SELECT DISTINCT student_id, first_name, last_name FROM classes_students cs JOIN students ON cs.student_id = students.id ORDER BY first_name ASC;

SELECT DISTINCT (s.id) ,first_name, last_name, cs.class_id FROM students s LEFT JOIN classes_students cs ON s.id=cs.student_id WHERE cs.class_id is null ORDER BY first_name ASC;

SELECT * FROM classes_students cs JOIN classes c ON c.id = cs.class_id JOIN students s ON s.id = cs.student_id ORDER BY class_id ASC;

SELECT c.id, subject, COUNT (c.id) FROM classes_students cs JOIN classes c ON c.id = cs.class_id JOIN students s ON s.id = cs.student_id GROUP BY (c.id) ORDER BY count ASC;
