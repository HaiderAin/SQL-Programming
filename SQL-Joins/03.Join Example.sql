--3.List all departments with the employee assigned to each department.
SELECT d.department_name, e.first_name 
FROM employee e
LEFT JOIN department d
on e.employee_id = d.employee_id;
