SELECT 
    a.*
FROM
    (SELECT 
        e.emp_no AS emp_id,
            e.first_name,
            e.last_name,
            MIN(d.dept_no) AS d_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_id
    FROM
        employees e
    JOIN dept_emp d ON e.emp_no = d.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no , e.first_name , e.last_name
    ORDER BY e.emp_no) AS a 
UNION SELECT 
    b.*
FROM
    (SELECT 
        e.emp_no AS emp_id,
            e.first_name,
            e.last_name,
            MIN(d.dept_no) AS d_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_id
    FROM
        employees e
    JOIN dept_emp d ON e.emp_no = d.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no , e.first_name , e.last_name
    ORDER BY e.emp_no) AS b;
