--8.Find the department name and location of employee Maya Patel.

SELECT d.department_name, d.location
FROM employee e
NATURAL JOIN department d
WHERE e.first_name ='Maya'
AND e.last_name='Patel';


### How It Works

1. **NATURAL JOIN**: Joins `employee` and `department` tables on the common `employee_id` column
2. **WHERE clause**: Filters for the employee with `first_name` = 'Maya' AND `last_name` = 'Patel'
3. **SELECT**: Returns only the `department_name` and `location` from the department table

### Expected Output

| department_name | location |
|-----------------|----------|
| Database Services | Chicago |

### Alternative Syntaxes (All Correct)

**Using ON:**
```sql
SELECT d.department_name, d.location
FROM employee e
JOIN department d
ON e.employee_id = d.employee_id
WHERE e.first_name = 'Maya'
AND e.last_name = 'Patel';
```

**Using USING:**
```sql
SELECT d.department_name, d.location
FROM employee e
JOIN department d
USING (employee_id)
WHERE e.first_name = 'Maya'
AND e.last_name = 'Patel';
```

### ✅ Best Practice Note

Your query is clean and efficient. You could also use string concatenation in the WHERE clause for a one-liner approach, but your current method is more readable and maintainable. 


USING STRING concatenation (read until the END for the performance consideration) :
=================================================================================

## Using String Concatenation in WHERE Clause

You can use the `||` operator to concatenate the first and last names in the WHERE clause:

```sql
SELECT d.department_name, d.location
FROM employee e
NATURAL JOIN department d
WHERE e.first_name||' '||e.last_name = 'Maya Patel';
```

### How It Works

- `e.first_name||' '||e.last_name` concatenates:
  - `first_name` ('Maya')
  - A space (' ')
  - `last_name` ('Patel')
  - Result: 'Maya Patel'

- The WHERE clause then compares this concatenated string to `'Maya Patel'`

### Expected Output

| department_name | location |
|-----------------|----------|
| Database Services | Chicago |

### Comparison

**Original approach (two conditions):**
```sql
WHERE e.first_name = 'Maya'
AND e.last_name = 'Patel';
```

**String concatenation approach (one condition):**
```sql
WHERE e.first_name||' '||e.last_name = 'Maya Patel';
```

### ⚠️ Performance Consideration

- **Original approach**: Generally **faster** (indexes can be used on individual columns)
- **String concatenation**: Slightly slower (functions are applied to column values, making indexes less effective)

**Best Practice**: Use the original two-condition approach for production code when performance matters, but string concatenation is fine for smaller datasets or when readability is the priority. 





