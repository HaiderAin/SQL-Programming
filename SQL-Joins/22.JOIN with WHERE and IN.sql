--22.Display employee full name, department name, and location for departments located in New York, Chicago, or Dallas.
SELECT e.first_name ||' '|| e.last_name as Employee_name,d.department_name,d.location
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE d.location IN ('New York','Chicago','Dallas');


### How It Works

1. **String Concatenation**: `e.first_name ||' '|| e.last_name` combines first and last name with a space
2. **Alias**: `as Employee_name` renames the concatenated column
3. **JOIN**: Returns matching rows from both `employee` and `department` tables
4. **WHERE d.location IN (...)**: Filters departments with locations in the specified list
5. **SELECT**: Returns full employee name, department name, and location

### Expected Output (Based on Your Data)

| Employee_name | department_name | location |
|---------------|-----------------|----------|
| Aarav Sharma | Information Technology | New York |
| Maya Patel | Database Services | Chicago |
| Ethan Brown | Business Systems | Dallas |


### ✅ Key Observations

- **3 rows returned** (only employees in New York, Chicago, or Dallas)
- **Aarav Sharma** manages Information Technology department in New York
- **Maya Patel** manages Database Services department in Chicago
- **Ethan Brown** manages Business Systems department in Dallas
- All other employees are excluded because their departments are in different locations

### Alternative Syntax Using OR

You could also write it as:

```sql
SELECT e.first_name ||' '|| e.last_name as Employee_name, d.department_name, d.location
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE d.location = 'New York' 
   OR d.location = 'Chicago' 
   OR d.location = 'Dallas';
```

But the `IN` clause is cleaner and more efficient! ✅

Your solution perfectly demonstrates string concatenation, aliasing, and the IN clause with JOINs! ✅

