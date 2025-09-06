create assertion CheckMaS
check not exits(
select * from dept_manager dm inner join salaries s on s.emp.nordm.emp_no 
where salary <= 50000)

create assertion CheckMaS
check ( 
not exits(
select * from dept_manager dm inner join salaries s on s.emp.nordm.emp_no 
where salary <= 50000)

create assertion salary
check(select salary,dept_no,emp_no,first_name,last_name from(select sum(salary) as salary,dept_no,d.emp_no,e.first_name,e.last_name from
salaries sa join dept_manager dm on dm.emp_no=sa.emp_no join employees emp on emp.emp_no=dm.emp_no group by dept_no,dm.emp_no) as t where salary not in (select max(sa) from(select sum(salary) as sa,dept_no,d1.emp_no From salaries sa1
join dept_manager d1 ON d1.emp_no=s1.emp_no Group by dept_no,d1.emp_no) as d1 group by dept_no))
