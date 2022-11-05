USE employees
UPDATE employees 
SET 
    first_name = 'Anakin',
    last_name = 'Skywalker'
WHERE
    emp_no = 10001;
    
COMMIT;