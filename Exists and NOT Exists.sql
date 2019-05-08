SELECT employee_id, last_name, job_id, department_id
FROM   employees emp_outer
WHERE  EXISTS (SELECT NULL 
               FROM   employees
              WHERE   manager_id = emp_outer.employee_id);
              
              
SELECT department_id, department_name
FROM   departments dept_outer
WHERE  NOT EXISTS (SELECT NULL 
               FROM   employees
              WHERE   department_id = dept_outer.department_id);
              
