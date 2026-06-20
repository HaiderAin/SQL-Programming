
--18.Find employees who do not have a matching department using a LEFT JOIN.
SELECT e.first_name , d.department_name
FROM employee e
LEFT JOIN
department d
USING(employee_id)
WHERE department_name IS NULL;



### How It Works

1. **LEFT JOIN**: Returns all rows from `employee` table and matching rows from `department` table
2. **WHERE department_name IS NULL**: Filters to show only employees where there is NO matching department
3. **SELECT**: Returns employee first name and department name (which will be NULL)

### Expected Output

| first_name | department_name |
|------------|-----------------|
| **Liam** | **(NULL)** |
| **Rajesh** | **(NULL)** |

### ✅ Key Observations

- **Only 2 rows returned** (employees without departments)
- **Liam Johnson** has no matching department
- **Rajesh Kumar** has no matching department
- The 9 other employees are filtered out because they have matching departments
- This query effectively finds all **orphaned employees** (employees with no department assignment)

### Alternative Syntax (Also Correct)

You could also use `WHERE d.department_id IS NULL`:

```sql
SELECT e.first_name, d.department_name
FROM employee e
LEFT JOIN department d
USING (employee_id)
WHERE d.department_id IS NULL;
```

Both produce the same result because any column from the right table will be NULL for unmatched rows.

### Use Cases

This type of query is useful for:
- Finding employees without department assignments
- Data quality checks
- Identifying incomplete records
- Finding potential data issues








===================================================================================================================

## LEFT JOIN vs LEFT OUTER JOIN

**There is NO difference!** They are **exactly the same**.

### Explanation

- **LEFT JOIN** and **LEFT OUTER JOIN** are synonymous in SQL
- The keyword `OUTER` is **optional** and implicit
- Both return all rows from the left table and matching rows from the right table

### Syntax Comparison

```sql
-- Both are identical
SELECT *
FROM employee e
LEFT JOIN department d
USING (employee_id);

-- Same as above
SELECT *
FROM employee e
LEFT OUTER JOIN department d
USING (employee_id);
```

### Why the Optional OUTER Keyword?

SQL has four types of JOINs:
1. **INNER JOIN** (default, no OUTER keyword)
2. **LEFT [OUTER] JOIN** (OUTER is optional)
3. **RIGHT [OUTER] JOIN** (OUTER is optional)
4. **FULL [OUTER] JOIN** (OUTER is optional)

The `OUTER` keyword is included for clarity and consistency, but it's not required.

### Real-World Example with Your Data

```sql
-- Using LEFT JOIN
SELECT e.first_name, d.department_name
FROM employee e
LEFT JOIN department d
USING (employee_id);

-- Using LEFT OUTER JOIN (identical result)
SELECT e.first_name, d.department_name
FROM employee e
LEFT OUTER JOIN department d
USING (employee_id);
```

Both produce the **same output**:

| first_name | department_name |
|------------|-----------------|
| Aarav | Information Technology |
| Maya | Database Services |
| ... | ... |
| **Liam** | **(NULL)** |
| **Rajesh** | **(NULL)** |

### ✅ Best Practice

- Use **LEFT JOIN** (shorter and cleaner)
- Use **LEFT OUTER JOIN** only if you want to be extra explicit about it being an outer join
- Both are equally correct and widely accepted

**In summary: LEFT JOIN = LEFT OUTER JOIN** ✅
