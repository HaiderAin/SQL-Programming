--36.Display employees and departments where the employee ID is less than the department ID minus 100.Use non-equi join only
SELECT
    e.first_name,
    d.department_name,
    e.employee_id,
    d.department_id
FROM
    employee e
JOIN 
    department d
ON e.employee_id < (d.department_id - 100);


That repetition is expected in a **non-equi join**.

The condition:

```sql
ON e.employee_id < (d.department_id - 100)
```

means one employee can match **many departments**. So the same `first_name` repeats once for every department that satisfies the condition.


Example: if `e.employee_id = 101`, and department IDs are `250`, `300`, and `400`, then:

```text
101 < 150
101 < 200
101 < 300
```

So that employee appears in multiple departments.

Since the problem statement specifically wants **non-equi join only**, then repeated employee names are normal unless the sample data is designed to avoid it.
