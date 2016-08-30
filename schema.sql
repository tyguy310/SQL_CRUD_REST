-- restart database
DROP DATABASE IF EXISTS galvanize;
CREATE DATABASE galvanize;
\connect galvanize;

-- create tables
CREATE TABLE students (
  id serial primary key,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  jobs_applied int DEFAULT 0
);

CREATE TABLE teachers (
  id serial primary key,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL
);

CREATE TABLE classes (
  id serial primary key,
  subject varchar(255) NOT NULL
);

-- add teacher/classes references
ALTER TABLE classes
ADD teacher_id integer REFERENCES teachers(id);

CREATE TABLE classes_students (
  class_id integer REFERENCES classes(id),
  student_id integer REFERENCES students(id);
