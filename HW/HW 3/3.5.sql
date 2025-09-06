use employees;
with cle1 as (select timestampdiff(year, De.from_date,De.to_date) as Exp ,De.emp_no as Emp_ID
from dept_emp De)
select count(Emp_ID) from cle1 where Exp<2;