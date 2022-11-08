USE employees;
DROP PROCEDURE if exists emp_salary;

DELIMITER $$

CREATE PROCEDURE emp_salary(in p_emp_no int)
BEGIN 

SELECT 
    e.first_name, e.last_name, s.salary, s.from_date, s.to_date
FROM
    employees e
    
join salaries s on e.emp_no = s.emp_no
where e.emp_no = p_emp_no;

END $$

DELIMITER ;
