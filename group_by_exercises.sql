USE employees;

SELECT DISTINCT title
from titles;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT last_name, COUNT(last_name) AS count
FROM employees
WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%'
GROUP BY last_name;

SELECT gender, COUNT(gender) AS count
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;