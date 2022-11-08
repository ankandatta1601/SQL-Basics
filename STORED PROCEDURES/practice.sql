DROP PROCEDURE if exists emp_info;

DELIMITER $$

CREATE PROCEDURE emp_info(in p_emp_name char, in p_last_name char, out p_emp_no int)

BEGIN 

SELECT 

e.emp_no

into p_emp_no

FROM

employees e

;

END $$

DELIMITER ;
