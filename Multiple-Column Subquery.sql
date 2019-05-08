desc employees;

/*

Multiple Column Subqueries

*/

select employee_id, department_id, salary
from   employees 
where  (salary, department_id) IN (select max(salary), department_id
                                  from   employees
                                  group by department_id)
ORDER BY department_id;
                                  

-- Null values in subquery

SELECT emp.last_name
FROM   employees emp
WHERE  emp.employee_id NOT IN (SELECT mgr.manager_id
                               FROM   employees mgr
                               WHERE  mgr.manager_id IS NOT NULL); 
                               
 
 -- ANY
                               
SELECT emp.last_name
FROM   employees emp
WHERE  emp.employee_id IN (SELECT mgr.manager_id
                               FROM   employees mgr
                               WHERE  mgr.manager_id IS NOT NULL);
                               








