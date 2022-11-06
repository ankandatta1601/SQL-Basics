USE employees;

-- COUNT() -- 

SELECT 
    COUNT(*)
FROM
    salaries;

SELECT 
    COUNT(salary)
FROM
    salaries;
    
SELECT 
    COUNT(DISTINCT salary)
FROM
    salaries;
    
SELECT 
    COUNT(DISTINCT dept_name)
FROM
    departments;
    
-- SUM() --


SELECT 
    SUM(salary)
FROM
    salaries;
    
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';


-- MIN() and MAX() --


SELECT 
    MAX(salary) AS maximum, MIN(salary) AS minimum
FROM
    salaries;
    
SELECT 
    MAX(salary) AS maximum, MIN(salary) AS minimum
FROM
    salaries;

-- AVG() and ROUND()-- 
 
SELECT 
    ROUND(AVG(salary), 2) AS Average
FROM
    salaries;
    
SELECT 
    ROUND(AVG(salary), 2) AS Average
FROM
    salaries
WHERE
    from_date > '1997-01-01';

