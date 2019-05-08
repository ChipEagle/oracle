desc employees;

desc departments;

SELECT  e.employee_id, e.last_name, e.department_id,
        d.department_id, d.location_id
FROM    employees e 
JOIN    departments d
ON      (e.department_id = d.department_id)
WHERE   e.department_id = 30;


SELECT  c.country_name, l.country_id, c.country_id, l.location_id, l.street_address, l.city, l.postal_code
FROM    locations l
JOIN    countries c
ON      l.country_id = c.country_id
ORDER BY c.country_name, l.city;

