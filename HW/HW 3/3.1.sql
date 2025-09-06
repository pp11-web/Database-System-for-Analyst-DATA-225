use employees;
show tables;
describe departments;
describe dept_emp;
describe employees;
select d.dept_no as Department_No,d.emp_no as Employee_No, e1.hire_date as Hire_Data from dept_emp d
Inner join employees e1 on e1.emp_no = d.emp_no
Inner join (select d.dept_no, max(e.hire_date) as recent_hire_date
from employees e
inner join dept_emp d on d.emp_no = e.emp_no
group by d.dept_no) temp on temp.dept_no = d.dept_no
where e1.hire_date = temp.recent_hire_date
order by d.dept_no;

WITH RecentHires AS (
  SELECT
    d.dept_no AS Department_No,
    e.emp_no AS Employee_No,
    e.hire_date AS Hire_Date,
    ROW_NUMBER() OVER (PARTITION BY d.dept_no ORDER BY e.hire_date DESC) AS RowNum
  FROM dept_emp d
  INNER JOIN employees e ON e.emp_no = d.emp_no
)
SELECT Department_No, Employee_No, Hire_Date
FROM RecentHires
WHERE RowNum = 1
ORDER BY Department_No;
