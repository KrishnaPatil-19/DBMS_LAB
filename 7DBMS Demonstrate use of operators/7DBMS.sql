/*Arithmetic Operators*/
-- Addition (+)
SELECT id, num1, num2, num1 + num2 AS sum FROM numbers;

-- Subtraction (-)
SELECT id, unm1, num2, num1 - num2 AS difference FROM numbers;

-- Multiplication (*)
SELECT id, unm1, num2, num1 * num2 AS product FROM numbers;

-- Division (/)
SELECT id, unm1, num2, num1 / num2 AS quotient FROM numbers;

-- Modulus (%)
SELECT id, unm1, num2, num1 % num2 AS remainder FROM numbers;

-- Exponention
SELECT id, num1, num2, POWER(num1, num2) AS power FROM numbers;

/*Comparison operators*/
-- Equal to (=)
SELECT id, name, price, quantity FROM products WHERE price = 15.99;

-- Less than (<)
SELECT id, name, price, quantity FROM products WHERE price < 15;

-- Greater than (>)
SELECT id, name, price, quantity FROM products WHERE price > 15;

-- Less than equal to (<=)
SELECT id, name, price, quantity FROM products WHERE price <= 6;

-- Greater than equal to (>=)
SELECT id, name, price, quantity FROM products WHERE price >= 20;

-- Not Equal (<>)
SELECT id, name, price, quantity FROM products WHERE quantity <> 0;

/*Logical operators*/
-- AND
SELECT * FROM emp WHERE DeptNo = 33 AND Salary > 65000;

-- OR
SELECT * FROM emp WHERE salary < 70000 OR DeptNo = 33;

-- NOT
SELECT * FROM emp WHERE NOT Loc = 'Mumbai';
