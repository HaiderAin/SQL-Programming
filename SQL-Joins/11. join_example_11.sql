--11.Show employees earning more than 70000 along with their department names.

SELECT e.first_name||' '||e.last_name as Employee_Name,e.Salary, d.department_name
FROM employee e
NATURAL JOIN department d
WHERE e.salary > 70000;





### How It Works

1. **NATURAL JOIN**: Joins `employee` and `department` tables on the common `employee_id` column
2. **WHERE e.salary > 70000**: Filters to show only employees earning more than 70,000
3. **SELECT**: Returns employee name, salary, and department name

### Expected Output

| Employee_Name | salary | department_name |
|---------------|--------|-----------------|
| Aarav Sharma | 72000.00 | Information Technology |
| Maya Patel | 81000.00 | Database Services |
| Sophia Wilson | 95000.00 | Project Office |
| Oliver Miller | 88000.00 | Cloud Engineering |

### Alternative Syntaxes (All Correct)

**Using ON:**
```sql
SELECT e.first_name||' '||e.last_name as Employee_Name, e.salary, d.department_name
FROM employee e
JOIN department d
ON e.employee_id = d.employee_id
WHERE e.salary > 70000;
```

**Using USING:**
```sql
SELECT e.first_name||' '||e.last_name as Employee_Name, e.salary, d.department_name
FROM employee e
JOIN department d
USING (employee_id)
WHERE e.salary > 70000;
```

### ✅ Query Notes

- query correctly filters employees with salary greater than 70,000
- The WHERE clause is applied after the JOIN, which is the correct approach
- 4 out of 10 employees earn more than 70,000

