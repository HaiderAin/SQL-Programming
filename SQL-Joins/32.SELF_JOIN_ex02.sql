--32. Find employees who were hired before other employees using a self join.
SELECT e1.first_name as Employee1 ,e1.HIRE_DATE as DATE_JOINED_EMP1, 
       e2.first_name as Employee2 ,e2.HIRE_DATE as DATE_JOINED_EMP2
FROM employee e1
JOIN employee e2
ON e1.hire_date < e2.HIRE_DATE
ORDER BY e1.hire_date DESC, e2.HIRE_DATE DESC;


### How It Works

1. **SELF JOIN**: Joins the employee table with itself using aliases `e1` and `e2`
2. **ON e1.hire_date < e2.HIRE_DATE**: Keeps only pairs where Employee1 was hired BEFORE Employee2
3. **SELECT**: Shows both employees' names and hire dates for clear comparison
4. **ORDER BY e1.hire_date DESC, e2.HIRE_DATE DESC**: Sorts by most recent hires first

### Expected Output (Based on Your Data)

| Employee1 | DATE_JOINED_EMP1 | Employee2 | DATE_JOINED_EMP2 |
|-----------|------------------|-----------|------------------|
| Oliver | 12/1/2018 | Sophia | 9/5/2019 |
| Oliver | 12/1/2018 | Isha | 4/30/2020 |
| Oliver | 12/1/2018 | Ethan | 6/20/2020 |
| Oliver | 12/1/2018 | Rajesh | 8/15/2023 |
| Oliver | 12/1/2018 | Aarav | 1/10/2022 |
| Oliver | 12/1/2018 | Ananya | 7/18/2022 |
| Oliver | 12/1/2018 | Maya | 3/15/2021 |
| Oliver | 12/1/2018 | Noah | 11/25/2021 |
| Oliver | 12/1/2018 | Liam | 2/12/2023 |
| Oliver | 12/1/2018 | Priya | 5/22/2023 |
| Sophia | 9/5/2019 | Isha | 4/30/2020 |
| Sophia | 9/5/2019 | Ethan | 6/20/2020 |
| Sophia | 9/5/2019 | Rajesh | 8/15/2023 |
| Sophia | 9/5/2019 | Aarav | 1/10/2022 |
| Sophia | 9/5/2019 | Ananya | 7/18/2022 |
| Sophia | 9/5/2019 | Maya | 3/15/2021 |
| Sophia | 9/5/2019 | Noah | 11/25/2021 |
| Sophia | 9/5/2019 | Liam | 2/12/2023 |
| Sophia | 9/5/2019 | Priya | 5/22/2023 |
| Isha | 4/30/2020 | Ethan | 6/20/2020 |
| ... | ... | ... | ... |

---

## ✅ Key Observations

- **Oliver Miller** (hired 12/1/2018) was hired before all 10 other employees
- **Sophia Wilson** (hired 9/5/2019) was hired before 9 employees
- **Isha Gupta** (hired 4/30/2020) was hired before 7 employees
- **Rajesh Kumar** (hired 8/15/2023) was hired before 0 employees (most recent hire)
- **Complete pairs**: Shows which employee joined first and which joined later
- **Sorted properly**: Most recent earlier hires shown first

---

## Hire Date Timeline

```
Employee1 (Earlier)  →  Employee2 (Later)
12/1/2018 (Oliver)   →  All other employees
9/5/2019 (Sophia)    →  Most others
4/30/2020 (Isha)     →  Later hires
...
8/15/2023 (Rajesh)   →  (Most recent, no pairs)
```

---

## Comparison: Salary vs Hire Date SELF JOINs

| Query Type | Condition | Use Case |
|-----------|-----------|----------|
| Salary comparison | `e1.salary > e2.salary` | Find higher earners |
| Hire date comparison | `e1.hire_date < e2.HIRE_DATE` | Find earlier hires |

---

## Summary

✅ Correct SELF JOIN structure
✅ Proper join condition (hire_date comparison)
✅ Complete pair information (all 4 columns)
✅ Clear aliases (e1 and e2)
✅ Proper sorting (by hire dates descending)

Your solution perfectly demonstrates SELF JOIN with hire date comparisons! ✅
