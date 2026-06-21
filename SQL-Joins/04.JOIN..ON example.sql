--4.Display employee full name and department name using Oracle JOIN ... ON syntax.
SELECT e.first_name||' '||e.last_name as full_name, d.department_name
FROM employee e
JOIN department d
ON e.employee_id=d.employee_id;



OUTPUT:
full_name	department_name
Aarav Sharma	Information Technology
Maya Patel	Database Services
Ethan Brown	Business Systems
Sophia Wilson	Project Office
Liam Johnson	Infrastructure
Ananya Reddy	Operations Analysis
Noah Davis	Quality Assurance
Isha Gupta	Design
Oliver Miller	Cloud Engineering
Priya Nair	Human Resources
