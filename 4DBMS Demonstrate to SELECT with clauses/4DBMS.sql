CREATE TABLE employees(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	age INT,
	department VARCHAR(50)
);

INSERT INTO employees (id, name, age, department)
	VALUES (1, 'John Doe', 30, 'Sales'),
	(1, 'John Doe', 30, 'Sales'),
	(1, 'John Doe', 30, 'Sales'),
	(1, 'John Doe', 30, 'Sales'),
	(1, 'John Doe', 30, 'Sales'),
	(1, 'John Doe', 30, 'Sales'),
	(1, 'John Doe', 30, 'Sales'),
	(1, 'John Doe', 30, 'Sales');

SELECT * FROM employees;

SELECT * FROM employees WHERE age > 30;

SELECT name, age FROM employees ORDER BY age ASC;