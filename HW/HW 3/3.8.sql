use employees;
select count(emp_no) as Employees_count from salaries s
where s.salary - (select min(salary) from salaries)>=15000;