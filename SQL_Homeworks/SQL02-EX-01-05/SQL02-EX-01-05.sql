-- Exercise SQL02-EX-01:
SELECT employee_id, first_name, last_name, 
MONTHS_BETWEEN(CURRENT_TIMESTAMP, hire_date) AS Months
FROM employees;


-- Exercise SQL02-EX-02:
SELECT job_id,
       DECODE(JOB_ID,
              'IT_PROG', 'A',
              'HR_REP', 'B',
              'SA_MAN', 'C',
              'SA_REP', 'D',
              'ST_CLERK', 'E',
              '0') AS grade
FROM employees
GROUP BY job_id
ORDER BY grade DESC;


-- Exercise SQL02-EX-03:
SELECT job_id,
        CASE 
            WHEN job_id = 'IT_PROG' THEN 'A' 
            WHEN job_id = 'HR_REP' THEN 'B' 
            WHEN job_id = 'SA_MAN' THEN 'C' 
            WHEN job_id = 'SA_REP' THEN 'D' 
            WHEN job_id = 'ST_CLERK' THEN 'E'
            ELSE '0' 
        END AS grade
FROM employees
GROUP BY job_id
ORDER BY grade DESC;


--Exercise SQL02-EX-04:
SELECT employee_id, last_name
FROM employees
WHERE last_name LIKE '%i%'
;


-- Exercise SQL02-EX-05:
CREATE TABLE my_emp_table(
    first_name     VARCHAR2(20),
    last_name      VARCHAR2(25) NOT NULL,
    salary         NUMBER(8,2)
);

INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Neena', 'Kochhar', 17000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Lex', 'De Haan', 17000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Alexander', 'Hunold', 9000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Bruce', 'Ernst', 6000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('David', 'Austin', 4800);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Valli', 'Pataballa', 4800);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Diana', 'Lorentz', 4200);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Nancy', 'Greenberg', 12008);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Daniel', 'Faviet', 9000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('John', 'Chen', 8200);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Ismael', 'Sciarra', 7700);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Jose Manuel', 'Urman', 7800);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Luis', 'Popp', 6900);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Den', 'Raphaely', 11000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Alexander', 'Khoo', 3100);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Shelli', 'Baida', 2900);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Sigal', 'Tobias', 2800);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Guy', 'Himuro', 2600);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Karen', 'Colmenares', 2500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Matthew', 'Weiss', 8000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Adam', 'Fripp', 8200);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Payam', 'Kaufling', 7900);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Shanta', 'Vollman', 6500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Kevin', 'Mourgos', 5800);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Julia', 'Nayer', 3200);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Irene', 'Mikkilineni', 2700);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('James', 'Landry', 2400);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Steven', 'Markle', 2200);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Laura', 'Bissot', 3300);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Mozhe', 'Atkinson', 2800);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('James', 'Marlow', 2500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('TJ', 'Olson', 2100);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Jason', 'Mallin', 3300);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Michael', 'Rogers', 2900);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Ki', 'Gee', 2400);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Hazel', 'Philtanker', 2200);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Renske', 'Ladwig', 3600);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Stephen', 'Stiles', 3200);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('John', 'Seo', 2700);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Joshua', 'Patel', 2500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Trenna', 'Rajs', 3500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Curtis', 'Davies', 3100);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Randall', 'Matos', 2600);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Peter', 'Vargas', 2500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('John', 'Russell', 14000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Karen', 'Partners', 13500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Alberto', 'Errazuriz', 12000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Gerald', 'Cambrault', 11000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Eleni', 'Zlotkey', 10500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Peter', 'Tucker', 10000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('David', 'Bernstein', 9500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Peter', 'Hall', 9000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Christopher', 'Olsen', 8000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Nanette', 'Cambrault', 7500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Oliver', 'Tuvault', 7000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Janette', 'King', 10000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Patrick', 'Sully', 9500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Allan', 'McEwen', 9000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Lindsey', 'Smith', 8000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Louise', 'Doran', 7500);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Sarath', 'Sewall', 7000);
INSERT INTO my_emp_table (first_name, last_name, salary) VALUES ('Clara', 'Vishney', 10500);



UPDATE my_emp_table
SET salary = salary*1.10;


SELECT * FROM my_emp_table
WHERE first_name = 'David';

WHERE first_name = 'David';


DELETE FROM my_emp_table
WHERE first_name = 'David';

TRUNCATE TABLE my_emp_table;
SELECT * FROM my_emp_table;

