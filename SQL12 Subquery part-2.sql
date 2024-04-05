use employees;
show tables;
select * from employees;
select * from titles;

select first_name, title from employees as emp join titles as t
where(emp.emp_no=t.emp_no) and title=("Assistant Engineer");

select e.emp_no , first_name , hire_date , t.title
from employees as e inner join titles t
where(e.emp_no=t.emp_no) and title ="Assistant Engineer"
and hire_date>any
(select hire_Date
from employees as e inner join titles t
where(e.emp_no=t.emp_no) and title="Manager");


select * from salaries;

select salary from  salaries as s
where s.emp_no=10002;

select s.emp_no ,first_name, salary from salaries as s join  employees as emp
where (emp.emp_no=s.emp_no) and salary<all(select salary from salaries as s
where s.emp_no=10002);

select s.emp_no,first_name,salary from salaries s join employees as e
where(s.emp_no=e.emp_no) and s.emp_no=10002
     and salary<any(select salary from salaries where emp_no=10002);




select emp.emp_no ,first_name, last_name, title from employees as emp join titles as t
where(emp.emp_no=t.emp_no) and (title!="Manager") ;
select emp.emp_no ,first_name, last_name, title from employees as emp join titles as t 
where(emp.emp_no=t.emp_no) and (title="Manager") and emp.emp_no in (select emp.emp_no from employees as emp join titles as t);

