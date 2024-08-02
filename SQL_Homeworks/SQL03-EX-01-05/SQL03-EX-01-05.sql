-- SQL03-EX-01:
ALTER TABLE employees 
ADD max_salary NUMBER;

UPDATE employees
SET max_salary = (SELECT MAX(salary) FROM employees); 

SELECT * FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

DELETE FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);



-- SQL03-EX-02:
CREATE INDEX dpr_name_idx
ON departments (department_name);

ALTER TABLE employees
ADD CONSTRAINT cnstr_salary
CHECK (salary BETWEEN 1000 AND 100000);

DROP INDEX dpr_name_idx;

ALTER TABLE employees
ENABLE CONSTRAINT cnstr_salary;

ALTER TABLE employees
DISABLE CONSTRAINT cnstr_salary;

ALTER TABLE employees
DROP CONSTRAINT cnstr_salary;



-- SQL03-EX-03:
CREATE TABLE emp2 AS
SELECT DISTINCT department_id
FROM employees;

ALTER TABLE emp2 ADD(
    department_name  VARCHAR2(30)
);
  
MERGE INTO emp2 e
USING departments d
ON (e.department_id = d.department_id)
WHEN MATCHED THEN
    UPDATE SET e.department_name = d.department_name
WHEN NOT MATCHED THEN
    INSERT (e.department_id, e.department_name)
    VALUES (d.department_id, d.department_name);

    
    
-- SQL03-EX-04:
WITH selected_employees AS (
    SELECT e.first_name, e.last_name, e.job_id, e.department_id
    FROM employees e
    WHERE e.job_id LIKE 'S%'
),
job_info AS (
    SELECT j.job_id, j.job_title, j.min_salary, j.max_salary
    FROM jobs j
),
employee_details AS (
    SELECT se.first_name, se.last_name, se.job_id, se.department_id,
           ji.job_title, ji.min_salary, ji.max_salary
    FROM selected_employees se
    JOIN job_info ji ON se.job_id = ji.job_id
)
SELECT ed.first_name || ' ' || ed.last_name AS full_name,
       ed.job_id, ed.department_id, ed.job_title,
       ed.min_salary, ed.max_salary, d.department_name
FROM employee_details ed
JOIN departments d ON ed.department_id = d.department_id;
