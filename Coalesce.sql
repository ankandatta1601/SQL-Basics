SELECT 
    dept_no, IFNULL(dept_name, 'does not exist') AS depname
FROM
    dup_dep;
    
SELECT 
    dept_no, COALESCE(dept_name, 'does not exist') AS depname
FROM
    dup_dep;


