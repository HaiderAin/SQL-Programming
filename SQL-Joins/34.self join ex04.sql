--34.Show each employee along with other employees hired after them.
SELECT
    e1.first_name AS employee1,
    e1.hire_date AS hire_date1,
    e2.first_name AS employee2,
    e2.hire_date AS hire_date2
FROM employee e1
JOIN employee e2
ON e1.hire_date < e2.hire_date;

-- This query uses a self join on the employee table.
-- e1 represents the first employee.
-- e2 represents another employee hired after e1.
-- The condition e1.hire_date < e2.hire_date compares hire dates
-- and returns only pairs where employee2 was hired later than employee1.
--This query compares every employee with every other employee in the same employee table. It returns pairs where employee2 has a later hire_date than employee1.
