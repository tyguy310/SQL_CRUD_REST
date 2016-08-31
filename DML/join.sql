-- Return a table that shows the first and last name of all teachers, their ids, and the subject of the class they teach

SELECT * FROM teachers t INNER JOIN classes c ON t.id = c.teacher_id;

-- Modify the above query so that the first name and last name appear combined as a single column called "name" (HINT: Use CONCAT())

SELECT t.first_name || ' ' || t.last_name AS name, t.id AS teacher_id, subject AS Class FROM teachers t JOIN classes c ON t.id = c.teacher_id;

-- Return a table that shows the id, first, and last name of students who are in any class at all; there will likely be duplicates in the list

SELECT student_id, first_name, last_name FROM classes_students cs JOIN students ON cs.student_id = students.id;

-- Modify the above query so that there are no duplicates and it's ordered by the students first name (HINT: DISTINCT())

SELECT DISTINCT student_id, first_name, last_name FROM classes_students cs JOIN students ON cs.student_id = students.id ORDER BY first_name ASC;

-- Modify the above query to only show those students who do not appear in the above list. That is, the have not signed up for any classes. An inner join will not work here!

SELECT DISTINCT (s.id) ,first_name, last_name, cs.class_id FROM students s LEFT JOIN classes_students cs ON s.id=cs.student_id WHERE cs.class_id is null ORDER BY first_name ASC;

-- Starting the with classes_students table, join all information from both associated tables and order by the class id

SELECT * FROM classes_students cs JOIN classes c ON c.id = cs.class_id JOIN students s ON s.id = cs.student_id ORDER BY class_id ASC;

-- Modify the above statement so that it only returns the class id, the class subject, and the number of students in the class (HINT: COUNT())

SELECT c.id, subject, COUNT (c.id) FROM classes_students cs JOIN classes c ON c.id = cs.class_id JOIN students s ON s.id = cs.student_id GROUP BY (c.id) ORDER BY count ASC;
