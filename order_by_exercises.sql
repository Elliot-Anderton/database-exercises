USE employees;

SELECT last_name, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%';

SELECT last_name, first_name, emp_no
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;


SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT last_name, first_name
FROM employees
WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%';