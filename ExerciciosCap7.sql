SELECT manager_id, min(salary)
FROM employees
GROUP BY manager_id
HAVING min(salary) <= 6000
ORDER BY min(salary) desc;

SELECT max(salary) - min(salary) DIFFERENCE
FROM employees;

SELECT distinct manager_id manager_num
FROM employees;

SELECT job_id, count(*)
FROM employees
GROUP BY job_id;

SELECT  job_id, max(salary) "Maximum",
        min(salary) "Minimum",
        sum(salary) "Sum",
        avg(salary) "Average"
FROM employees
group by job_id;