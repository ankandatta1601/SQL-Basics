USE employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('ar%');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('ar%');
# %after means starting with

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');
# %before means ending with

SELECT #
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar%'); #whereever there is a and r together
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');#4 letters

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Ma_');#3 letters