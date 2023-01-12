-----------------------------------------------
--        SQL Practise: SQL queries          --
--          Melisa Di Giacomo                --
-----------------------------------------------

USE sql_intro;

SHOW TABLES;

create table employees (
	emp_id INT,
	emp_name VARCHAR(50),
	age INT,
	gender VARCHAR(50),
	doj DATE,
	city VARCHAR(50),
	salary DECIMAL(7,1)
);

-- use Mokaroo to generate random data 
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (1, 'Barrett', 77, 'Male', '2022-11-22', 'Gamboula', 64228.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (2, 'Jordan', 67, 'Female', '2022-10-24', 'Rancho Nuevo', 68938.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (3, 'Errol', 72, 'Male', '2022-03-12', 'Wenci', 47886.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (4, 'Sonni', 54, 'Female', '2022-05-24', 'Orhei', 26267.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (5, 'Esther', 90, 'Genderqueer', '2022-04-17', 'Gaphatshwe', 71709.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (6, 'Ericka', 30, 'Female', '2022-05-22', 'Cinyawar', 74171.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (7, 'Goldina', 72, 'Female', '2022-03-09', 'Anyama', 67280.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (8, 'Brandon', 81, 'Polygender', '2022-12-08', 'Damu', 29279.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (9, 'Aidan', 97, 'Female', '2022-12-21', 'Xianbao', 96539.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (10, 'Coop', 61, 'Male', '2022-05-11', 'Saint Louis', 91674.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (11, 'Mayer', 93, 'Male', '2022-07-21', 'Blobo', 57301.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (12, 'Burty', 97, 'Male', '2022-02-28', 'Xinqiao', 38562.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (13, 'Ruby', 53, 'Female', '2022-02-08', 'Duisburg', 73402.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (14, 'Anselma', 90, 'Female', '2022-10-22', 'Mesógi', 48568.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (15, 'Webb', 35, 'Male', '2022-11-04', 'Mollas', 63576.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (16, 'Clayson', 15, 'Male', '2022-03-21', 'Reina Mercedes', 64022.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (17, 'Dyan', 61, 'Female', '2022-10-20', 'Chambas', 93528.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (18, 'Chelsie', 80, 'Female', '2022-01-20', 'Tabouda', 34480.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (19, 'Verena', 3, 'Female', '2023-01-04', 'Marčelji', 39676.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (20, 'Minnie', 48, 'Female', '2022-08-11', 'Sao Hai', 31309.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (21, 'Fidelity', 76, 'Female', '2022-07-03', 'Alcoy', 49573.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (22, 'Silvanus', 78, 'Male', '2022-09-10', 'Tumbes', 35894.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (23, 'Duffie', 25, 'Male', '2022-07-12', 'Kyzylorda', 55146.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (24, 'Nickola', 74, 'Male', '2022-07-18', 'Shamanka', 79362.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (25, 'Ariana', 3, 'Genderqueer', '2022-09-14', 'Cincinnati', 61190.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (26, 'Humbert', 5, 'Male', '2022-01-27', 'Linköping', 93624.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (27, 'Ezra', 45, 'Male', '2022-07-30', 'Kadubera', 83938.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (28, 'Lion', 22, 'Male', '2022-10-01', 'Pointe-Noire', 48895.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (29, 'Silvanus', 94, 'Male', '2022-07-23', 'Malasila', 64472.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (30, 'Giacinta', 100, 'Agender', '2022-11-22', 'Metsavan', 73046.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (31, 'Joete', 58, 'Female', '2022-05-20', 'Prislonica', 66848.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (32, 'Meridith', 74, 'Female', '2023-01-05', 'Aknoul', 88523.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (33, 'Dedie', 54, 'Female', '2022-03-04', 'José de Freitas', 14298.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (34, 'Goran', 83, 'Male', '2022-08-23', 'Ząbkowice Śląskie', 89510.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (35, 'Addi', 89, 'Female', '2023-01-10', 'Moba', 43574.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (36, 'Nata', 74, 'Female', '2022-02-02', 'Fangfan', 54657.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (37, 'Griffin', 4, 'Male', '2022-04-28', 'Meliau', 14100.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (38, 'Garrek', 33, 'Male', '2022-08-08', 'São João dos Patos', 72566.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (39, 'Henderson', 49, 'Male', '2022-09-04', 'Wangjing', 45186.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (40, 'Tanny', 85, 'Male', '2022-07-30', 'Chengxiang', 12562.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (41, 'Darla', 74, 'Agender', '2022-03-02', 'Petrozavodsk', 43548.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (42, 'Vikky', 68, 'Female', '2022-02-01', 'Vostryakovo', 71478.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (43, 'Leopold', 59, 'Male', '2022-03-18', 'Kungälv', 22757.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (44, 'Thaddus', 92, 'Male', '2022-09-21', 'Dolany', 34329.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (45, 'Ginger', 70, 'Female', '2022-05-17', 'Sukorambi', 65553.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (46, 'Ignace', 72, 'Male', '2022-08-01', 'Gammad', 10098.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (47, 'Dana', 90, 'Female', '2022-09-05', 'Qaryat ad Da‘īs', 93273.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (48, 'Ethan', 10, 'Male', '2022-01-26', 'Kebonkaret', 18351.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (49, 'Zedekiah', 59, 'Male', '2022-01-28', 'Khadyzhensk', 81806.7);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (50, 'Pooh', 46, 'Female', '2022-10-25', 'Caucasia', 43363.7);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (51, 'Britney', 77, 'Female', '2022-03-30', 'Chengguan', 38945.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (52, 'Dov', 76, 'Male', '2022-02-27', 'Pétionville', 18475.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (53, 'Marcello', 92, 'Male', '2022-04-23', 'Malamig', 65222.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (54, 'Fawne', 90, 'Female', '2022-05-14', 'Saint-Denis', 85253.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (55, 'Rowen', 43, 'Male', '2022-03-01', 'Álli Meriá', 56737.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (56, 'Gusta', 92, 'Female', '2022-05-17', 'Viña del Mar', 52694.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (57, 'Felic', 79, 'Male', '2022-02-11', 'Bektemir', 98205.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (58, 'Melvin', 34, 'Male', '2022-05-27', 'Žrnovnica', 32908.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (59, 'Rani', 80, 'Agender', '2022-07-08', 'Sinubong', 78187.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (60, 'Giustino', 84, 'Male', '2022-07-31', 'Jomboy', 55873.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (61, 'Clevey', 26, 'Male', '2022-04-28', 'Shuhe', 28998.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (62, 'Darrin', 79, 'Male', '2022-02-10', 'Adiwerna', 28428.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (63, 'Michell', 92, 'Female', '2022-07-01', 'Lagkadás', 86400.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (64, 'Nydia', 89, 'Female', '2022-08-12', 'Torres Novas', 42837.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (65, 'Hilda', 23, 'Female', '2022-09-21', 'Biris Daja', 80953.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (66, 'Cyndi', 37, 'Genderfluid', '2022-03-14', 'Armentières', 72564.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (67, 'Cele', 83, 'Female', '2022-05-04', 'Tuusniemi', 53382.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (68, 'Dolly', 47, 'Female', '2022-01-30', 'Bendo', 75956.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (69, 'Shamus', 39, 'Male', '2022-11-27', 'Bagou', 45344.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (70, 'Suzanne', 89, 'Female', '2022-02-26', 'Medveditskiy', 94633.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (71, 'Row', 39, 'Female', '2022-11-11', 'Agago', 32493.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (72, 'Guntar', 51, 'Male', '2022-02-04', 'Pojan', 63458.7);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (73, 'Illa', 68, 'Female', '2022-08-22', 'Las Flores', 20651.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (74, 'Rivalee', 38, 'Female', '2022-08-07', 'Trubchevsk', 41779.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (75, 'Andrew', 29, 'Male', '2022-03-22', 'Bato', 35941.0);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (76, 'Kaleena', 9, 'Female', '2022-11-10', 'Huyuan', 81458.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (77, 'Abran', 79, 'Male', '2022-10-12', 'Chengdong', 15378.1);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (78, 'Parsifal', 71, 'Male', '2022-01-25', 'Rakitnoye', 29287.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (79, 'Carissa', 62, 'Female', '2022-09-20', 'Huhe', 24521.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (80, 'Claudius', 67, 'Male', '2022-08-24', 'Yangzizhou', 97850.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (81, 'Archie', 9, 'Male', '2022-12-18', 'Wojnicz', 76863.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (82, 'Louis', 5, 'Male', '2022-10-13', 'Dobropillya', 45581.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (83, 'Gaspard', 60, 'Male', '2022-09-01', 'Baisha', 67331.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (84, 'Nickola', 32, 'Male', '2022-04-27', 'Cachipay', 63972.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (85, 'Carmine', 13, 'Genderfluid', '2022-10-09', 'Iwade', 18751.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (86, 'Kora', 6, 'Female', '2022-10-18', 'Mataya', 18535.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (87, 'Roze', 35, 'Female', '2022-08-05', 'Orleans', 67406.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (88, 'Weylin', 100, 'Male', '2022-08-10', 'Le Mans', 71566.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (89, 'Meriel', 70, 'Bigender', '2022-11-29', 'Abashiri', 93628.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (90, 'Akim', 20, 'Male', '2022-04-05', 'Góra', 69114.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (91, 'Ranna', 10, 'Female', '2022-10-15', 'Bidbid', 42419.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (92, 'Tiff', 52, 'Female', '2022-12-19', 'Raub', 99925.9);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (93, 'Micki', 17, 'Female', '2022-09-11', 'Monte da Boavista', 53890.8);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (94, 'Grady', 14, 'Male', '2022-07-18', 'Yuelai', 52513.3);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (95, 'Lila', 64, 'Female', '2022-01-19', 'Votkinsk', 20379.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (96, 'Laurianne', 61, 'Female', '2022-08-09', 'Lila', 85138.5);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (97, 'Baird', 39, 'Male', '2022-04-22', 'Santa Cruz das Flores', 44936.6);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (98, 'Modesta', 52, 'Female', '2022-05-25', 'Tamandaré', 88327.4);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (99, 'Asia', 26, 'Female', '2022-10-22', 'Slobodnica', 39608.2);
insert into employees (emp_id, emp_name, age, gender, doj, city, salary) values (100, 'Russ', 30, 'Male', '2022-01-26', 'Tiglauigan', 24736.3);

SELECT * FROM employees;

SELECT distinct city FROM employees;

-- Average age in each city
SELECT avg(age) FROM employees;
SELECT city, round(avg(age)) AS avg_age FROM employees
GROUP BY city;

-- Average salary by gender
SELECT gender, round(avg(salary),1) AS avg_salary FROM employees
GROUP BY gender;

# Total salary for each city
SELECT city, sum(salary) AS total_salary FROM employees
GROUP BY city;

-- Total number of employees by gender
SELECT gender, count(emp_id) AS n_employees FROM employees
GROUP BY gender
ORDER BY count(emp_id) DESC;

-- Number of emplyees that joined the company each year
SELECT DISTINCT YEAR(doj) FROM employees;
SELECT DISTINCT year(doj) AS year, count(emp_id) AS n_employees FROM employees
GROUP BY year(doj);

-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions
-- Gender where there are more than 2 employees
SELECT gender, count(emp_id) AS n_employees FROM employees
GROUP BY gender
HAVING count(emp_id) > 2
ORDER BY count(emp_id) DESC;

-- Now exclude information of male and female
SELECT gender, count(emp_id) AS n_employees FROM employees
WHERE gender != "Female" AND gender != "Male"
GROUP BY gender
HAVING count(emp_id) > 2
ORDER BY count(emp_id) DESC;

-- Cities where average salary is higher than 90000
SELECT city, avg(salary) AS avg_salary FROM employees
GROUP BY city
HAVING avg(salary) > 90000
ORDER BY avg(salary) DESC;

-- Cities where average salary is less than 20000
-- The having clause can contain a condition not present in the select clause
SELECT city, age, gender FROM employees
GROUP BY city
HAVING avg(salary) < 20000
ORDER BY avg(salary) DESC;


-- Create a sales table
CREATE TABLE sales (
	product_id INT,
	sell_price DECIMAL(5,1),
	quantity INT,
	city VARCHAR(50)
);

insert into sales (product_id, sell_price, quantity, city) values (121, 502.9, 8, 'Rancho Nuevo');
insert into sales (product_id, sell_price, quantity, city) values (121, 830.1, 9, 'Rakitnoye');
insert into sales (product_id, sell_price, quantity, city) values (121, 349.1, 4, 'Orleans');
insert into sales (product_id, sell_price, quantity, city) values (121, 861.3, 6, 'Bato');
insert into sales (product_id, sell_price, quantity, city) values (121, 958.0, 5, 'Pojan');
insert into sales (product_id, sell_price, quantity, city) values (121, 211.0, 7, 'Las Flores');
insert into sales (product_id, sell_price, quantity, city) values (121, 154.6, 7, 'Cachipay');
insert into sales (product_id, sell_price, quantity, city) values (122, 932.1, 4, 'Le Mans');
insert into sales (product_id, sell_price, quantity, city) values (122, 433.9, 2, 'Bidbid');
insert into sales (product_id, sell_price, quantity, city) values (122, 796.4, 4, 'Bendo');
insert into sales (product_id, sell_price, quantity, city) values (122, 365.1, 9, 'Adiwerna');
insert into sales (product_id, sell_price, quantity, city) values (122, 840.6, 10, 'Gamboula');
insert into sales (product_id, sell_price, quantity, city) values (122, 368.3, 1, 'Jonboy');
insert into sales (product_id, sell_price, quantity, city) values (123, 306.7, 8, 'Viña del Mar');
insert into sales (product_id, sell_price, quantity, city) values (123, 752.0, 4, 'Vannes');
insert into sales (product_id, sell_price, quantity, city) values (123, 994.0, 6, 'Zhenxing');
insert into sales (product_id, sell_price, quantity, city) values (123, 944.0, 9, 'Agua Fría');
insert into sales (product_id, sell_price, quantity, city) values (123, 848.0, 10, 'Zhaowu');
insert into sales (product_id, sell_price, quantity, city) values (123, 905.2, 6, 'Lianzhou');
insert into sales (product_id, sell_price, quantity, city) values (124, 342.7, 9, 'Tonjongsari');
insert into sales (product_id, sell_price, quantity, city) values (124, 82.0, 7, 'Pingshan');
insert into sales (product_id, sell_price, quantity, city) values (124, 117.9, 1, 'Ambatondrazaka');
insert into sales (product_id, sell_price, quantity, city) values (124, 307.8, 5, 'Su-dong');
insert into sales (product_id, sell_price, quantity, city) values (125, 798.4, 10, 'Liutang');
insert into sales (product_id, sell_price, quantity, city) values (125, 353.2, 10, 'Tobias Barreto');
insert into sales (product_id, sell_price, quantity, city) values (125, 348.1, 5, 'Shuangxi');
insert into sales (product_id, sell_price, quantity, city) values (125, 222.8, 9, 'Konibodom');
insert into sales (product_id, sell_price, quantity, city) values (125, 513.8, 1, 'Damu');
insert into sales (product_id, sell_price, quantity, city) values (125, 158.9, 10, 'Orhei');
insert into sales (product_id, sell_price, quantity, city) values (125, 478.5, 6, 'Wenci');

SELECT * FROM sales;

-- Remove the table (from the database)
-- DROP TABLE sales;

-- Remove only the content of a table
-- It does not change the structure
-- TRUNCATE TABLE sql_intro.sales;

-- Revenue
SELECT product_id, sum(sell_price * quantity) AS revenue FROM sales
GROUP BY product_id;

-- Create table c_product
CREATE TABLE c_product (
	product_id INT,
	cost_price FLOAT);

insert into c_product values (121, 270.0);
insert into c_product values (122, 250.0);
insert into c_product values (123, 245.0);
insert into c_product values (124, 223.0);
insert into c_product values (125, 237.0);

SELECT * FROM c_product;

-- Combine two tables
-- The INNER JOIN keyword selects records that have matching values in both tables
SELECT c.product_id, round(sum((s.sell_price - c.cost_price) * s.quantity),1) AS profit
FROM sales AS s INNER JOIN c_product as c
WHERE s.product_id = c.product_id
GROUP BY c.product_id;


