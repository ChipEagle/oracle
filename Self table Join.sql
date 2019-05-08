desc employees;

SELECT worker.last_name AS emp, manager.last_name AS mgr
FROM   employees worker
JOIN   employees manager
ON     (worker.manager_id = manager.employee_id);


SELECT DISTINCT manager.employee_id, manager.last_name AS mgr
FROM   employees worker
JOIN   employees manager
ON     (worker.manager_id = manager.employee_id)
ORDER BY manager.last_name;


SELECT  worker.last_name AS emp, manager.last_name AS mgr
FROM    employees worker
JOIN    employees manager
ON      (worker.manager_id = manager.employee_id)
WHERE   manager.employee_id = 103
ORDER BY worker.last_name;

