desc employees;

select last_name, job_id
from   employees 
where  job_id = ( select job_id
                   from employees
                  where employee_id = 141
);

/*

Group functions in a subquery

*/


select round(avg(salary),0)
  from employees;

select employee_id, last_name, salary
from   employees
where  salary <= (select round(avg(salary),0)
                    from employees)
order by salary desc;


/*

Using the HAVING Clause with Subqueries

*/


select MIN(AVG(salary))
from   employees
group by job_id;

select job_id, AVG(salary)
from   employees
group by job_id
HAVING AVG(salary) = (select MIN(AVG(salary))
                      from   employees
                      group by job_id);




/*

Common errors
Single-row subquery returns more than one row

*/

SELECT MIN(salary)
                    FROM employees
                    GROUP BY department_id;

SELECT employee_id, last_name
FROM   employees
WHERE   salary =
                 (SELECT MIN(salary)
                    FROM employees
                    GROUP BY department_id);
                    

SELECT employee_id, last_name
FROM   employees
WHERE   salary IN
                 (SELECT MIN(salary)
                    FROM employees
                    GROUP BY department_id);
             
             
/*

Common errors
Subquery does not return a value

*/       

SELECT  last_name, job_id
FROM    employees
WHERE   job_id = 
                 (SELECT    job_id
                  FROM      employees
                 WHERE      last_name = 'Haas');



