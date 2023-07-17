USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM dept_manager AS de
         JOIN employees AS e
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
WHERE to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Employee_Name
FROM dept_manager AS de
         JOIN employees AS e
              ON e.emp_no = de.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
WHERE to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS Title, COUNT(t.title) AS Total
    FROM employees AS e
        JOIN dept_emp AS de
            ON e.emp_no = de.emp_no
        JOIN titles AS t
            ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' AND de.dept_no = 'd009' AND t.to_date = '9999-01-01'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', salary
    FROM employees AS e
        JOIN dept_manager AS dm
            ON e.emp_no = dm.emp_no
        JOIN departments AS d
            ON d.dept_no = dm.dept_no
        JOIN salaries AS s
            ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND S.to_date = '9999-01-01'
ORDER BY d.dept_name;

