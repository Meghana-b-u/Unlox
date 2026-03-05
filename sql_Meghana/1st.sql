create database meghana;

drop database meghana;

create table emp(id int, ename varchar(20), address varchar(30), Salary int);

drop table emp;

insert into emp(id,ename,address,Salary)
value(1,'Meghana','Koppal',50000);
insert into emp(id,ename,address,Salary)
value(2,'Madhura','Hydrabad',80000);
insert into emp(id,ename,address,Salary)
value(3,'Renuka','Benguluru',30000);


select * from emp;

select ename,address
from emp
where address='koppal';

select ename,address
from emp
where address='koppal' and ename='meghana';

select ename,address
from emp
where address='koppal' or ename='Madhura';

select ename,address
from emp
where not address='koppal';

select count(id)
from emp; 

select avg(salary)
from emp;

select sum(salary)
from emp;

select min(salary)
from emp;

select max(salary)
from emp;

select ename,salary
from emp
where ename='Meghana'
group by salary;

select id,ename
from emp
order by id desc;

select id,ename
from emp
where salary is null;

select id,ename
from emp
where salary is not null;

update emp 
set ename = 'Sichana'
where id=3;

update emp
set address = 'goa'
where id=1;

delete from emp
where address='koppal';

select ename , id 
from emp
where address in('koppal','hydrabad');

select id,ename,salary
from emp
where salary between 50000 and 90000;

select id as emp_id
from emp;

select e.ename
from emp as e;

select * from emp;

select case(address)
when 'Benguluru' then 'karnataka'
else 'no idea'
end
from emp;

SELECT DISTINCT ename FROM emp WHERE !(LEFT (ename,1) IN ('A','E','I','O','U'));  
SELECT DISTINCT ename FROM emp WHERE !(RIGHT (ename,1) IN ('A','E','I','O','U'));
SELECT ENAME FROM EMP WHERE  SALARY >40000 ORDER BY RIGHT (ENAME,3) ,ID ASC;
SELECT ENAME FROM EMP ORDER BY ENAME ASC;

create trigger sample_trigger
before insert on emp
for each row set new.Salary = new.Salary + 10000;

insert into emp(id,ename,address,Salary)
value( 4, 'balaji', 'chennai', 60000); 

drop trigger sample_trigger;

select * from emp;

create trigger sample_trigger
after insert on emp
for each row insert into Salary values(new.salary);


create table employees(emp_id int , name varchar(20), dept_id int );
insert into employees(emp_id,name,dept_id)
values(1,'meghana',10);
insert into employees(emp_id,name,dept_id)
values(2,'madhura',20);
insert into employees(emp_id,name,dept_id)
values(3,'renu',30);

create table department(dept_id int , dept_name varchar(10));
insert into department(dept_id,dept_name)
values(10,'HR');
insert into department(dept_id,dept_name)
values(20,'IT');

DROP TABLE DEPARTMENT;

select e.name,d.dept_name
from employees e
inner join department d
on e.dept_id=d.dept_id;

select e.name,d.dept_name
from employees e
left join department d
on e.dept_id=d.dept_id;

select e.name,d.dept_name
from employees e
right join department d
on e.dept_id=d.dept_id;

select e.name,d.dept_name
from employees e
left join department d
on e.dept_id=d.dept_id 
union 
select e.name,d.dept_name
from employees e
right join department d
on e.dept_id=d.dept_id;

select * from employees;
select * from department;









