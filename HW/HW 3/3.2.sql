use employees;
select distinct de.dept_no as Department_Id, d.dept_name as Department_name,
count(distinct t.title) as Number_of_titles
from dept_emp de
Inner join departments d on d.dept_no = De.dept_no
Inner join titles t on t.emp_no = De.emp_no
group by De.dept_no;