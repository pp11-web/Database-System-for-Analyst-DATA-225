use employees;
select e.first_name as First_Name, s.salary from dept_emp De
inner join employees e on De.emp_no = e.emp_no
inner join salaries s on e.emp_no = e.emp_no
having s.salary > (select max(s.salary)from dept_manager Dm inner join salaries s on Dm.emp_no = s.emp_no);