SELECT 
    e.emp_no, e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager dm
        WHERE
            dm.emp_no = e.emp_no)
ORDER BY emp_no;

SELECT 
    e.emp_no, e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            t.title
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
                AND t.title = 'Assistant Engineer')
ORDER BY emp_no;