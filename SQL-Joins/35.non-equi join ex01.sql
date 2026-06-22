--35.Join employee and department using a condition where employee salary is greater than department ID multiplied by 500.
SELECT
    e.first_name,
    d.department_name,
    d.employee_id,
    e.SALARY
FROM
    employee e
JOIN 
    department d
ON e.salary > (d.employee_id * 500);


For **the  problem statement**, above is the correct solution.
However, The repeated `department_name` is **not an error** here. It happens because this condition can match one employee with multiple department rows.

The other solution using:

```sql
e.department_id = d.department_id
```

is correct only if the question asks to show each employee with their **actual department**. But for this question, since it asks for salary greater than department ID multiplied by 500, the non-equi join is the correct answer.
