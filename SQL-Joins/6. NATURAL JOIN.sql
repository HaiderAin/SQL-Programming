--6.Use NATURAL JOIN to show employees and their matching department details.
SELECT e.first_name||' '||e.last_name as full_name, d.department_name
FROM employee e
NATURAL JOIN department d;

### How NATURAL JOIN Works

`NATURAL JOIN` automatically joins tables based on **all columns with the same name** in both tables. In this case:
- Both `employee` and `department` tables have the `employee_id` column
- The join automatically matches on `employee_id` without requiring an explicit condition

This is equivalent to:
```sql
SELECT e.first_name||' '||e.last_name as full_name, d.department_name
FROM employee e
JOIN department d
ON e.employee_id = d.employee_id;
```

Or:
```sql
SELECT e.first_name||' '||e.last_name as full_name, d.department_name
FROM employee e
JOIN department d
USING (employee_id);
```

### Expected Output

| full_name | department_name |
|-----------|-----------------|
| Aarav Sharma | Information Technology |
| Maya Patel | Database Services |
| Ethan Brown | Business Systems |
| Sophia Wilson | Project Office |
| Liam Johnson | Infrastructure |
| Ananya Reddy | Operations Analysis |
| Noah Davis | Quality Assurance |
| Isha Gupta | Design |
| Oliver Miller | Cloud Engineering |
| Priya Nair | Human Resources |

### Comparison of All Three Syntaxes

| Syntax | Explicitness | Flexibility | Use Case |
|--------|-------------|------------|----------|
| **ON** | Most explicit | Most flexible | Different column names or complex conditions |
| **USING** | Medium | Medium | Same column name in both tables |
| **NATURAL JOIN** | Least explicit | Least flexible | Simple joins on all common columns |

### ⚠️ Note on NATURAL JOIN

While `NATURAL JOIN` works correctly here, it's generally **less recommended** in production code because:
- It's implicit about which columns are being joined
- If schema changes add/remove columns, the join behavior changes silently
- It reduces code clarity for maintenance

For better practice, use explicit `ON` or `USING` clauses. ✅
