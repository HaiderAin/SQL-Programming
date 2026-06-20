-- 27.Create a planning list where every employee is paired with every department location.
SELECT e.first_name, d.location
FROM employee e
CROSS JOIN Department d;

### How It Works

1. **CROSS JOIN**: Creates all possible combinations of rows from both tables
2. **No join condition**: Every employee is paired with every department location
3. **SELECT**: Returns employee first name and department location
4. **Result**: Total rows = employees × departments


**Total Rows**: 11 employees × 11 departments = **121 rows**

| Row | first_name | location |
|-----|-----------|----------|
| 1 | Aarav | New York |
| 2 | Aarav | Chicago |
| 3 | Aarav | Dallas |
| 4 | Aarav | Seattle |
| 5 | Aarav | Boston |
| 6 | Aarav | Denver |
| 7 | Aarav | San Francisco |
| 8 | Aarav | Phoenix |
| 9 | Aarav | Atlanta |
| 10 | Aarav | San Diego |
| 11 | Maya | New York |
| 12 | Maya | Chicago |
| ... | ... | ... |
| 121 | Rajesh | San Diego |

###  Key Observations

- **Every employee** is paired with **every department location**
- **Aarav Sharma** appears 11 times (once for each location)
- **Maya Patel** appears 11 times (once for each location)
- All 11 employees × 11 locations = 121 total combinations
- Includes locations: New York, Chicago, Dallas, Seattle, Boston, Denver, San Francisco, Phoenix, Atlanta, San Diego
- **No filtering** - all combinations are shown

### Real-World Use Case

This type of query is useful for:
- **Planning lists**: Which employee could potentially work at which location
- **Resource allocation**: Preparing staffing options for all locations
- **Feasibility studies**: Checking all possible assignments before final decisions
- **Training schedules**: Planning which employees could train at which locations

### Difference from Previous Query

| Query | Column Used | Rows | Use Case |
|-------|------------|------|----------|
| Question 26 | `d.department_name` | 121 | Pair employees with departments |
| Current Query | `d.location` | 121 | Pair employees with locations |

This solution perfectly demonstrates creating a planning list with CROSS JOIN! 
