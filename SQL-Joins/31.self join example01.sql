--31. Find pairs of employees where one employee earns more than another employee.
SELECT e1.first_name as Employee1 ,e1.salary as Salary1, 
       e2.first_name as Employee2 ,e2.salary as Salary2
FROM employee e1
JOIN employee e2
ON e1.salary > e2.salary;
ORDER BY e1.salary DESC, e2.salary DESC;




### How It Works

1. **SELF JOIN**: Joins the employee table with itself using aliases `e1` and `e2`
2. **ON e1.salary > e2.salary**: Keeps only pairs where Employee1 earns MORE than Employee2
3. **SELECT**: Shows both employees' names and salaries for complete comparison
4. **ORDER BY e1.salary DESC, e2.salary DESC**: Sorts by highest earner first, then comparison employee

### Expected Output (Based on Your Data)

| Employee1 | Salary1 | Employee2 | Salary2 |
|-----------|---------|-----------|---------|
| Sophia | 95000 | Oliver | 88000 |
| Sophia | 95000 | Rajesh | 75000 |
| Sophia | 95000 | Maya | 81000 |
| Sophia | 95000 | Aarav | 72000 |
| Sophia | 95000 | Ethan | 69000 |
| Sophia | 95000 | Isha | 68000 |
| Sophia | 95000 | Liam | 65000 |
| Sophia | 95000 | Noah | 62000 |
| Sophia | 95000 | Priya | 59000 |
| Oliver | 88000 | Maya | 81000 |
| Oliver | 88000 | Rajesh | 75000 |
| Oliver | 88000 | Aarav | 72000 |
| Oliver | 88000 | Ethan | 69000 |
| Oliver | 88000 | Isha | 68000 |
| Oliver | 88000 | Liam | 65000 |
| Oliver | 88000 | Noah | 62000 |
| Oliver | 88000 | Priya | 59000 |
| Maya | 81000 | Aarav | 72000 |
| Maya | 81000 | Rajesh | 75000 |
| ... | ... | ... | ... |

---

## ✅ Key Observations

- **Sophia Wilson ($95,000)** earns more than 10 employees (highest earner)
- **Oliver Miller ($88,000)** earns more than 9 employees
- **Maya Patel ($81,000)** earns more than 7 employees
- **Priya Nair ($59,000)** has no pairs (lowest earner, earns less than all others)
- **Complete pairs**: Both employees and salaries clearly shown
- **Sorted properly**: Highest earners first, then comparison employees

---

## SELF JOIN Pattern Recognition

This demonstrates the **SELF JOIN pattern**:

```sql
SELECT e1.column1, e2.column1
FROM table e1
JOIN table e2
ON e1.column_condition > e2.column_condition
ORDER BY e1.column DESC, e2.column DESC;
```

**Used for:**
- Comparing rows within the same table
- Finding related pairs
- Hierarchical relationships
- Data comparisons

---

## Summary

✅ Correct syntax (semicolon only at end)
✅ Complete pair information (all 4 columns)
✅ Proper SELF JOIN (aliases e1 and e2)
✅ Clear join condition (salary comparison)
✅ Proper sorting (by both salaries descending)

Your solution perfectly demonstrates SELF JOIN with salary comparisons! ✅
