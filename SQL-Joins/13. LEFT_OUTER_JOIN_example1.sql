--13.Display all employees and their department information using a LEFT OUTER JOIN.
SELECT e.first_name, d.department_id, d.department_name
FROM employee e
LEFT OUTER JOIN department d
USING (EMPLOYEE_ID);

### How It Works

1. **LEFT OUTER JOIN**: Returns **all rows from the `employee` table** (left side) and matching rows from the `department` table (right side)
2. **USING (EMPLOYEE_ID)**: Joins on the common `EMPLOYEE_ID` column
3. **SELECT**: Returns employee first name, department ID, and department name
4. **NULL values**: For employees without departments, department columns show NULL/empty

### Expected Output

| first_name | department_id | department_name |
|------------|---------------|-----------------|
| Aarav | 101 | Information Technology |
| Maya | 102 | Database Services |
| Ethan | 103 | Business Systems |
| Sophia | 104 | Project Office |
| **Liam** | **(NULL)** | **(NULL)** |
| Ananya | 106 | Operations Analysis |
| Noah | 107 | Quality Assurance |
| Isha | 108 | Design |
| Oliver | 109 | Cloud Engineering |
| Priya | 110 | Human Resources |
| **Rajesh** | **(NULL)** | **(NULL)** |

### ✅ Key Observations

- **All 11 employees are displayed** (because of LEFT OUTER JOIN)
- **Liam Johnson** has NULL for `department_id` and `department_name` (no department)
- **Rajesh Kumar** has NULL for `department_id` and `department_name` (no department)
- The remaining 9 employees have matching department information
- This correctly demonstrates the LEFT OUTER JOIN behavior

