--20.Display employees whose department location starts with the letter S.

SELECT e.first_name , d.department_name, d.location
FROM employee e
JOIN
department d
USING(employee_id)
WHERE d.location LIKE 'S%';



### How It Works

1. **JOIN**: Returns matching rows from both `employee` and `department` tables
2. **WHERE d.location LIKE 'S%'**: Filters departments where location **starts with 'S'**
3. **SELECT**: Returns employee first name, department name, and location

### Expected Output

| first_name | department_name | location |
|------------|-----------------|----------|
| Sophia | Project Office | Seattle |
| Isha | Design | San Francisco |
| Oliver | Cloud Engineering | San Diego |

*(Or similar rows based on your actual location data starting with 'S')*

### ✅ Key Observations

- **Only employees with departments** (INNER JOIN filters out unmatched employees)
- **Only departments with locations starting with 'S'** are shown
- The `location` column is now included in the result, making it clearer what's being filtered
- Employees whose department location doesn't start with 'S' are excluded

### Pattern Matching with LIKE

| Pattern | Meaning | Example |
|---------|---------|---------|
| `'S%'` | Starts with 'S' | Seattle, San Francisco, San Diego |
| `'%S'` | Ends with 'S' | Dallas, Davis, Paris |
| `'%S%'` | Contains 'S' | Boston, San Francisco, Austin |
| `'_eattle'` | Single char + 'eattle' | Seattle |

Your solution perfectly demonstrates LIKE pattern matching with JOINs! ✅
