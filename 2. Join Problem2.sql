--2.Show employee ID, first name, job title, and department location for all employees who have a department.
SELECT e.employee_id, e.first_name, e.job_title, d.location
FROM employee e
JOIN department d
ON e.employee_id = d.employee_id;
