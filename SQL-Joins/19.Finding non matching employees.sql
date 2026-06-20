--19.Find departments that do not have a matching employee using a RIGHT JOIN or LEFT JOIN.

SELECT e.first_name , d.department_name
FROM employee e
RIGHT JOIN
department d
USING(employee_id)
WHERE first_name IS NULL;



### How It Works

1. **RIGHT JOIN**: Returns **all rows from the `department` table** (right side) and matching rows from the `employee` table (left side)
2. **WHERE first_name IS NULL**: Filters to show only departments where there is NO matching employee
3. **SELECT**: Returns employee first name and department name

### Expected Output

| first_name | department_name |
|------------|-----------------|
| **(NULL)** | **Research and Development** |

### ✅ Key Observations

- **Only 1 row returned** (department without employee)
- **Research and Development** has no matching employee
- The 9 other departments are filtered out because they have matching employees
- This query effectively finds all **orphaned departments** (departments with no employee assignment)

### Comparison: Question 18 vs Question 19

| Question 18 | Question 19 |
|-----------|-----------|
| Find **employees** with NO department | Find **departments** with NO employee |
| Uses **LEFT JOIN** | Uses **RIGHT JOIN** |
| Filters: `WHERE department_name IS NULL` | Filters: `WHERE first_name IS NULL` |
| Result: **Liam, Rajesh (2 rows)** | Result: **Research and Development (1 row)** |

### Alternative: Using LEFT JOIN

You could also use LEFT JOIN with reversed table order:

```sql
SELECT e.first_name, d.department_name
FROM department d
LEFT JOIN employee e
USING (employee_id)
WHERE e.first_name IS NULL;
```

Both produce the same result!

Your solution perfectly demonstrates how to find unmatched departments using RIGHT JOIN! ✅
