-- 21. Select the total salary for each department.
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;


-- 22. Select the average age of employees in each department.
SELECT department_id, AVG(age) AS average_age
FROM Employee
GROUP BY department_id;


-- 23. Select the number of employees hired in each year.
SELECT YEAR(hire_date) AS hire_year,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date);


-- 24. Select the highest salary in each department.
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;


-- 25. Select the department with the highest average salary.
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;


-- 26. Select departments with more than 2 employees.
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;


-- 27. Select departments with an average salary greater than 55000.
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;


-- 28. Select years with more than 1 employee hired.
SELECT YEAR(hire_date) AS hire_year,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;


-- 29. Select departments with a total salary expense less than 100000.
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;


-- 30. Select departments with the maximum salary above 75000.
SELECT department_id, MAX(salary) AS max_salary
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;


-- 31. Select all employees ordered by their salary in ascending order.
SELECT *
FROM Employee
ORDER BY salary ASC;


-- 32. Select all employees ordered by their age in descending order.
SELECT *
FROM Employee
ORDER BY age DESC;


-- 33. Select all employees ordered by their hire date in ascending order.
SELECT *
FROM Employee
ORDER BY hire_date ASC;


-- 34. Select employees ordered by their department and then by their salary.
SELECT *
FROM Employee
ORDER BY department_id, salary;


-- 35. Select departments ordered by the total salary of their employees.
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary DESC;


-- 36. Select employee names along with their department names.
SELECT e.name AS employee_name,
       d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;


-- 37. Select project names along with the department names they belong to.
SELECT p.name AS project_name,
       d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;


-- 38. Select employee names and their corresponding project names.
SELECT e.name AS employee_name,
       p.name AS project_name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;


-- 39. Select all employees and their departments, including those without a department.
SELECT e.name AS employee_name,
       d.name AS department_name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;


-- 40. Select all departments and their employees, including departments without employees.
SELECT d.name AS department_name,
       e.name AS employee_name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;


-- 41. Select employees who are not assigned to any project.
SELECT e.name
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
WHERE p.project_id IS NULL;


-- 42. Select employees and the number of projects their department is working on.
SELECT e.name AS employee_name,
       COUNT(p.project_id) AS project_count
FROM Employee e
LEFT JOIN Project p
ON e.department_id = p.department_id
GROUP BY e.emp_id, e.name;


-- 43. Select the departments that have no employees.
SELECT d.name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;


-- 44. Select employee names who share the same department with 'John Doe'.
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    WHERE name = 'John Doe'
);


-- 45. Select the department name with the highest average salary.
SELECT d.name AS department_name,
       AVG(e.salary) AS avg_salary
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id
GROUP BY d.department_id, d.name
ORDER BY avg_salary DESC
LIMIT 1;