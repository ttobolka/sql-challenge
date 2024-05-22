select salaries.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries 
on salaries.emp_no = employees.emp_no

select employees.emp_no, employees.last_name, employees.first_name, employees.hire_date
from employees
where extract(year from hire_date) = 1986;

select distinct on (dept_manager.dept_no) dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager 
inner join departments 
on dept_manager.dept_no= departments.dept_no
inner join employees 
on dept_manager.emp_no = employees.emp_no

select distinct on (employees.emp_no) employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
inner join departments
on dept_emp.dept_no = departments.dept_no

select employees.last_name, employees.first_name
from employees
where (employees.first_name = 'Hercules') and (lower(employees.last_name)like 'b%')

select distinct on (emp_no) *
into emp_dept
from dept_emp

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join emp_dept
on employees.emp_no = emp_dept.emp_no
inner join departments
on emp_dept.dept_no = departments.dept_no

select last_name,count(last_name) as frequency 
from employees 
group by last_name
order by frequency desc;