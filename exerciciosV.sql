// 1

SELECT last_name "SOBRENOME", salary "SALÁRIO" 
FROM employees 
WHERE salary >= 12000;

// 2

SELECT employee_id "ID EMPREGADO", last_name "SOBRENOME" 
FROM employees 
WHERE employee_id = 176;

// 3

SELECT last_name "SOBRENOME", salary "SALÁRIO" 
FROM employees 
WHERE salary NOT BETWEEN 5000 AND 12000;  

// 4 

SELECT last_name "SOBRENOME", employee_id "ID EMPREGADO", hire_date "DATA DE ADMISSÃO"
FROM employees 
WHERE last_name = 'Matos' OR last_name = 'Taylor';  

// 5

SELECT last_name "SOBRENOME", department_id "DEPARTAMENTO"
FROM employees 
WHERE department_id IN (20, 50)
ORDER BY last_name;  

// 6

SELECT last_name "Employee", salary "Monthly Salary ", department_id "Department ID"
FROM employees 
WHERE department_id IN (20, 50) AND salary BETWEEN 5000 AND 12000; 

// 7

SELECT last_name "SOBRENOME", hire_date "DATA DE ADMISSÃO"
FROM employees 
WHERE hire_date BETWEEN '01-JAN-94' AND '31-DEC-94'
ORDER BY hire_date;

// 8 

SELECT last_name "SOBRENOME", job_id "CARGO"
FROM employees
WHERE manager_id IS NULL;

// 9 

SELECT last_name "SOBRENOME", salary "SALÁRIO", commission_pct "COMISSÃO"
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

// 10

SELECT last_name "SOBRENOME"
FROM employees
WHERE last_name LIKE '__a%';

// 11

SELECT last_name "SOBRENOME"
FROM employees
WHERE lower(last_name) LIKE '%a%' AND lower(last_name) LIKE '%e%' ;

// 12

SELECT last_name "SOBRENOME", salary "SALÁRIO", job_id "CARGO"
FROM employees
WHERE job_id = 'SA_REP' OR job_id = 'ST_CLERK' AND salary NOT IN (2500, 3500, 7000)
ORDER BY salary DESC;

// 13

SELECT last_name "Employee", salary "SALÁRIO", commission_pct "COMISSÃO"
FROM employees 
WHERE commission_pct = .2
ORDER BY salary DESC;

