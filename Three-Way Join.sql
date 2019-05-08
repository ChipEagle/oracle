desc employees;

desc departments;

desc locations;

select * 
  from user_tables 
 where table_name = 'LOCATIONS';

SELECT e.employee_id, l.city, d.department_name
FROM   employees e
JOIN   departments d
ON     d.department_id = e.department_id
JOIN   locations l
ON     d.location_id = l.location_id;

SELECT e.employee_id, l.city, d.department_name
FROM   employees e
JOIN   departments d
USING  (department_id)
JOIN   locations l
USING  (location_id);


SELECT d.department_name, l.city, c.country_name
FROM   departments d
JOIN   locations l
USING  (location_id)
JOIN   countries c
USING  (country_id);

/*

Oracle Join

*/

SELECT e.employee_id, l.city, d.department_name
FROM   employees e
JOIN   departments d
ON     d.department_id = e.department_id
JOIN   locations l
ON     d.location_id = l.location_id;


/*

MINUS

*/

SELECT e.employee_id, l.city, d.department_name
FROM   employees e
JOIN   departments d
ON     d.department_id = e.department_id
JOIN   locations l
ON     d.location_id = l.location_id
MINUS
SELECT e.employee_id, l.city, d.department_name
FROM   employees    e
      ,departments  d
      ,locations    l
WHERE  e.department_id = d.department_id
  AND  d.location_id = l.location_id;

SELECT e.employee_id, l.city, d.department_name
FROM   employees    e
      ,departments  d
      ,locations    l
WHERE  e.department_id = d.department_id
  AND  d.location_id = l.location_id
MINUS
SELECT e.employee_id, l.city, d.department_name
FROM   employees e
JOIN   departments d
ON     d.department_id = e.department_id
JOIN   locations l
ON     d.location_id = l.location_id;




