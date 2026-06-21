--33.Display pairs of employees who have the same job title keyword , both containing Engineer.
SELECT
    e1.first_name AS employee1,
    e1.job_title AS job_title_emp1,
    e2.first_name AS employee2,
    e2.job_title AS job_title_emp2
FROM employee e1
JOIN employee e2
ON e1.employee_id > e2.employee_id
WHERE e1.job_title LIKE '%Engineer%'
AND e2.job_title LIKE '%Engineer%';

The query is correct for this problem.

It is displaying **unique pairs of employees where both job titles contain `Engineer`**.

```sql
FROM employee e1
JOIN employee e2
ON e1.employee_id > e2.employee_id
```

This is a **self join**. The `employee` table is joined with itself:

- `e1` means first copy of employee table
- `e2` means second copy of employee table

The condition:

```sql
e1.employee_id > e2.employee_id
```

prevents two problems:

1. It stops an employee from pairing with themselves.
2. It avoids duplicate reverse pairs.

For example, without this condition, you could get both:

```text
Aarav - Liam
Liam  - Aarav
```

But with `e1.employee_id > e2.employee_id`, only one version appears.

Then this part:

```sql
WHERE e1.job_title LIKE '%Engineer%'
AND e2.job_title LIKE '%Engineer%'
```

means both employees in the pair must have `Engineer` somewhere in their job title.

Your engineer employees are:

| employee_id | first_name | job_title |
|---:|---|---|
| 1 | Aarav | Software Engineer |
| 5 | Liam | Network Engineer |
| 7 | Noah | QA Engineer |
| 9 | Oliver | DevOps Engineer |

So Oracle creates all unique pairs:

| Pair | Why included |
|---|---|
| Liam - Aarav | both contain `Engineer` |
| Noah - Aarav | both contain `Engineer` |
| Noah - Liam | both contain `Engineer` |
| Oliver - Aarav | both contain `Engineer` |
| Oliver - Liam | both contain `Engineer` |
| Oliver - Noah | both contain `Engineer` |

There are 4 engineer employees, so the number of unique pairs is:

```text
4 × 3 / 2 = 6
```

That is why the output has exactly **6 rows**.
