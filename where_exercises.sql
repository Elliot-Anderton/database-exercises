USE employees;

    SELECT last_name, first_name
        FROM employees
    WHERE (first_name = 'Irena' OR first_name =  'Vidya' OR first_name = 'Maya') AND gender = 'M';

    SELECT last_name, first_name
        FROM employees
    WHERE last_name LIKE 'e%';

    SELECT last_name, first_name
        FROM employees
    WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

    SELECT last_name, first_name
        FROM employees
    WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

    SELECT last_name, first_name
        FROM employees
    WHERE last_name LIKE '%q%';

    SELECT last_name, first_name
        FROM employees
    WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%';