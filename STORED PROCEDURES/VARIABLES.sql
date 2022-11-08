set @p_emp_no = 0;
call employees.emp_info('Aruna', 'Journel', @p_emp_no);
select @p_emp_no;
