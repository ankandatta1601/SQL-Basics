SELECT 
    COUNT(*), AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no; 



SELECT 
    COUNT(*), AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000; 