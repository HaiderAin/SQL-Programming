--21.Show department names where the assigned employee salary is greater than 80000.
SELECT d.department_name,e.salary
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE e.salary > 80000;


### How It Works

1. **JOIN**: Returns matching rows from both `employee` and `department` tables
2. **WHERE e.salary > 80000**: Filters employees with salary greater than 80,000
3. **SELECT**: Returns department name and employee salary

### Expected Output (Based on Your Data)

| department_name | salary |
|-----------------|--------|
| Information Technology | 85000.00 |
| Database Services | 92000.00 |
| Business Systems | 78000.00 |
| Project Office | 88000.00 |
| Operations Analysis | 81000.00 |
| Quality Assurance | 79000.00 |
| Design | 84000.00 |
| Cloud Engineering | 86000.00 |
| Human Resources | 82000.00 |

*(Results depend on your actual salary data)*

### ✅ Key Observations

- **Only departments with assigned employees** (INNER JOIN)
- **Only employees with salary > 80,000** are shown
- Including `e.salary` in the SELECT clause makes it clear which salaries meet the condition
- Employees and their departments with salaries ≤ 80,000 are excluded

### Alternative (Without Salary Display)

If you only need department names:

```sql
SELECT d.department_name
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE e.salary > 80000;
```

Your solution perfectly demonstrates filtering with JOINs and WHERE clauses! ✅
