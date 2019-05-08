desc departments;

desc locations;

select department_id, department_name, location_id, city 
  from departments
NATURAL JOIN locations;