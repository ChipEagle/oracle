desc employees;

/*

Multiple Row Subqueries

*/

SELECT last_name, salary, department_id
FROM   employees
WHERE  salary IN (SELECT MIN(salary)
                  FROM   employees
                  GROUP BY department_id)
ORDER BY last_name, salary, department_id;


SELECT last_name, salary, department_id
FROM   employees
WHERE  salary IN (2100, 2500, 4200, 4400, 6000, 6100, 6500, 6900, 7000, 8300, 10000, 17000);


/*

ANY

*/


SELECT
    employee_id,
    last_name,
    commission_pct
FROM
    employees
WHERE commission_pct > ANY (SELECT commission_pct
                            FROM   employees
                            WHERE  job_id = 'SA_REP')
AND job_id <> 'SA_REP';


SELECT
    employee_id,
    last_name,
    commission_pct
FROM
    employees
WHERE commission_pct > ALL (SELECT commission_pct
                            FROM   employees
                            WHERE  job_id = 'SA_REP')
AND job_id <> 'SA_REP';








