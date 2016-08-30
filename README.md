# CRUD => SQL Queries
As you've probably noticed already, you'll see a lot of parallels in programming. We just discussed the different CRUD operations. Now we will map them to some SQL operations. Think about the following SQL operators and guess which CRUD operations they would map to.

- INSERT
- SELECT
- UPDATE
- DELETE

# Same Same, but Different
Think about before we started learning DB's. We used the `fs` module to read and write data from a file.
  - GET
    - A get request would come into the server
    - We use information from that request to determine what data to read from the file
    - Send it back as the response.
  - POST
    - A post request would come into the server with some request payload.
    - We would use information from that request to determine where to write that data with `fs.writeFile`.
    - Send back some response.

We will be using the same logic but now we are interacting with an actual database.

# CRUD OPERATIONS as they pertain to SQL
![CRUD_REST_SQL
](./CRUD_SQL_REST.jpg)

# Exercise
- A company presents you with the following ERD ![ERD](./erd.png)
- Create a new file called `schema.sql`. Add the code to create the necessary tables shown in the ERD, then follow each step.

## Steps
- INSERT
  - Add each teacher to the teachers table.
  - Add each student to the students table.
  - Add at least 4 different classes, and who's teaching them.
- UPDATE
  - Change the number of jobs you've applied to 3.
  - Change the number of jobs a classmate has applied to 5.
  - Change who's teaching one of the classes.
- SELECT
  - Select all students in the who have applied to at least 1 job.
  - Select all students from one of your classes.
  - Select all students from one of your classes, who've applied to at least 3 jobs.
- DELETE
  - Delete all students who haven't applied to a job yet.
  - Delete the Janky Python class from the classes table!
  - Finally, you're hired! Use DELETE to remove yourself from the students table!
