USE GB;
DROP TABLE workers;
CREATE TABLE workers (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
surname VARCHAR(50) NOT NULL,
speciality VARCHAR(50) NOT NULL,
seniority INT NOT NULL,
salary INT NOT NULL,
age INT NOT NULL,
PRIMARY KEY (id),
UNIQUE INDEX `id_UNIQUE` (id ASC) VISIBLE);

INSERT INTO workers (name,surname,speciality,seniority,salary,age) VALUES
('Вася', 'Васькин', 'начальник', 40, 100000, 60),
('Петя', 'Петькин', 'начальник', 8, 70000, 30),
('Катя', 'Катина', 'инженер', 2, 70000, 25),
('Саша', 'Сашина', 'инженер', 12, 50000, 35),
('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
('Петр', 'Петров', 'рабочий', 20, 25000, 40),
('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
('Люся', 'Люськина', 'уборщица', 10, 10000, 49);


-- Отсортируйте поле “зарплата” в порядке убывания и возрастания

SELECT * FROM workers
ORDER BY salary ASC;

SELECT * FROM workers
ORDER BY salary DESC ;

-- Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк 
-- с наибольшей заработной платой (возможен подзапрос)

SELECT * FROM
(SELECT * FROM workers
ORDER BY salary DESC 
LIMIT 5) AS my_filter
ORDER BY salary ASC;

-- Выполните группировку всех сотрудников по специальности , 
-- суммарная зарплата которых превышает 100000

SELECT 
	speciality,
    SUM(salary) AS total_salary
FROM workers
GROUP BY
	speciality
HAVING 
	total_salary >100000;
