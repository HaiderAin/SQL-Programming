--30. Use a CROSS JOIN to simulate possible employee transfers to all available department locations.
SELECT e.first_name,d.location
FROM employee e
CROSS JOIN Department d;


### How It Works

1. **CROSS JOIN**: Creates all possible combinations of employees and department locations
2. **SELECT**: Returns employee first name and department location
3. **No ORDER BY**: Results show all employee-location combinations
4. **Result**: Total rows = employees × departments = 110 rows

### Expected Output (Based on Your Data)

| first_name | location |
|-----------|----------|
| Aarav | New York |
| Aarav | Chicago |
| Aarav | Dallas |
| Aarav | Seattle |
| Aarav | Boston |
| Aarav | Denver |
| Aarav | San Francisco |
| Aarav | Phoenix |
| Aarav | Atlanta |
| Aarav | San Diego |
| Maya | New York |
| Maya | Chicago |
| Maya | Dallas |
| ... | ... |
| Priya | San Diego |

### Key Observations

- **110 total rows** (10 employees × 11 locations)
- **Aarav** can be transferred to 11 different locations
- **Maya** can be transferred to 11 different locations
- Continues for all 10 employees
- Shows **all possible transfer scenarios**
- Includes locations: New York, Chicago, Dallas, Seattle, Boston, Denver, San Francisco, Phoenix, Atlanta, San Diego, and others

### Real-World Use Case: Employee Transfer Simulation

This type of query is useful for:
- **Transfer Planning**: Identify all possible location assignments
- **Workforce Analysis**: Understand capacity at each location
- **Relocation Options**: Show available locations for each employee
- **Career Development**: Simulate different career paths across locations
- **Scenario Planning**: What-if analysis for employee relocations

### Comparison with Previous Queries

| Query | Column Used | Use Case |
|-------|------------|----------|
| Question 26 | `d.department_name` | Pair employees with departments |
| Question 27 | `d.location` | Pair employees with locations |
| Question 30 | `d.location` | Simulate employee transfers |

Your solution perfectly demonstrates using CROSS JOIN to simulate employee transfer possibilities! 
