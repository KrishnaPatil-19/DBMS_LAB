/*Aggregate functions*/
    -- COUNT()
        -- Find the total number of sales
        SELECT COUNT(*) FROM sales;

        -- Find the number of sales for each product
        SELECT product_name, COUNT(*) FROM sales GROUP BY product_name;

    -- AVG()
        -- Find the average sale amount
        sql> SELECT AVG(sale_amount) FROM sales;

        -- Find the average sale amount for each product
        SELECT product _name, AVG(sale_amount) FROM sales GROUP BY product _name;

    -- MIN()
        -- Find the minimum sale amount
        SELECT MIN(sale_amount) FROM sales;

        -- Find the minimum sale amount for each product
        SELECT product_name, MIN(sale_amount) FROM sales GROUP BY product_name;

    -- SUM()
          -- Calculate total sales amount of each product
          SELECT SUM(sale_amount) AS total_sales_ amount FROM sales;

          -- Calculate total sales amount of products by product type
          SELECT product_name, SUM(sale_amount) AS total_sales_amount FROM sales GROUP BY product_name;

/*Date functions*/
    -- NOW()
        -- to return current date
        SELECT NOW();

    -- DAY()
        -- to return day from a date having yyyy/mm/dd format
        SELECT DAY(sale_date) FROM sales;

    -- DATE_ADD()
        -- The DATE_ADD function adds a specified number of units to a date and returns a new date 
        -- This will add 7 days to each sale_date in the sales table and return the new date. 
        SELECT DATE_ADD(sale_date, INTERVAL 7 DAY) FROM sales;

    -- DATEDIFF()
        -- The DATEDIFF function returns the difference between two dates in the specified units
        -- This will return the number of days between each sale date in the sales table and the current date.
        SELECT DATEDIFF(NOW(), sale_date) FROM sales;

    -- DATE_FORMAT()
        -- extracts parts of date as a string
        SELECT DATE_FORMAT(sale_date, '%M') FROM sales;
        -- the above query return months of the dates as we used ‘XM’ format specifier

/*String Functions*/
    -- CONCAT()
        -- This will return the full name of each customer in the customers table, with a space between the first and last name.
        SELECT CONCAT(first_name, * *, last_name) AS full_name FROM cust;

    -- LEN()
        -- This will return the length of each customer's email address in the customers table.
        SELECT LENGTH(email) AS email_length FROM customers;

    -- LTRIM()
        -- This will return each customer's phone number in the customers table, with leading spaces removed.
        SELECT LTRIM(phone) AS trimmed_phone FROM cust;

    -- RTRIM()
        -- This will return each customer's email address in the customers table, with trailing spaces removed.
        SELECT RTRIM(email) AS trimmed_email FROM cust;

    -- REVERSE()
        -- This will return each customer's phone number in the customers table, reversed.
        SELECT REVERSE(phone) AS reversed_phone FROM cust;

    -- CAST()
        -- This will return each customer's salary in the customers table, as a string.
        SELECT CAST(salary AS CHAR) AS salary_string FROM cust;

    -- SUBSTRING()
        -- This will return the first three characters of each customer's email address in the customers table.
        SELECT SUBSTRING(email, 1, 3) AS email_prefix FROM cust;

    -- UPPER()
        -- This will return each customer's first name in the customers table, in uppercase.
        SELECT UPPER(first_name) AS upper_first_name FROM cust;

    -- LOWER()
        -- This will return each customer's last name in the customers table, in lowercase.
        SELECT LOWER(last_name) AS lower_last_name FROM cust;