--24.Display employees hired before 2021 and their department names.
SELECT e.first_name ||' '|| e.last_name as Employee_name,d.department_name, e.hire_date
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE e.hire_date < TO_DATE('2021-01-01','YYYY-MM-DD');



OR:


SELECT e.first_name ||' '|| e.last_name as Employee_name,d.department_name, e.hire_date
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE e.hire_date < DATE '2021-01-01'

### How It Works

1. **String Concatenation**: `e.first_name ||' '|| e.last_name` creates full employee name
2. **Alias**: `as Employee_name` renames the concatenated column
3. **JOIN**: Returns matching rows from both `employee` and `department` tables
4. **TO_DATE()**: Converts string `'2021-01-01'` to a DATE for comparison
5. **WHERE e.hire_date < TO_DATE(...)**: Filters employees hired before January 1, 2021
6. **SELECT**: Returns employee name, department name, and hire date

### Expected Output (Based on Your Data)

| Employee_name | department_name | hire_date |
|---------------|-----------------|-----------|
| Ethan Brown | Business Systems | 6/20/2020 |
| Sophia Wilson | Project Office | 9/5/2019 |
| Isha Gupta | Design | 4/30/2020 |
| Oliver Miller | Cloud Engineering | 12/1/2018 |

### ✅ Key Observations

- **4 employees returned** (hired before 2021-01-01)
- **Oliver Miller** - Hired 12/1/2018 (earliest hire)
- **Sophia Wilson** - Hired 9/5/2019
- **Isha Gupta** - Hired 4/30/2020
- **Ethan Brown** - Hired 6/20/2020 (latest before 2021)
- **Excluded**: Aarav (1/10/2022), Maya (3/15/2021), Liam (2/12/2023), Ananya (7/18/2022), Noah (11/25/2021), Priya (5/22/2023), Rajesh (8/15/2023)

### Date Comparison Methods

```sql
-- Using TO_DATE (explicit date conversion)
WHERE e.hire_date < TO_DATE('2021-01-01','YYYY-MM-DD')

-- Alternative: Direct date literal (if supported)
WHERE e.hire_date < DATE '2021-01-01'


Your solution perfectly demonstrates date filtering with proper date conversion! ✅
