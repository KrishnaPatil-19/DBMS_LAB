-- WHERE clause
SELECT * FROM workers WHERE department = ‘Sales’;

-- GROUP BY
SELECT department, ROUND(AVG(salary)) as avg_sal FROM workers GROUP BY department;

-- HAVING clause
SELECT department, ROUND(AVG(salary)) as avg_sal FROM workers GROUP BY department HAVING avg_sal > 60000;