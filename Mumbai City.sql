CREATE TABLE employees (
         employee_id INT, 
         employee_name VARCHAR(100), 
         department VARCHAR(100), 
         city VARCHAR(100)
     );
     INSERT INTO employees VALUES 
         (1, 'Aarav', 'Engineering', 'Mumbai'), 
         (2, 'Vihaan', 'HR', 'Delhi'), 
         (3, 'Aditya', 'Marketing', 'Mumbai'), 
         (4, 'Reyansh', 'Finance', 'Bangalore'), 
         (5, 'Kiaan', 'Engineering', 'Mumbai');

SELECT * FROM EMPLOYEES

/*
List all employees from Mumbai and their respective departments.
*/

SELECT EMPLOYEE_NAME,
       DEPARTMENT
FROM EMPLOYEES
WHERE CITY ='Mumbai'