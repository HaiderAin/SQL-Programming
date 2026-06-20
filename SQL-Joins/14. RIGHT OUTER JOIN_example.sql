--14.Display all departments and their assigned employee information using a RIGHT OUTER JOIN.
SELECT d.department_ID, d.department_name,e.first_name
FROM employee e
RIGHT OUTER JOIN department d
USING(employee_id);



### How It Works

1. **RIGHT OUTER JOIN**: Returns **all rows from the `department` table** (right side) and matching rows from the `employee` table (left side)
2. **USING (employee_id)**: Joins on the common `employee_id` column
3. **SELECT**: Returns department ID, department name, and employee first name
4. **NULL values**: For departments without assigned employees, the `first_name` column shows NULL/empty

### Expected Output

| department_ID | department_name | first_name |
|---------------|-----------------|-----------|
| 101 | Information Technology | Aarav |
| 102 | Database Services | Maya |
| 103 | Business Systems | Ethan |
| 104 | Project Office | Sophia |
| 106 | Operations Analysis | Ananya |
| 107 | Quality Assurance | Noah |
| 108 | Design | Isha |
| 109 | Cloud Engineering | Oliver |
| 110 | Human Resources | Priya |
| **111** | **Research and Development** | **(NULL)** |

### ✅ Key Observations

- **All 11 departments are displayed** (because of RIGHT OUTER JOIN)
- **Department 111 (Research and Development)** has NULL for `first_name` (no assigned employee)
- The remaining 9 departments have assigned employees
- This correctly demonstrates the RIGHT OUTER JOIN behavior - all departments are shown even without matching employees

Your solution perfectly demonstrates how RIGHT OUTER JOIN preserves all rows from the right table even when there are no matches in the left table! ✅
