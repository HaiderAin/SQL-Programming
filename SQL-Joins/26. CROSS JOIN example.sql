-- 26.Generate all possible combinations of employees and departments using a CROSS JOIN.
SELECT e.first_name, d.department_name
FROM employee e
CROSS JOIN Department d;


### How It Works

1. **CROSS JOIN**: Creates all possible combinations of rows from both tables
2. **No join condition**: Every employee is paired with every department
3. **SELECT**: Returns employee first name and department name
4. **Result**: Total rows = employees × departments

### Expected Output (Based on Your Data)

**Total Rows**: 11 employees × 11 departments = **121 rows**

| Row | first_name | department_name |
|-----|-----------|-----------------|
| 1 | Aarav | Information Technology |
| 2 | Aarav | Database Services |
| 3 | Aarav | Business Systems |
| 4 | Aarav | Project Office |
| 5 | Aarav | Operations Analysis |
| 6 | Aarav | Quality Assurance |
| 7 | Aarav | Design |
| 8 | Aarav | Cloud Engineering |
| 9 | Aarav | Human Resources |
| 10 | Aarav | Research and Development |
| 11 | Maya | Information Technology |
| 12 | Maya | Database Services |
| ... | ... | ... |
| 121 | Rajesh | Research and Development |

### ✅ Key Observations

- **Every employee** is paired with **every department**
- **Aarav Sharma** appears 11 times (once for each department)
- **Maya Patel** appears 11 times (once for each department)
- All 11 employees × 11 departments = 121 total combinations
- **No filtering** - all combinations are shown regardless of actual assignments

### Comparison with INNER JOIN

| Type | Query | Rows | Result |
|------|-------|------|--------|
| **CROSS JOIN** | `CROSS JOIN` | 121 | All combinations |
| **INNER JOIN** | `JOIN USING(employee_id)` | 9 | Only actual assignments |

Your solution perfectly demonstrates the CROSS JOIN generating all possible combinations! ✅
