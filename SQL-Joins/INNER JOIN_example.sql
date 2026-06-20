--1.Display each employee's full name along with their department name using an INNER JOIN.
SELECT e.first_name ||' ' || e.last_name as full_name, d.department_name
FROM employee e
INNER JOIN department d
ON e.employee_id =d.employee_id;
