/*Operator based queries*/
-- Simple query 
    -- to retrieve employees with age between 30 & 4@ and salary greater than 60000
    SELECT * 
    FROM majdoor 
    WHERE age BETWEEN 30 AND 40 
    AND salary > 60000;

-- Nested query
/*This query first selects the maximum salary of employees in the “Sales” department using a subquery in parentheses. It then selects the name and department of the employee whose salary matches the maximum salary using the "=" operator.*/
SELECT name, department
FROM majdoor
WHERE salary = (
    SELECT MAX(salary)
    FROM majdoor
    WHERE department = ‘Sales’
);

/*Joins based queries*/
-- Simple query
    -- Inner Join
    /*This query selects the name of each employee and the name of their department using an inner join on the “department_id" column of the “employees” table and the “id" column of the “departments” table.*/
    SELECT karmchari.name, vibhag.name 
    FROM karmchari 
    INNER JOIN vibhag 
    ON karmchari.department_id = vibhag.id;

    -- Left Join
    /*This query selects the name of each department and the name of the employee who works in it, if any, using a left join on the "id" column of the “departments” table and the “department_id" column of the “employees” table. Departments with no employees will have a NULL value in the "name" column of the “employees” table.*/
    SELECT vibhag.name, karmchari.name 
    FROM vibhag 
    LEFT JOIN karmchari 
    ON vibhag.id = karmchari.department_id;

    -- Right Join
    /*This query selects the name of each employee and the name of their department, if any, using a right join on the “department_id" column of the “employees” table and the “id” column of the “departments” table. Employees who do not have a department assigned will have a NULL value in the “name" column of the “departments” table.*/
    SELECT karmchari.name, vibhag.name 
    FROM karmchari 
    RIGHT JOIN vibhag 
    ON karmchari.department_id = vibhag.id;

    -- Left-outer join
    /*The query selects the “id” and “name" columns from the "employees" table, as well as the “name" column from the “departments” table. The result set will include all employees, even those who are not associated with any department (because they have a NULL value in the “department_id" column). If an employee is associated with a department, the department name will be included in the result set.*/
    SELECT karmchari.id, karmchari.name, vibhag.name 
    FROM karmchari 
    LEFT JOIN vibhag 
    ON karmchari.department_id = vibhag.id;

    -- Right-outer join/(Full outer join) (there is no full outer join in MySQL)
    /*Suppose we want to retrieve a list of all departments and all employees, including departments with no employees and employees who do not have a department assigned. We can use a full outer join to accomplish this.*/
    SELECT vibhag.name, karmchari.name 
    FROM vibhag 
    LEFT JOIN karmchari 
    ON vibhag.id = karmchari.department_id 
    UNION 
    SELECT vibhag.name, karmchari.name 
    FROM vibhag 
    RIGHT JOIN karmchari 
    ON vibhag.id = karmchari.department_id 
    WHERE vibhag.id IS NULL OR karmchari.id IS NULL;

-- Nested query
    -- INNER JOIN
    /*This query first selects the "id" column from the "departments" table for the department with the name "Sales". The result of this subquery is then used as a filter condition in the outer query, which selects all columns from the “employees” table where the “department_id" column matches any of the values returned by the subquery.*/
    SELECT *
    FROM karmchari
    WHERE department_id IN (
        SELECT id 
        FROM vibhag 
        WHERE name = ‘Sales’
    );

    -- NESTED LEFT OUTER JOIN
    /*This query uses a similar approach to the inner join example, but also includes a condition to select all employees with a NULL value in the “department_id" column.*/
    SELECT *
    FROM vibhag 
    WHERE id IN (
        SELECT department_id 
        FROM karmchari 
        WHERE department_id IS NOT NULL
    ) 
    OR id NOT IN (
        SELECT department_id 
        FROM karmchari 
        WHERE department_id IS NOT NULL
    );

    -- NESTED RIGHT OUTER JOIN
    /*This query uses two subqueries to perform a right outer join between the “employees” and “departments” tables. The first subquery selects all non-null values of the “department_id” column from the “employees” table, which are then used to filter the "id" column of the “departments” table in the outer query. The second subquery selects all null values of the “department_id" column from the “employees” table, and includes a condition to select all rows from the “departments” table where the "id" column does not match any of the non-null values returned by the first subquery.*/
    SELECT *
    FROM vibhag
    WHERE id IN (
        SELECT department_id 
        FROM karmchari 
        WHERE department_id IS NOT NULL
    ) 
    OR id NOT IN (
        SELECT department_id 
        FROM karmchari 
        WHERE department_id IS NOT NULL
    );

    -- NESTED FULL OUTER JOIN
    /*This query uses two subqueries to perform a full outer join between the "employees" and “departments” tables. The first subquery selects all values of the "id" column from the "departments" table, which are then used to filter the "department_id" column of the "employees" table in the outer query. The second subquery selects all non-null values of the “department_id" column from the “employees” table, and includes a condition to select all rows where the “department_id" column does not match any of the values returned by the first subquery. The results of these two subqueries are then combined using a union operator to produce the final result set.*/
    SELECT * 
    FROM karmchari
    WHERE department_id IN (
        SELECT id
        FROM vibhag
    )
    OR department_id IS NULL
    UNION
    SELECT *
    FROM karmchari
    WHERE department_id NOT IN (
        SELECT id
        FROM vibhag
    )
    AND department_id IS NOT NULL;