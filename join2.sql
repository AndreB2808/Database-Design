SELECT location_id, street_address, city, state_province, country_name
FROM locations l
JOIN countries c ON l.country_id = c.country_id;

SELECT last_name, d.department_id, department_name
FROM employees e
JOIN departments d ON d.department_id = e.department_id;

SELECT last_name, d.department_id, department_name
FROM employees e
JOIN departments d ON d.department_id = e.department_id
JOIN locations l ON l.location_id = d.location_id
WHERE city = 'Toronto';

SELECT e.last_name, c.last_name colega
FROM employees e
JOIN employees c ON (e.department_id = c.department_id)
WHERE e.employee_id <> c.employee_id;

SELECT e.last_name, e.hire_date, davies.hire_date
FROM employees e
JOIN employees davies ON davies.last_name = 'Davies'
WHERE e.hire_date > davies.hire_date;

SELECT b.last_name, b.hire_date, w.last_name, w.hire_date
FROM employees b
JOIN employees w
ON b.employees_id = w.manager_id
WHERE b.hire_date > w.hire_date;

SELECT last_name, job_id cargo, salary * 12 ann_sal
FROM employees
ORDER BY 3 asc;