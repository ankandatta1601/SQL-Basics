SELECT 
    *
FROM
    employees.emp_manager_test;

SELECT 
    e1.*
FROM
    emp_manager_test e1
        JOIN
    emp_manager_test e2 ON e1.emp_no = e2.emp_no;