'''More than 100 SQL interview questions with answers, ranging from beginner to intermediate level:'''

'''
    1. How do you create a new database in SQL
    Answer:
'''
CREATE DATABASE database_name;

'''
    2. How do you create a new table in SQL?
    Answer:
'''
CREATE TABLE table_name (
    column1 datatype1,
    column2 datatype2,
    ....
);

'''
    3. How do you insert values into a table?
    Answer:
'''
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2,....);

'''
    4. How do you retrieve all the columns from a table?
    Answer:
'''
SELECT * FROM table_name;

'''
    5. How can you retrieve specific columns from a table?
    Answer:
'''
SELECT column1, column2 From table_name;

'''
    6. What is the use of the WHERE clause?
    Answer: To filter records based on a specific condition. 
'''

'''
    7. How would you fetch data from  a table where the age is greater than 25?
'''
SELECT * FROM table_name WHERE age > 25;

'''
    8. What are the different types of SQL JOINs?
    Answer: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN
'''

'''
    9. Write a SQL query to join two tables: students and courses, assuming each student is enrolled
    in a course and they share a common column course_id.
'''
SELECT * FROM students INNER JOIN courses ON students.course_id = courses.course_id;

'''
    10. What is the difference between the HAVING clause and the WHERE clause?
    Answer: WHERE filters records before aggregating in GROUP BY, whereas HAVING filters after aggregation.
'''

'''
    11. How would you list the number of students enrolled in each course, but only display courses with more than 5 students?
    Answer:
'''
SELECT course_id, COUNT(student_id) as number_of_students
FROM enrollments
GROUP BY course_id
HAVING number_of_students > 5;

'''
    12. What is the LIKE operator used for?
    Answer: To search for a specific pattern in a column.
'''

'''
    13. Write a SQL query to find all students whose names start with 'A'.
    Answer:
'''
SELECT * FROM students WHERE name LIKE 'A%';

'''
    14. How would you update a record in a table?
    Answer: Use WHERE clause to specify a condition
'''
UPDATE table_name
SET column1 = value1, column2 = value2, ....
WHERE some_column = some_value;

'''
    15. How can you delete records from a table?
'''
DELETE FROM table_name WHERE condition;

'''
    16. How to drop a table?
    Answer:
'''
DROP TABLE table_name;

'''
    17. What is the use of the ALTER table command?
    Answer: To modify the current table structure, like adding, deleting, or modifying columns.
'''
'''
    18. How would you add a new column email to the students table?
    Answer:
'''
ALTER TABLE students ADD COLUMN email VARCHAR(255);

'''
    19. What does the DISTINCT keyword do in SQL query?
    Answer: It removes duplicate rows from the result set. 
'''

'''
    20. Write a query to find the total number of distinct courses from the enrollments table.
    Answer:
'''
SELECT COUNT(DISTINCT course_id) FROM enrollments;

'''
    21. What does the EXISTS operator do?
    Answer: It tests for existence of any record in a subquery.
'''

'''
    22. Write a SQL query to find students enrolled in a course.
    Answer:
'''
SELECT student_id FROM students
WHERE EXISTS (SELECT 1 FROM enrollments WHERE students.student_id = enrollments.student_id);

'''
    23. How can you CONCATENATE columns in MySQL?
    Answer: Using the CONCAT() function.
'''

'''
    24. Write a query to get full name of a student, given first_name and last_name columns.
    Answer:
'''
SELECT CONCAT(first_name, ' ', last_name) as full_name FROM students;

'''
    25. How do you find the total number of rows in a table?
    Answer:
'''
SELECT COUNT(*) FROM table_name;

'''
    26. How can you fetch the first 5 records from a table?
    Answer:
'''
SELECT * FROM table_name LIMIT 5;

'''
    27. What is the difference between CHAR and VARCHAR data types?
    Answer: CHAR is fixed-length while VARCHAR is variable-length. 
'''

'''
    28. How can you change the data type of a column?
    Answer:
'''
ALTER TABLE table_name MODIFY column_name NEW_DATA_TYPE;

'''
    29. Write a SQL query to find the 3rd highest salary from a salaries table.
    Answer:
'''
SELECT DISTINCT salary FROM salaries
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

'''
    30. How do you create a primary key in a table?
    Answer:
'''
ALTER TABLE table_name ADD PRIMARY KEY (column_name);

'''
    31. What is a foreign key constraint and why is it used?
    Answer: A foreign key constraint establishes a link between two tables and ensures that records in one table
    correspond to records in another. Its used to maintain referrential integrity in the database. 
'''

'''
    32. How can you add a foreign key constraint to an existing table?
    Answer:
'''
ALTER TABLE table_name ADD FOREIGN KEY (column_name) REFERENCES other_table(other_column);

'''
    33. 
'''


