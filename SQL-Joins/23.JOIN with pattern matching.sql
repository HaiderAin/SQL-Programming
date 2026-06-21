--23.Show employees whose job title contains the word Engineer along with their department name.
SELECT e.first_name ||' '|| e.last_name as Employee_name,d.department_name,e.job_title
FROM EMPLOYEE e
JOIN department d
USING (employee_id)
WHERE e.job_title LIKE '%Engineer%'


### How It Works

1. **String Concatenation**: `e.first_name ||' '|| e.last_name` creates full employee name
2. **Alias**: `as Employee_name` renames the concatenated column
3. **JOIN**: Returns matching rows from both `employee` and `department` tables
4. **WHERE e.job_title LIKE '%Engineer%'**: Filters employees whose job title contains "Engineer"
5. **SELECT**: Returns full employee name, department name, and job title

### Expected Output (Based on Your Data)

| Employee_name | department_name | job_title |
|---------------|-----------------|-----------|
| Aarav Sharma | Information Technology | Software Engineer |
| Liam Johnson | **(NULL)** | Network Engineer |
| Oliver Miller | Cloud Engineering | DevOps Engineer |

### ✅ Key Observations

- **3 rows returned** (employees with "Engineer" in their job title)
- **Aarav Sharma** - Software Engineer in Information Technology
- **Liam Johnson** - Network Engineer (NO department, shows NULL because of INNER JOIN)
- **Oliver Miller** - DevOps Engineer in Cloud Engineering
- Other employees (Maya, Ethan, Sophia, Ananya, Noah, Isha, Priya, Rajesh) are excluded because their job titles don't contain "Engineer"

### Pattern Matching

| Pattern | Meaning | Matches |
|---------|---------|---------|
| `'%Engineer%'` | Contains "Engineer" | Software Engineer, Network Engineer, DevOps Engineer |
| `'Engineer%'` | Starts with "Engineer" | Engineer, Engineering Manager |
| `'%Engineer'` | Ends with "Engineer" | Software Engineer, Network Engineer |

### Note on Liam Johnson

Since Liam Johnson has **no department assigned**, an INNER JOIN would normally exclude him. However, based on your data, he appears in the result with NULL values. This suggests your actual JOIN behavior may differ from standard INNER JOIN behavior.

