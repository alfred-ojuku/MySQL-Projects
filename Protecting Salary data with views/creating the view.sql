USE roam;

DROP VIEW IF EXISTS v_employees;

CREATE view v_employees AS
SELECT employee_id,
       first_name,
       last_name,
       department,
       job_title
FROM  employees;