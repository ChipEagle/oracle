
/*
From the Foreign key to the Primary key
*/

desc departments;

desc employees;

SELECT employee_id, last_name,
       location_id, department_id
  FROM employees 
JOIN departments
USING  (department_id);


SELECT employee_id, last_name,
       location_id, department_id
  FROM departments 
JOIN   employees
USING  (department_id);


SELECT last_name, department_id, department_name
  FROM employees 
JOIN   departments
USING (department_id);

SELECT first_name, last_name, job_id, job_title
  FROM employees 
JOIN   jobs
USING  (job_id)
WHERE  department_id in (10, 20, 30, 40);

/*

ERROR:
Do not qualify a column that is used in the NATURAL join or a join with a USING clause

ORA-25154 Column part of USING clause cannot have qualifier

*/

Select l.city, d.department_name
  FROM locations l 
JOIN   departments d
USING  (location_id)
WHERE  l.location_id = 1400;

/*
The following is okay
*/

SELECT l.city, d.department_name
  FROM locations l 
JOIN   departments d
USING  (location_id)
WHERE  location_id = 1400;


