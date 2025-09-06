use employees;
select e.first_name as Manager,dr.dept_no,sum(salary) as employees_total_salary
from salaries s inner join dept_manager dr on s.emp_no = dr.emp_no
inner join employees e on dr.emp_no = e.emp_no
where dr.to_date='9999-01-01' group by dr.dept_no,e.first_name
order by employees_total_salary;