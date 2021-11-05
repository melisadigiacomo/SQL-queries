--------------------------------------------------------------
--      Practical SQL: Some queries with world database     --
--                     Melisa Di Giacomo                    --
--------------------------------------------------------------

USE world;

SELECT * FROM country;
SELECT * FROM city;


-- DESC: describe database
DESC city;


-- DISTINCT: filters duplicate values, returns rows of specified column
-- Return name of continents
SELECT DISTINCT continent
FROM country;


-- AS: aliases (temporary name to a table or column)
SELECT name AS City, population AS Pop
FROM city;


-- ORDER BY: sort the result-set
SELECT name AS City, population AS Pop
FROM city 
ORDER BY name;

SELECT name City, District, population Pop
FROM city
ORDER BY name ASC, population DESC;


-- WHERE: filter
-- Equal to: =
SELECT name AS City, population AS Pop
FROM city
WHERE name = "mexico";

-- Greater than: >
SELECT name AS Country, IndepYear AS IndependencyYear
FROM country
WHERE indepYear > 1995;

-- Different from: <> or !=
SELECT name AS Country, IndepYear AS IndependencyYear
FROM country
WHERE indepYear != 1995;

-- AND
SELECT name AS Country, IndepYear AS IndependencyYear
FROM country
WHERE indepYear = 1960
AND name like 'M%';

-- OR
SELECT name AS Country, IndepYear AS IndependencyYear
FROM country
WHERE indepYear = 1960
OR name like 'M%';


-- LIKE: in a WHERE clause to search for a specific pattern in a column
-- Cities starting with M
SELECT name AS City, population AS Pop
FROM city
WHERE name 
LIKE 'M%';

-- Cities with Y as second letter
SELECT name AS City, population AS Pop
FROM city
WHERE name 
LIKE '_Y%';

-- Countries whose Independency years finish in 91
SELECT name AS City, IndepYear AS IndependencyYear
FROM country
WHERE indepYear 
LIKE '%91';

-- Countries whose Independency years don't finish in 90
SELECT name AS Country, IndepYear AS IndependencyYear
FROM country
WHERE indepYear 
NOT LIKE '%90';


-- BETWEEN: select values within a given range inclusive
-- Countries whose Independency years are between 1990 and 1995
SELECT name AS Country, IndepYear AS IndependencyYear
FROM country
WHERE indepYear between 1990 and 1995;

-- Countries whose names don't start with letters A and M
SELECT name AS Country, IndepYear AS IndependencyYear
FROM country
WHERE name not between 'A' and 'M';


-- IN: specify multiple values in a WHERE clause
-- Usefull to avoid multiple OR conditions
SELECT name AS Country, IndepYear AS IndependencyYear
FROM country
WHERE IndepYear
IN (1945, 1990, 1994);


-- NULL: field with no value
SELECT *
FROM country
WHERE IndepYear IS NULL;


-- AGGREGATE FUNCTIONS
-- SUM(), MAX(), MIN(), AVG()
SELECT continent, SUM(population), MAX(population), MIN(population), AVG(population)
FROM country
GROUP BY continent;

-- COUNT()
-- All rows: total countries
SELECT count(*) AS TotalCountries
FROM country;
-- Not null unique values: total continents
SELECT count(DISTINCT Continent) AS TotalContinents
FROM country;

-- SQL JOINS
SELECT *
FROM city
INNER JOIN country ON country.code = city.CountryCode;


-- GROUP BY: often used with aggregate functions to group the result-set
SELECT continent, SUM(Population) AS TotalPop
FROM country
GROUP BY continent;


-- HAVING: conditions to aggregate functions
SELECT continent, SUM(Population) AS TotalPop
FROM country
GROUP BY continent
HAVING SUM(Population) > 350000000;


-- SUBQUERIES
-- Return the countries with more population than Japan
SELECT name AS country, Population
FROM country
WHERE Population > 
    (SELECT Population
    FROM country
    WHERE name = 'Japan')
ORDER BY Population DESC;


-- More practice

-- Return capital cities from countries in South America
SELECT country.name AS Country, continent AS Continent, city.name AS City
FROM country, city
WHERE continent LIKE 'South America'
AND country.capital = city.id;

-- Return independency years and their number of countries (>1)
SELECT IndepYear AS IndependencyYear, count(name) AS NumberCountries
FROM country
WHERE IndepYear IS NOT NULL
GROUP BY IndepYear
HAVING count(name)>1
ORDER BY IndepYear;

-- Return countries and city districts whose population is less than 10 thousand people
SELECT country.name AS Country, city.District, sum(city.Population) AS TotalPopulation
FROM city
INNER JOIN country ON country.code = city.CountryCode
GROUP BY city.District, country.name
HAVING sum(city.Population) < 10000
ORDER BY sum(city.Population) DESC;