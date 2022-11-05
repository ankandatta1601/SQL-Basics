SELECT 
    first_name, count(first_name) as first_name_count
FROM
    employees
GROUP BY first_name
HAVING count(first_name) > 250
order by first_name;