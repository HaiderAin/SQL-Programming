--12.List employees hired after 2021-01-01 with their department details.


SELECT e.first_name||' '||e.last_name as Employee_Name,e.HIRE_DATE, d.department_name
FROM employee e
JOIN department d
USING (EMPLOYEE_ID)
WHERE e.HIRE_DATE > TO_DATE('2021-01-01', 'YYYY-MM-DD');


### How It Works

1. **JOIN**: Joins `employee` and `department` tables using the common `EMPLOYEE_ID` column
2. **TO_DATE('2021-01-01', 'YYYY-MM-DD')**: Converts the string '2021-01-01' to a DATE data type
3. **WHERE e.HIRE_DATE >**: Filters employees hired **after** January 1, 2021
4. **SELECT**: Returns employee name, hire date, and department name

### Expected Output

| Employee_Name | HIRE_DATE | department_name |
|---------------|-----------|-----------------|
| Aarav Sharma | 10-JAN-22 | Information Technology |
| Ananya Reddy | 18-JUL-22 | Operations Analysis |
| Liam Johnson | 12-FEB-23 | Infrastructure |
| Priya Nair | 22-MAY-23 | Human Resources |

### Key Points

- **`>` operator**: Correctly finds dates **after** (greater than) 2021-01-01
- **`TO_DATE()` function**: Correctly converts the string to a DATE for proper comparison
- **Format specification `'YYYY-MM-DD'`**: Tells Oracle how to parse the input string

### Alternative Syntax (Simpler)

You could also use Oracle's DATE literal syntax:

```sql
SELECT e.first_name||' '||e.last_name as Employee_Name, e.HIRE_DATE, d.department_name
FROM employee e
JOIN department d
USING (EMPLOYEE_ID)
WHERE e.HIRE_DATE > DATE '2021-01-01';
```

Both approaches are correct! Your solution is perfect now. ✅
