--10. Display employee name, salary, department name, and department location sorted by salary from highest to lowest.

SELECT e.first_name||' '||e.last_name as Employee_Name,e.Salary, d.department_name, d.location
FROM employee e
NATURAL JOIN department d
ORDER BY e.salary DESC;



### How It Works

1. **NATURAL JOIN**: Joins `employee` and `department` tables on the common `employee_id` column
2. **SELECT**: Retrieves employee name, salary, department name, and location
3. **ORDER BY e.salary DESC**: Sorts results by salary in **descending order** (highest to lowest)

### Expected Output

| Employee_Name | salary | department_name | location |
|---------------|--------|-----------------|----------|
| Sophia Wilson | 95000.00 | Project Office | Seattle |
| Oliver Miller | 88000.00 | Cloud Engineering | Phoenix |
| Maya Patel | 81000.00 | Database Services | Chicago |
| Aarav Sharma | 72000.00 | Information Technology | New York |
| Ananya Reddy | 70000.00 | Operations Analysis | Boston |
| Ethan Brown | 69000.00 | Business Systems | Dallas |
| Isha Gupta | 68000.00 | Design | San Francisco |
| Liam Johnson | 65000.00 | Infrastructure | Austin |
| Noah Davis | 62000.00 | Quality Assurance | Denver |
| Priya Nair | 59000.00 | Human Resources | Atlanta |

### Alternative Syntaxes (All Correct)

**Using ON:**
```sql
SELECT e.first_name||' '||e.last_name as Employee_Name, e.salary, d.department_name, d.location
FROM employee e
JOIN department d
ON e.employee_id = d.employee_id
ORDER BY e.salary DESC;
```

**Using ORDER BY with alias:**
```sql
SELECT e.first_name||' '||e.last_name as Employee_Name, e.salary, d.department_name, d.location
FROM employee e
NATURAL JOIN department d
ORDER BY salary DESC;
```

### ✅ Query Notes

- `DESC` correctly sorts from highest to lowest salary
- The output shows a clear salary hierarchy across all departments
- You could also use `ORDER BY 2 DESC` (ordering by column position), but `ORDER BY e.salary DESC` is more explicit and readable

