-- UPDATE all students to have applied to 0 jobs.

UPDATE students SET jobs_applied = 0;

-- UPDATE all students whose first_name is more than 4 characters to have applied to 5 jobs.

UPDATE students SET jobs_applied = 5 WHERE LENGTH(first_name) > 4;

-- UPDATE all students whose last_name contains a letter 't' (case insensitive) to have applied to 4 jobs.
UPDATE students SET jobs_applied = 4 WHERE last_name ~* 't';
-- UPDATE students SET jobs_applied = 4 WHERE LOWER(last_name) LIKE '%t%';

-- UPDATE all students whose first_name and last_name combined is greater than 12 characters to have applied to 3 jobs.

UPDATE students SET jobs_applied = 3 WHERE LENGTH(CONCAT(first_name, last_name)) > 12;

-- UPDATE all students whose first_name starts with the letter a OR whose last_name contains the letter d (case insensitive) to have applied for 2 job.

UPDATE students SET jobs_applied = 2 WHERE first_name ~* '^a' OR last_name ~* 'd';

-- UPDATE all students whose first_name is less than five characters AND whose last name begins with a B to have applied for 1 job.

UPDATE students SET jobs_applied = 1 WHERE LENGTH(first_name) < 5 AND last_name ~* '^b';

-- UPDATE all students who currently have applied for 0 jobs to have applied for 10 jobs.

UPDATE students SET jobs_applied = 10 WHERE jobs_applied = 0;
