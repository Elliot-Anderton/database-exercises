USE employees;

SELECT last_name, first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT CONCAT(first_name, ' ', last_name)
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

SELECT CONCAT(first_name, ' ', last_name), birth_date
FROM employees
WHERE MONTH(birth_date) = 12
        AND DAY(birth_date) = 25;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
        AND MONTH(birth_date) = 12
        AND DAY(birth_date) = 25
ORDER BY CURDATE() - birth_date DESC, hire_date DESC;

SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
        AND MONTH(birth_date) = 12
        AND DAY(birth_date) = 25
ORDER BY CURDATE() - birth_date DESC, hire_date DESC;