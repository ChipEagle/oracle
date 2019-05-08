desc employees;

desc departments;

desc locations;

SELECT e.employee_id, e.last_name, e.department_id, e.manager_id,
       d.department_id, d.location_id
FROM   employees    e
JOIN   departments  d
ON     (e.department_id = d.department_id)
AND    e.manager_id = 149;


SELECT e.employee_id, e.last_name, e.department_id, e.manager_id,
       d.department_id, d.location_id
FROM   employees    e
JOIN   departments  d
ON     (e.department_id = d.department_id)
WHERE   e.manager_id = 149;

