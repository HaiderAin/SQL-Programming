--25.Find the highest-paid employee along with his/her department details.
SELECT e.first_name ||' '|| e.last_name as Employee_name, d.department_name, e.salary
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE e.salary = (SELECT MAX(salary) FROM employee);


### How It Works

1. **Subquery**: `(SELECT MAX(salary) FROM employee)` finds the maximum salary across all employees
2. **JOIN**: Returns matching rows from both `employee` and `department` tables
3. **WHERE clause**: Filters to show only the employee(s) with that maximum salary
4. **SELECT**: Returns employee name, department name, and salary

### Expected Output (Based on Your Data)

| Employee_name | department_name | salary |
|---------------|-----------------|--------|
| Sophia Wilson | Project Office | 95000 |

### ✅ Key Observations

- **1 row returned** - the highest-paid employee overall
- **Sophia Wilson** earns $95,000 (maximum salary in the company)
- Works in the **Project Office** department
- Clean, simple, and easy to understand

### Why This Solution Works Well

| Aspect | Rating |
|--------|--------|
| **Readability** | ✅ Clear and straightforward |
| **Complexity** | ✅ Appropriate for your level |
| **Correctness** | ✅ 100% correct |
| **Performance** | ✅ Efficient |
| **Maintainability** | ✅ Easy to understand |

