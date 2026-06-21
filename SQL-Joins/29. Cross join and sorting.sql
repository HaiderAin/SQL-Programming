-- 29.Show every employee name with every department name, sorted by employee ID.
SELECT e.first_name,d.department_name,e.employee_id
FROM employee e
CROSS JOIN Department d
ORDER BY e.employee_id;






### How It Works

1. **CROSS JOIN**: Creates all possible combinations of employees and departments
2. **SELECT**: Returns employee first name, department name, and employee ID
3. **ORDER BY e.employee_id**: Sorts results by employee ID in ascending order
4. **Result**: Total rows = employees × departments = 110 rows

### Expected Output (Based on Your Data)

| first_name | department_name | employee_id |
|-----------|-----------------|-------------|
| Aarav | Information Technology | 1 |
| Aarav | Database Services | 1 |
| Aarav | Business Systems | 1 |
| Aarav | Project Office | 1 |
| Aarav | Operations Analysis | 1 |
| Aarav | Quality Assurance | 1 |
| Aarav | Design | 1 |
| Aarav | Cloud Engineering | 1 |
| Aarav | Human Resources | 1 |
| Aarav | Research and Development | 1 |
| Maya | Information Technology | 2 |
| Maya | Database Services | 2 |
| Maya | Business Systems | 2 |
| ... | ... | ... |
| Priya | Research and Development | 10 |

### ✅ Key Observations

- **110 total rows** (10 employees × 11 departments)
- **Employee 1 (Aarav)** appears 11 times (paired with each department)
- **Employee 2 (Maya)** appears 11 times
- Continues through **Employee 10**
- **Sorted by employee_id** - all combinations for Employee 1, then Employee 2, etc.
- Includes all departments for each employee

### Sorting Order

```
Rows 1-11:   Employee 1 with Departments 1-11
Rows 12-22:  Employee 2 with Departments 1-11
Rows 23-33:  Employee 3 with Departments 1-11
...
Rows 100-110: Employee 10 with Departments 1-11
```

Your solution perfectly demonstrates CROSS JOIN with sorted output! ✅
