USE employees;
DROP PROCEDURE if exists select_employees;

DELIMITER $$

CREATE PROCEDURE select_employees()
BEGIN 

SELECT 
    *
FROM
    employees
LIMIT 1000;

END $$

DELIMITER ;



