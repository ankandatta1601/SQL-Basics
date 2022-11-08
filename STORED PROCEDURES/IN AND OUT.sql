DROP PROCEDURE if exists employees_salary_out;

DELIMITER $$

CREATE PROCEDURE employees_salary_out(in p_emp_no int, out p_avg_salary decimal(10,2))
BEGIN 

SELECT 

e.first_name, e.last_name,  s.from_date, s.to_date, AVG(s.salary) AS average_salary

into p_avg_salary
FROM

employees e

join salaries s on e.emp_no = s.emp_no

where e.emp_no = p_emp_no

group by  s.from_date, s.to_date
;

END $$

DELIMITER ;

