-- Create the companies table
CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100)
);

-- Create the employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    company_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

-- Insert data into the companies table
INSERT INTO companies (company_id, company_name) VALUES
(1, 'TechCorp'),
(2, 'HealthInc'),
(3, 'FinanceSolutions'),
(4, 'EduGlobal'),
(5, 'RetailWorld');

-- Insert data into the employees table
INSERT INTO employees (employee_id, employee_name, company_id, salary) VALUES
(1, 'Alice', 1, 90000),
(2, 'Bob', 2, 70000),
(3, 'Charlie', 1, 80000),
(4, 'David', 3, 95000),
(5, 'Eva', 4, 65000),
(6, 'Frank', 5, 60000),
(7, 'Grace', 2, 72000);


/*
Write a SQL query to find the total salary expenditure of each company.
*/

SELECT * FROM COMPANIES
SELECT * FROM EMPLOYEES

--APPROACH 1
	
WITH CTE AS
(
SELECT E.COMPANY_ID,
       SUM(E.SALARY) AS TOTAL_SALARY_EXPENDITURE
FROM EMPLOYEES E
GROUP BY 1
ORDER BY 1
)
SELECT C.COMPANY_NAME,
       CTE.TOTAL_SALARY_EXPENDITURE
FROM COMPANIES C
JOIN CTE ON C.COMPANY_ID = CTE.COMPANY_ID


--APPROACH 2

SELECT c.company_name, SUM(e.salary) AS total_expenditure
FROM employees e
JOIN companies c ON e.company_id = c.company_id
GROUP BY c.company_name;