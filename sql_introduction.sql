-----------------------------------------------
--     SQL Practise: SQL introduction        --
--          Melisa Di Giacomo                --
-----------------------------------------------

-- SHOW databases to check it in the list of databases
SHOW databases;

-- CREATE DATABASE to create a new SQL database
-- CREATE DATABASE IF NOT EXISTS sql_intro;

-- CREATE TABLE statement is used to create a new table in a database
-- Give names of cols and datatypes
CREATE TABLE emp_details (
Name varchar(25),
Age int,
sex char(1),
doj date,
city varchar(15),
salary float);

-- DESCRIBE or DESC(both are same) command to describe the structure of a table
DESCRIBE emp_details;

-- INSERT INTO statement is used to insert new records in a table.
INSERT INTO emp_details
VALUES("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("Shane", 30, "M", "1999-06-25", "Seattle", 55000),
("Marry", 28, "F", "2009-03-10", "Boston", 62000),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("Sara", 32, "F", "2017-10-27", "New York", 72000),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000);

-- Another way: Specify both the column names and the values to be inserted
-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...); 

-- SELECT statement is used to select data from a database. The data returned is stored in a result table, called the result-set.
SELECT * FROM emp_details;

-- SELECT DISTINCT statement is used to return only distinct (different) values 
SELECT DISTINCT city FROM emp_details;

-- The COUNT() function provides the number of rows that matches a specified condition.
SELECT COUNT(name) AS count_name FROM emp_details;

-- SUM() function provides the total sum of a numeric column
SELECT SUM(salary) FROM emp_details;

-- AVG() function provides the average value of a numeric column
SELECT AVG(salary) FROM emp_details;

-- SELECT specific cols
SELECT name, sex, city FROM emp_details;

-- WHERE is used to filter records
SELECT * FROM emp_details WHERE age > 30;
SELECT Name, sex, city FROM emp_details WHERE sex = 'F';

-- WHERE clause can be combined with AND, OR, and NOT operators
-- The OR operator displays a record if any of the conditions separated by OR is TRUE.
SELECT * FROM emp_details WHERE
city = 'Chicago' OR city = 'Austin';

-- Another way: using IN
-- IN operator allows you to specify multiple values in a WHERE clause
-- The IN operator is a shorthand for multiple OR conditions
SELECT * FROM emp_details WHERE
city  IN('Chicago', 'Austin');

-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates
-- The BETWEEN operator is inclusive: begin and end values are included
SELECT * FROM emp_details WHERE
doj BETWEEN '2000-01-01' AND '2010-12-31';

-- The AND operator displays a record if all the conditions separated by AND are TRUE
SELECT * FROM emp_details WHERE
age > 30 AND sex = 'M';

-- The GROUP BY statement groups rows that have the same values into summary rows
-- The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG())
-- to group the result-set by one or more columns
SELECT sex, SUM(salary) AS total_salary FROM emp_details
GROUP BY sex;

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order
-- The ORDER BY keyword sorts the records in ascending order by default
-- To sort the records in descending order, use the DESC keyword
SELECT * FROM emp_details ORDER BY salary DESC;

-- CHARACTER LENGHT
SELECT Name, char_length(Name) AS total_len
FROM emp_details;

-- CONCAT()
SELECT Name, age, concat(Name, ' ', age) AS name_age
FROM emp_details; 

-- BUILT-IN SQL FUNCTIONS

-- STRING FUNCTIONS
SELECT upper('Argentina') AS upper_case;
SELECT lcase('ARGENTINA') AS lower_case;
SELECT char_length('ARGENTINA') AS total_len;
SELECT reverse('Neuquen');

-- REMOVE SPACES
SELECT length('     Five spaces are at the beginning of this string.') AS total_len;
SELECT ltrim('     Five spaces are at the beginning of this string.') AS 'Without spaces';
SELECT length(ltrim('     Five spaces are at the beginning of this string.')) AS 'Lenght without spaces';
-- rtrim() removes the spaces at the end
-- trim() remove both the spaces at the beginning and the end
SELECT trim('    Argentina   ');

SELECT (20-5) AS substract;
SELECT length('ARGENTINA') AS total_len;
SELECT lower('ARGENTINA');
SELECT curdate();
SELECT now();
SELECT concat('ARGENTINA ', "is ", "in America") AS concat;
SELECT position("America" IN "Argentina is in America");
