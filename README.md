# CRUD => SQL Queries
As you've probably noticed already, you'll see a lot of parallels in programming. We just discussed the different CRUD operations. Now we will map them to some SQL operations. Think about the following SQL operators and guess which CRUD operations they would map to.

- INSERT
- SELECT
- UPDATE
- DELETE

# Same Same, but Different
Think about when we used an http server and the `fs` module to read and write data to and from a file.

![CRUD_REST_SQL](./CRUD_SQL_REST.jpg)

Now we are reading and writing to an actual DB.


# Exercise
Build a schema for students, teachers, and "classes", in g30. Create a new file called `schema.sql`. Add the code to create the necessary tables shown in the ERD, then complete each step.

 ![ERD](./erd.png)


## Steps
- INSERT
  - A statement to insert all students has been added for you in `students.sql`
  - Add each teacher to the teachers table.
- UPDATE
  - Change the number of jobs you've applied to 3.
  - Change the number of jobs a classmate has applied to 5.
  - Change who's teaching one of the classes.
- SELECT
  - Select all classes
  - Select all students who have applied to at least 1 job.
  - Select all teachers whose last name are Herman or Hassara.
- DELETE
  - Remove all students who have applied to at least 5 jobs yet.
  - Remove
  - Finally, you're hired! Remove yourself from the students table!
