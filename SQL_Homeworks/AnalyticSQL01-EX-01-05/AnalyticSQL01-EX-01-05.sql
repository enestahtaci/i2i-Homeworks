-- AnalyticSQL01-EX-01;
SELECT department_id, 
       LISTAGG(CONCAT(first_name || ' ' || last_name, ';')) 
       WITHIN GROUP (ORDER BY first_name) AS newList 
FROM employees 
GROUP BY department_id;



-- AnalyticSQL01-EX-02;
SELECT employee_id, job_id, hire_date, salary,
    LAG(salary, 1, 0) OVER (PARTITION BY job_id ORDER BY hire_date) AS preceding_salary,
    LEAD(salary, 1, 0) OVER (PARTITION BY job_id ORDER BY hire_date) AS following_salary,
    (salary + 
    LAG(salary, 1, 0) OVER (PARTITION BY job_id ORDER BY hire_date) + 
    LEAD(salary, 1, 0) OVER (PARTITION BY job_id ORDER BY hire_date)) AS total_salary
FROM employees
ORDER BY job_id, hire_date;



-- AnalyticSQL01-EX-03;
WITH RankedSalaries AS (
    SELECT employee_id, department_id, salary,
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_rank
    FROM employees
)
SELECT employee_id, department_id, salary, salary_rank
FROM RankedSalaries
WHERE salary_rank > 1
ORDER BY department_id, salary_rank;



-- AnalyticSQL01-EX-04;
SELECT employee_id, hire_date,
    EXTRACT(YEAR FROM hire_date) AS hire_year,
    ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM hire_date) ORDER BY hire_date) AS hire_order
FROM employees
ORDER BY hire_year, hire_order;



-- AnalyticSQL01-EX-05;
SELECT employee_id, first_name, last_name, salary,
    LAG(salary, 1, 0) OVER (ORDER BY hire_date) AS preceding_salary,
    LEAD(salary, 1, 0) OVER (ORDER BY hire_date) AS following_salary
FROM employees
ORDER BY hire_date;
