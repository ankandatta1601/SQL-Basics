
SELECT 
    e1.emp_no, e2.manager_no, e2.dept_no
FROM
    emp_manager_test e1
        JOIN
    emp_manager_test e2 ON e1.emp_no = e2.emp_no
WHERE
    e2.emp_no IN (SELECT 
            manager_no
        FROM
            emp_manager_test);
            

SELECT 
    e1.*
FROM
    emp_manager_test e1
        JOIN
    emp_manager_test e2 ON e1.emp_no = e2.emp_no
WHERE
    e2.emp_no IN (SELECT 
            manager_no
        FROM
            emp_manager_test);