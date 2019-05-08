desc employees;

SELECT employee_id, last_name, department_id
FROM   employees
WHERE  department_id is null;

SELECT e.employee_id, e.last_name, e.department_id
FROM   employees    e
JOIN   departments  d
ON     e.department_id = d.department_id
WHERE  e.last_name LIKE 'G%'
ORDER BY e.last_name;

desc departments;

SELECT department_name, department_id
FROM   departments;

SELECT employee_id, last_name, department_id
FROM   employees
WHERE  department_id = 190;

SELECT e.employee_id, e.last_name, e.department_id
FROM   employees    e 
JOIN   departments  d
ON     e.department_id = d.department_id
ORDER BY e.department_id DESC;


/*

Left OUTER Join
Returns all of the rows from the table on the left even if there is no match to the table on the right.

*/

create table alt_employees as
select * from employees;

alter table alt_employees modify (job_id NULL);

update alt_employees set job_id = NULL WHERE employee_id IN (105, 125);

SELECT e.employee_id, e.last_name, e.job_id, j.job_id, j.job_title
FROM   alt_employees e LEFT OUTER JOIN  jobs j
ON     e.job_id = j.job_id
WHERE  e.employee_id in (105, 106, 107, 108, 125)
ORDER BY e.employee_id;


/*

Right OUTER Join
Returns all of the rows from the table on the Right even if there is no match to the table on the left.

*/


create table alt_jobs as
select * from jobs;

insert into alt_jobs values ('AD_MANAGER', 'Administration Manager', 5000, 10000);
commit;


SELECT e.last_name, e.job_id, j.job_id, j.job_title
FROM   employees e RIGHT OUTER JOIN alt_jobs j
ON     (e.job_id = j.job_id);

SELECT * 
FROM   employees e
WHERE  e.job_id = 'AD_MANAGER';


SELECT job_id
FROM   alt_jobs j
MINUS
SELECT job_id
FROM   employees e;


/*

Full OUTER Join
Returns all of the rows from the table on the Right even if there is no match to the table on the Left, 
AND
all of the rows from the table on the Left even if there is no match to the table on the Right.

*/


SELECT e.last_name, d.department_id, d.department_name
FROM   employees e FULL OUTER JOIN departments d
ON     (e.department_id = d.department_id);

select e.last_name, e.job_id, j.job_id, j.job_title
from   alt_employees e FULL OUTER JOIN alt_jobs j
on     (e.job_id = j.job_id)
where  e.last_name like 'A%'
or     j.job_id like 'AD%';

/*

Cartesian product query
A Cartesian product generates a large number of rows and the result is rarely useful

*/

-- 107 

SELECT COUNT(*)
FROM   employees;

-- 19

SELECT COUNT(*)
FROM   jobs;

-- 2033

select last_name, job_title
from   employees, jobs;


/*

Cross Join used to show a Cartesian join is intended

*/

-- 2033

select last_name, job_title
from   employees
CROSS JOIN jobs;


