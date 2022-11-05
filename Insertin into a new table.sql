

CREATE TABLE IF NOT EXISTS dup_dep (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

insert into dup_dep(
	dept_no,
    dept_name
)
SELECT 
    *
FROM
    departments;
    
SELECT 
    *
FROM
    dup_dep;