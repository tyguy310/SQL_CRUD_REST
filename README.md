# CRUD => SQL Queries
As you've probably noticed already, you'll see a lot of parallels in programming. We just discussed the different CRUD operations. Now we will map them to some SQL operations. Think about before we started learning DB's when we would use `fs` to read and write data from a file. A get request would come into the server, we would use information from that request to determine what data to read from the file and send back as the response. A post request would come into the server with some request payload. We would use information from that request to determine where to write that data with `fs.writeFile`. We will be using the same logic but now we are interacting with an actual database. Think about the following SQL operators and guess which CRUD operations they would map to.

- INSERT
- SELECT
- UPDATE
- DELETE

# CRUD OPERATIONS as they pertain to SQL
![CRUD_REST_SQL](./CRUD_SQL_REST.jpg)
