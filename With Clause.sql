WITH Count_emps_in_depts AS
(
SELECT department_id, COUNT(*) AS num_emps
FROM   employees
GROUP BY department_id
)
SELECT employee_id, ROUND(salary/num_emps) AS "Salary divided by number of Employees"
FROM   employees emps
JOIN   Count_emps_in_depts c
ON     (emps.department_id = c.department_id)
ORDER BY "Salary divided by number of Employees" DESC;




