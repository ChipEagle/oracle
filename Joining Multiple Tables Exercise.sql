-- NATURAL JOIN

SELECT
    location_id,
    street_address,
    city,
    state_province,
    country_name
FROM
    locations NATURAL JOIN countries;
    
 
-- Self Join   
    
SELECT w.last_name AS "Employee", w.employee_id AS "Emp#", m.last_name AS "Manager", m.employee_id AS "Mgr#" 
FROM   employees w
JOIN   employees m
ON     (w.manager_id = m.employee_id);


SELECT w.last_name AS "Employee", w.employee_id AS "Emp#", m.last_name AS "Manager", m.employee_id AS "Mgr#" 
FROM   employees w
LEFT OUTER JOIN   employees m
ON     (w.manager_id = m.employee_id)
ORDER BY w.employee_id;

SELECT
    employee_id,
    last_name,
    salary
FROM
    employees
WHERE salary > (select AVG(salary)
                    from employees)
ORDER BY salary;


SELECT
    employee_id,
    last_name
from employees
where last_name like '%u%';
