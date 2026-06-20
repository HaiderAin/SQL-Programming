--7.Find all employees working in the Information Technology department.
SELECT e.first_name||' '||e.last_name as full_name, d.department_name
FROM employee e
NATURAL JOIN department d
WHERE d.department_name ='Information Technology';

### How It Works

1. **NATURAL JOIN**: Joins `employee` and `department` tables on the common `employee_id` column
2. **WHERE clause**: Filters results to only show rows where `department_name` equals 'Information Technology'

### Expected Output

Based on the data you have, there is only **one employee** in the Information Technology department:

| full_name | department_name |
|-----------|-----------------|
| Aarav Sharma | Information Technology |

### Alternative Syntaxes (All Correct)

You could also write this using `ON` or `USING`:

**Using ON:**
```sql
SELECT e.first_name||' '||e.last_name as full_name, d.department_name
FROM employee e
JOIN department d
ON e.employee_id = d.employee_id
WHERE d.department_name = 'Information Technology';
```

**Using USING:**
```sql
SELECT e.first_name||' '||e.last_name as full_name, d.department_name
FROM employee e
JOIN department d
USING (employee_id)
WHERE d.department_name = 'Information Technology';
```

