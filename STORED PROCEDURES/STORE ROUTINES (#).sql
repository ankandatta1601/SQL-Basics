DROP PROCEDURE if exists employees_salary;

DELIMITER $$

CREATE PROCEDURE employees_salary(in p_emp_no int)
BEGIN 

SELECT 

e.first_name, e.last_name,  s.from_date, s.to_date, AVG(s.salary) AS average_salary
    
FROM

employees e

join salaries s on e.emp_no = s.emp_no

where e.emp_no = p_emp_no

group by  s.from_date, s.to_date
;

END $$

DELIMITER ;

