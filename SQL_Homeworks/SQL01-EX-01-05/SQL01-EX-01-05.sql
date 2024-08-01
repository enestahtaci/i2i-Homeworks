-- SQL01-EX-01
SELECT e.employee_id, e.first_name, d.department_name 
FROM EMPLOYEES e
JOIN departments d 
ON department_name = d.department_name;


-- SQL01-EX-02
SELECT employee_id, manager_id
FROM employees;


-- SQL01-EX-03
SELECT SUBSTR(phone_number,1,3) AS Operator, 
COUNT(phone_number) AS Total 
FROM employees
GROUP BY (substr(phone_number,1,3))
;
-- 2. modeli henuz yapamadim


-- SQL01-EX-04
CREATE TABLE emp AS
SELECT * FROM employees;
SELECT * FROM EMP;

DELETE FROM EMP 
WHERE employee_id > 1;

INSERT INTO emp (
employee_id,
first_name,
last_name,
email,
phone_number,
hire_date,
job_id,
salary,
commission_pct,
manager_id,
department_id
)
VALUES(
12,
'enes',
'tahtaci',
'enes@gmail.com',
'515.123.4567',
'17-JUN-03',
'IT_PROG',
17000,
null,
100,
60);

UPDATE emp 
SET phone_number = '555.333.6644' , salary = 68000
WHERE employee_id = 12;
SELECT * FROM emp;

DELETE FROM emp 
WHERE employee_id = 12;
SELECT * FROM emp;

DROP TABLE emp;


-- SQL01-EX-05
SELECT CONCAT(RPAD(SUBSTR(first_name,1,2),5,'*'),
              RPAD(SUBSTR(last_name,1,2),5,'*')) AS customername
FROM employees;
