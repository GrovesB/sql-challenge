--Query #1 
Select "Employees".emp_no, 
"Employees".last_name, 
"Employees".first_name, 
"Employees".sex, 
"Salaries".salary
from "Employees"
inner join "Salaries"
on "Employees".emp_no = "Salaries".emp_no

--Query #2 
select last_name, 
first_name, 
hire_date
from "Employees"
where date_part('year', hire_date) = '1986'

--Query #3
Select "Departments".dept_no,
"Departments".dept_name,
"Dept_manager".emp_no,
"Employees".last_name, 
"Employees".first_name
from "Departments"
inner join "Dept_manager"
on "Departments".dept_no = "Dept_manager".dept_no
inner Join "Employees" on "Employees".emp_no = "Dept_manager".emp_no 

--Query #4 
Select "Employees".emp_no,
"Employees".last_name, 
"Employees".first_name,
"Departments".dept_name
from "Departments"
inner join "Dept_manager"
on "Departments".dept_no = "Dept_manager".dept_no
inner Join "Employees" on "Employees".emp_no = "Dept_manager".emp_no 


--Query #5 
select "Employees".first_name, 
"Employees".last_name, 
"Employees".sex
from "Employees"
where first_name = 'Hercules' and last_name like 'B%'

--Query #6 
Select distinct on ("Employees".emp_no)
"Employees".emp_no,
"Employees".last_name, 
"Employees".first_name,
"Dept_manager".emp_no,
"Departments".dept_name,
"Departments".dept_no 
from "Employees"
inner join "Dept_manager"
on "Employees".emp_no = "Dept_manager".emp_no
inner join "Departments"
on "Departments".dept_no = "Dept_manager".dept_no
where "Departments".dept_name like 'Sales'

--Query #7 
Select distinct on ("Employees".emp_no)
"Employees".emp_no,
"Employees".last_name, 
"Employees".first_name,
"Dept_manager".emp_no,
"Departments".dept_name,
"Departments".dept_no 
from "Employees"
inner join "Dept_manager"
on "Employees".emp_no = "Dept_manager".emp_no
inner join "Departments"
on "Departments".dept_no = "Dept_manager".dept_no
where "Departments".dept_name like 'Sales' or "Departments".dept_name like 'Development'