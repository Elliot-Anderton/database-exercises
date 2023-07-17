USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name'
FROM employees
WHERE hire_date IN (
        SELECT hire_date
        FROM employees
        WHERE emp_no = 101010
    );

SELECT title, COUNT(title)
FROM titles
WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE first_name = 'Aamod'
    )
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE dept_manager.to_date = '9999-01-01'
    ) AND
    gender = 'F';

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager dm
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F' AND dm.to_date = '9999-01-01'
        )
    );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
        SELECT MAX(salary)
        FROM salaries
              )
    );