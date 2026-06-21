--15.Use a FULL OUTER JOIN to display all employees and all departments, whether matched or unmatched.
SELECT e.FIRST_NAME, d.department_name
FROM employee e
FULL OUTER JOIN
department d
USING(employee_id);


### How It Works

1. **FULL OUTER JOIN**: Returns **all rows from BOTH tables** (employee and department)
2. **USING (employee_id)**: Joins on the common `employee_id` column
3. **SELECT**: Returns employee first name and department name
4. **NULL values**: 
   - For employees without departments, `department_name` is NULL
   - For departments without employees, `FIRST_NAME` is NULL

### Expected Output

| FIRST_NAME | department_name |
|------------|-----------------|
| Aarav | Information Technology |
| Maya | Database Services |
| Ethan | Business Systems |
| Sophia | Project Office |
| Ananya | Operations Analysis |
| Noah | Quality Assurance |
| Isha | Design |
| Oliver | Cloud Engineering |
| Priya | Human Resources |
| **Liam** | **(NULL)** |
| **Rajesh** | **(NULL)** |
| **(NULL)** | **Research and Development** |

### ✅ Key Observations

- **12 total rows displayed** (9 matched + 2 unmatched employees + 1 unmatched department)
- **Liam Johnson** has NULL for `department_name` (employee without department)
- **Rajesh Kumar** has NULL for `department_name` (employee without department)
- **Research and Development** has NULL for `FIRST_NAME` (department without employee)
- All employees and all departments are shown, regardless of matches

### Comparison with Previous JOINs

| Query | Rows | Unmatched Employees | Unmatched Departments |
|-------|------|-------------------|----------------------|
| LEFT OUTER JOIN | 11 | Shown (NULL depts) | Not shown |
| RIGHT OUTER JOIN | 10 | Not shown | Shown (NULL emp) |
| **FULL OUTER JOIN** | **12** | **Shown (NULL depts)** | **Shown (NULL emp)** |

The solution perfectly demonstrates FULL OUTER JOIN - showing the complete picture of all employees and all departments with their relationships! 
