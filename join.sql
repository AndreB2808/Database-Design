SELECT e.last_name, d.department_name, l.street_address, c.country_name, r.region_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN locations l ON l.location_id = d.location_id
INNER JOIN countries c ON c.country_id = l.country_id
INNER JOIN regions r ON r.region_id = c.region_id;

/* -------------------------------------------------------------------------------------- */

SELECT e.last_name, d.department_name
FROM employees e 
INNER JOIN departments d ON e.department_id = d.department_id
WHERE d.department_id = 90
AND e.job_id = 'AD_PRES'
ORDER BY e.last_name;

/* -------------------------------------------------------------------------------------- */

SELECT e.last_name, d.department_name
FROM employees e 
INNER JOIN departments d ON e.department_id = d.department_id;

SELECT e.last_name, d.department_name
FROM employees e 
LEFT OUTER JOIN departments d ON e.department_id = d.department_id;

SELECT e.last_name, d.department_name
FROM employees e 
RIGHT OUTER JOIN departments d ON e.department_id = d.department_id;

SELECT e.last_name, d.department_name
FROM employees e 
FULL JOIN departments d ON e.department_id = d.department_id;

/* -------------------------------------------------------------------------------------- */

SELECT last_name
FROM employees
WHERE department_id IS NULL;

SELECT e.last_name, d.department_name
FROM employees e 
RIGHT JOIN departments d ON e.department_id = d.department_id
WHERE e.department_id IS NULL
ORDER BY department_name;