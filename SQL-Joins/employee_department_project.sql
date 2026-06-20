CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    job_title VARCHAR2(75) NOT NULL,
    hire_date DATE NOT NULL,
    salary NUMBER(10, 2) NOT NULL
);

CREATE TABLE department (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(75) NOT NULL,
    location VARCHAR2(75) NOT NULL,
    employee_id NUMBER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (1, 'Aarav', 'Sharma', 'Software Engineer', DATE '2022-01-10', 72000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (2, 'Maya', 'Patel', 'Database Administrator', DATE '2021-03-15', 81000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (3, 'Ethan', 'Brown', 'Systems Analyst', DATE '2020-06-20', 69000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (4, 'Sophia', 'Wilson', 'Project Manager', DATE '2019-09-05', 95000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (5, 'Liam', 'Johnson', 'Network Engineer', DATE '2023-02-12', 65000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (6, 'Ananya', 'Reddy', 'Business Analyst', DATE '2022-07-18', 70000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (7, 'Noah', 'Davis', 'QA Engineer', DATE '2021-11-25', 62000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (8, 'Isha', 'Gupta', 'UI Designer', DATE '2020-04-30', 68000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (9, 'Oliver', 'Miller', 'DevOps Engineer', DATE '2018-12-01', 88000.00);

INSERT INTO employee (employee_id, first_name, last_name, job_title, hire_date, salary)
VALUES (10, 'Priya', 'Nair', 'HR Specialist', DATE '2023-05-22', 59000.00);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (101, 'Information Technology', 'New York', 1);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (102, 'Database Services', 'Chicago', 2);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (103, 'Business Systems', 'Dallas', 3);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (104, 'Project Office', 'Seattle', 4);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (105, 'Infrastructure', 'Austin', 5);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (106, 'Operations Analysis', 'Boston', 6);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (107, 'Quality Assurance', 'Denver', 7);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (108, 'Design', 'San Francisco', 8);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (109, 'Cloud Engineering', 'Phoenix', 9);

INSERT INTO department (department_id, department_name, location, employee_id)
VALUES (110, 'Human Resources', 'Atlanta', 10);

COMMIT;
