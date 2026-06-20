--23.List employees and departments where the employee salary is between 65000 and 85000.
SELECT e.first_name ||' '|| e.last_name as Employee_name,e.salary
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE e.salary BETWEEN 65000 AND 85000;


## Query Result Analysis


### Query Output: Employees with Salary Between 65,000 and 85,000

| Row | EMPLOYEE_NAME | SALARY |
|-----|---------------|--------|
| 1 | Aarav Sharma | 72000 |
| 2 | Maya Patel | 81000 |
| 3 | Ethan Brown | 69000 |
| 4 | Ananya Reddy | 70000 |
| 5 | Isha Gupta | 68000 |

### ✅ Key Observations

- **5 employees returned** with salaries in the 65,000 - 85,000 range
- **Salary range**: $68,000 to $81,000 (all within bounds)
- **Lowest salary**: Isha Gupta - $68,000
- **Highest salary**: Maya Patel - $81,000
- **Average salary**: $72,000
- All employees have departments assigned (INNER JOIN results)

### Excluded Employees (Not in 65,000-85,000 range)

- **Sophia Wilson** - $95,000 (exceeds upper limit)
- **Oliver Miller** - $88,000 (exceeds upper limit)
- **Liam Johnson** - $65,000 (no department, filtered by INNER JOIN)
- **Noah Davis** - $62,000 (below lower limit)
- **Priya Nair** - $59,000 (below lower limit)
- **Rajesh Kumar** - $75,000 (no department, filtered by INNER JOIN)

This result set accurately reflects the BETWEEN condition with proper numeric comparison! ✅
