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
- Build a schema file that accomplishes this schema, then complete each task.

## Steps
- Create a new file called `schema.sql`. Add the code to create the necessary tables shown in the ERD.

- Then, create a SQL file for each table. Add an Insert statement to each associated file to seed the tables.

- Let's change some of that data using UPDATE. Add the necessary UPDATE statement to change the number of jobs you've applied to.

- Now let's change who's teaching what class. Add the necessary UPDATE statement to change the teacher of the Promises class to Ben, and have Wes teach "Defense Against the Dark Queries"

- Finally, you're hired! Use DELETE to remove yourself from the students table!
