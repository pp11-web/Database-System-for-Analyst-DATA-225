use employees;
select distinct e.emp_no,s.salary,De.dept_no from employees e
inner join salaries s on s.emp_no = e.emp_no inner join dept_emp De on  e.emp_no = De.emp_no
group by e.emp_no,De.dept_no,salary having s.salary> (select avg(s.salary) from salaries s);