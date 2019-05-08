desc employees;

SELECT  last_name, hire_date
FROM    employees 
WHERE   last_name = 'Davies';

SELECT  e.last_name, e.hire_date
FROM    employees e
JOIN    employees davies
ON (davies.last_name = 'Davies')
WHERE   davies.hire_date < e.hire_date
ORDER BY e.hire_date;




