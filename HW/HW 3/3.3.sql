use employees;
select d.dept_name, 
case when count(case when e.gender = 'M' then 1 end) >= count(case when e.gender = 'F' then 1 end) then 'M'
else 'F'
end as majority_gender
from departments d
join dept_emp de on d.dept_no = de.dept_no
join employees e on de.emp_no = e.emp_no
group by d.dept_name