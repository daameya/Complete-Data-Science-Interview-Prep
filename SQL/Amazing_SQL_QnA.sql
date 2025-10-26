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
    33. How can you retrieve the unique values from a column?
    Answer:
'''
SELECT DISTINCT column_name FROM table_name;

'''
    34. What is the difference between an INNER JOIN and LEFT JOIN?
    Answer: An INNER JOIN returns rows when there is a match in both tables, while a LEFT JOIN returns all rows from
    the left table and the matched rows from the right table. If theres no match , the result is NULL on the right side.
'''

'''
    35. What is normalization and why is it important?
    Answer: Normalization is a process of organizing a database to reduce redundancy and ensure data integrity. It divides 
    larger tables into smaller ones and establishes relationships between them using foreign keys.
'''

'''
    36. Describe 1NF, 2NF and 3NF in database normalization.
    Answer:
    1 NF (first Normal Form): Each table has primary key, and all attributes are atomic (no repeating groups or arrays).
    2 NF (second Normal Form): All non-key attributes are fully functionally dependent on primary key.
    3 NF (third Normal Form): All attributes are functionally dependent only on the primary key. 
'''

'''
    37. What is a subquery, and how is it different from a JOIN?
    Answer: A subquery is query nested inside another query. A subquery can return data that will be used 
    in the main query as a condition. A JOIN is used to combine rows from two or more tables based on a 
    related column.
'''

'''
    38. Write a query to find employees whose salary is above the average salary.
    Answer:
'''
SELECT employee_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

'''
    39. What is a stored procedure in MySQL?
    Answer: A stored procedure is a precompiled group of SQL statements stored in the database. It can be 
    invoked as needed.
'''

'''
    40. How can you handle errors in stored procedure?
    Answer: In MySQL, you can use the DECLARE statement to define error handlers using CONTINUE or EXIT handlers.
'''

'''
    41. How do you prevent SQL injection in your queries?
    Answer: 1. Use parameterized queries or prepared statements, 
    2. Avoid constructing queries with string concatenation using external input.
    3. Always validate and sanitize user input.
'''

'''
    42. What are TRIGGERS in MySQL?
    Answer: Triggers are automatic actions that the database can perform when a specified change occurs 
    (like INSERT, UPDATE, or DELETE operation).
'''

'''
    43. Can you explain the difference between CHAR_LENGTH and LENGTH functions?
    Answer: CHAR_LENGTH returns the number of characters in a string, while LENGTH returns the number of bytes.
    For single-byte character sets, they return the same value.
'''

'''
    44. What is the purpose of GROUP_CONCAT function in MySQL?
    Answer: GROUP_CONCAT returns a concatenated strind of aggregated data values for each group of rows in the
    result set.
'''

'''
    45. Write a SQL query to concatenate all names from the employees table into a single string, separated 
    by commas.
    Answer: 
'''
SELECT GROUP_CONCAT(employee_name) FROM employees;

'''
    46. How can you create index in MySQL?
'''
CREATE INDEX index_name ON table_name(column_name);

'''
    47. What is the difference between a clustered and a non-clustered index?
    Answer: A clustered index determines the physical order of data in a table. A table can have only one
    clustered index. Non-clustered indexes, on the other hand, do not determine the physical order and a table
    can have multiple non-clustred indexes. 
'''

'''
    48. What are views in MySQL? and why are they important?
    Answer: A view is a virtual table based on the result set of an SQL statement. They allow encapsulating 
    complex queries, providing a simplified representation or hiding certain data.
'''

'''
    49. What are transactions in MySQL?
    Answer: Transactions are a sequence of one or more SQL operations executed as a single unit. They ensure
    data integrity, following the ACID properties (Atomicity, Consistency, Isolation Durability).
'''

'''
    50. How do you start and commit a transaction in MySQL?
    Answer: 
'''
START TRANSACTION;
-- sql operations
COMMIT;

'''
    51. What is the difference betweem UNION and UNION ALL?
    Answer: UNION returns unique records from combined dataset, while UNION ALL returns
    all records, including duplicates.
'''

'''
    52. What are the advantages of using stored procedure?
    Answer: They provide better performance as they are precompiled, help in modular 
    programming, offer a security mechanism, and reduce network traffic.
'''

'''
    53. What is the difference between DATEDIFF and TIMESTAMPDIFF in MySQL?
    Answer: Both are used to find the difference between two dates, but TIMESTAMPDIFF
    allows for a more specific interval, like month or year, while DATED returns the 
    difference in days.
'''

'''
    54. How do you clone a TABLE in MySQL?
    Answer: 
'''
CREATE TABLE new_table AS SELECT * FROM existing_table;

'''
    55. Write a SQL query to rank employees based on their salary in descending order?
    Answer:
'''
SELECT employee_name, salary, RANK() OVER(ORDER BY salary DESC) AS ranking
FROM employees;

'''
    56. How do you remove duplicate rows in a table?
    Answer: One common way is to create a new table with distinct rows and delete the
    original table:
'''
CREATE TABLE new_table AS SELECT DISTINCT * FROM original_table;
DROP TABLE original_table;
RENAME TABLE new_table TO original_table;

'''
    57. What are the default storage engines in MySQL?
    Answer: The default storage engine was MyISAM up to MySQL 5.5, but InnoDB became the 
    default from MySQL 5.5 onward. 
'''

'''
    58. What is the purpose of the SET data type in MySQL?
    Answer: The SET type is used to store a set of strings. You can store zero or more 
    string values chosen from a list defined at table creation time.  
'''
CREATE TABLE t1 (colors SET('red', 'blue', 'green'));
INSERT INTO t1 (colors) VALUES ('red,blue');

'''
    59. How do you implement pagination in MySQL?
    Answer: Use LIMIT and OFFSET.
'''
SELECT * FROM table_name 
LIMIT 10 OFFSET 20; -- skips first 20 records and fetches the next 10.

'''
    60. How can you fetch the month part from a DATE field in MySQL?
    Answer: Use the MONTH() function.
'''
SELECT MONTH(date_column) FROM table_name;

'''
    61. How do you convert a DATETIME field into a UNIX timestamp?
    Answer: Use UNIX_TIMESTAMP() function.
'''
SELECT UNIX_TIMESTAMP(datetime_column) FROM table_name;

'''
    62. How can you perform case sensitive search in a column?
    Answer: Using the BINARY keyword.
'''
SELECT * FROM table_name WHERE BINARY column_name = "Value";

'''
    63. How can you transpose rows into columns, and viceversa, in query result?
    Answer: This process is known as "Pivoting". To convert rows to columns, you use 
    a combination of aggregate functions with CASE statements. For reverse, known as 
    "Unpivoting", you can use UNION ALL.
'''
--Pivoting:
SELECT
    sum(CASE WHEN column = 'value1' THEN 1 ELSE 0 END) AS 'Value1',
    SUM(CASE WHEN column = 'value2' THEN 1 ELSE 0 END) AS 'Value2'
FROM table_name;

-- Unpivoting:
SELECT 'Value1' AS 'Column', Value1 AS 'Value' FROM table_name
UNION ALL
SELECT 'Value2' AS 'Column', Value2 AS 'Value' FROM table_name;

'''
    64. How can you get a list of all indexes in a database?
    Answer: 
'''
SHOW INDEXES FROM table_name IN database_name;

'''
    65. How can you optimize a MySQL query?
    Answer: Some methods include using EXPLAIN to analyze the query plan, indexing 
    appropriate columns, avoiding the use of wildcard characters at the start of a LIKE 
    query, and avoiding the use of SELECT *. 
'''