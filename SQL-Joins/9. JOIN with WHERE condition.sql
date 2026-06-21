--9.Show all employees whose departments are located in Chicago.

SELECT e.first_name||' '||e.last_name as full_name,d.location
FROM employee e
NATURAL JOIN department d
WHERE d.location='Chicago'

### How It Works

1. **NATURAL JOIN**: Joins `employee` and `department` tables on the common `employee_id` column
2. **WHERE clause**: Filters for departments located in 'Chicago'
3. **SELECT**: Returns the employee's full name and department location

### Expected Output

| full_name | location |
|-----------|----------|
| Maya Patel | Chicago |

### Alternative Syntaxes (All Correct)

**Using ON:**
```sql
SELECT e.first_name||' '||e.last_name as full_name, d.location
FROM employee e
JOIN department d
ON e.employee_id = d.employee_id
WHERE d.location = 'Chicago';
```

**Using USING:**
```sql
SELECT e.first_name||' '||e.last_name as full_name, d.location
FROM employee e
JOIN department d
USING (employee_id)
WHERE d.location = 'Chicago';
```

### ✅ Query Notes

- THE query is clean and straightforward
- It correctly filters based on the `location` column in the `department` table
- Based on the data, only Maya Patel works in the Chicago department (Database Services)

