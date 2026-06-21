--34.Find employee pairs where the salary difference is less than 10000.
SELECT
    e1.first_name AS employee1,
    e1.salary AS salary1,
    e2.first_name AS employee2,
    e2.salary AS salary2
FROM employee e1
JOIN employee e2
ON e1.employee_id > e2.employee_id
WHERE ABS(e1.salary - e2.salary) < 10000;


The query is correct:

This query finds pairs of employees whose salary difference is less than `10000`.

The table `employee` is joined with itself. This is called a **self join**. A self join is used when we want to compare rows within the same table.

```sql
FROM employee e1
JOIN employee e2
```

Here, `e1` and `e2` are aliases for the same `employee` table. They allow the query to treat the table as if there are two separate copies of it.

```sql
ON e1.employee_id > e2.employee_id
```

This join condition compares each employee with another employee. It also prevents duplicate pairs.

For example, if employee A and employee B are compared once as `A-B`, the condition avoids showing the same pair again as `B-A`. It also prevents an employee from being compared with themselves.

```sql
SELECT
    e1.first_name AS employee1,
    e1.salary AS salary1,
    e2.first_name AS employee2,
    e2.salary AS salary2
```

These columns display the names and salaries of both employees in each pair.

The aliases `employee1`, `salary1`, `employee2`, and `salary2` are used to make the output easier to understand.

```sql
WHERE ABS(e1.salary - e2.salary) < 10000
```

This condition calculates the difference between the salaries of the two employees.

`ABS()` returns the absolute value, so the result is always positive. This is important because salary difference should not depend on which employee’s salary is subtracted first.

For example:

```text
60000 - 55000 = 5000
55000 - 60000 = -5000
ABS(-5000) = 5000
```

So both cases are treated as a salary difference of `5000`.

Only employee pairs where the salary difference is less than `10000` will be included in the result.

In short, this query compares employees with each other and returns only those pairs whose salaries are close to each other by less than `10000`.
