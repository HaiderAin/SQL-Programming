--5.Display employee full name and department name using Oracle JOIN ... USING(employee_id) syntax.
SELECT e.first_name||' '||e.last_name as full_name, d.department_name
FROM employee e
JOIN department d
USING (employee_id);



Why This Works

The `USING` clause is a shorthand for the `ON` clause when both tables share a common column name. Since both the `employee` and `department` tables have the `employee_id` column, you can use:


USING (employee_id)


This is equivalent to:

ON e.employee_id = d.employee_id


Key Differences from Problem #4

| Aspect | Problem #4 (ON syntax) | Problem #5 (USING syntax) |
|--------|----------------------|--------------------------|
| **Syntax** | `ON e.employee_id = d.employee_id` | `USING (employee_id)` |
| **Clarity** | More explicit | More concise |
| **Result** | Identical | Identical |
| **Use Case** | When column names differ | When column names are the same |

 Expected Output

Both queries will return the same result:

| full_name | department_name |
|-----------|-----------------|
| Aarav Sharma | Information Technology |
| Maya Patel | Database Services |
| Ethan Brown | Business Systems |
| Sophia Wilson | Project Office |
| Liam Johnson | Infrastructure |
| Ananya Reddy | Operations Analysis |
| Noah Davis | Quality Assurance |
| Isha Gupta | Design |
| Oliver Miller | Cloud Engineering |
| Priya Nair | Human Resources |

