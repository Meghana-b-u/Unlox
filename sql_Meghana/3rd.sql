-- Create a database
create database feb_batch;

-- drop database
drop database feb_batch;

-- to see all the databases
show databases;

-- to enter into a database
use feb_batch;

-- how to create atable
create table std (
id int primary key,
s_name varchar(100),
marks int
);

-- show tables
show tables;

-- employee table
create table employeee (
emp_id int, e_name varchar(20), dept varchar(100), salary int );

-- drop table
drop table employeee;

-- how to show table data
select * from std;

-- insert data into employee table
insert into employeee (emp_id, e_name, dept, salary)
values(1, "AAA", "HR", 500000),
(2, "BBB", "HR", 600000),
(3, "CCC", "IT", 550000),
(4, "DDD", "Finance", 670000),
(5, "EEE", "IT", 880000),
(6, "FFF", "HR", 700000),
(7, "GGG", "IT", 400000);

select * from employeee;

insert into std (id, s_name, marks)
values(1, "AAA", 76),
(2, "BBB", 77),
(3, "CCC", 80),
(4, "DDD", 87),
(5, "EEE", 78),
(6, "FFF", 66),
(7, "GGG", 79);

show tables;
select * from std;

-- practice questions
create table payments (id int, type varchar(20), amount int );
insert into payments (id, type, amount)
values(1, "cash", 50000),
(2, "upi", 70000),
(3, "cash", 80000),
(4, "cash", 87000),
(5, "upi", 78000);

select * from payments;

-- where condition
select s_name from std
where marks >77;

select * from employeee
where dept ="it" or "finance" ;

-- how to sort the output in asc or desc
select * from std 
order by marks asc;

-- how to print limited rows like top 3 2 etc
select * from std
order by marks desc
limit 3;

-- session 3

use feb_batch;
show tables;

-- query : calculate the salary for each dept
select dept, sum(salary) from employeee
where dept = 'hr' 
group by dept
order by sum(salary) desc;

-- count the students whose marks are more than 75
select count(*) from std
where marks>75;

drop table payments;

create table payments (

payment_id int primary key,

payment_type varchar(100),

amount int 

);

insert into payments values 
(1, "CASH", 25000),
(2, "CASH", 50000),
(3, "UPI", 25000),
(4, "CASH", 80000),
(5, "UPI", 46000),
(6, "UPI", 34000),
(7, "CASH", 46000),
(8, "UPI", 65000),
(9, "CASH", 85000),
(10, "UPI", 95000),
(11, "UPI", 55000),
(12, "UPI", 35000),
(13, "CASH", 55000),
(14, "UPI", 75000),
(15, "UPI", 90000);

-- find the avg for each payment type,print it in the desc order 

select payment_type as Payment, round(avg(amount),3) as Average from payments
group by payment_type
order by avg(amount) desc;

-- print the least amount from each dept
select payment_type, min(amount) from payments
group by payment_type
order by min(amount) desc;

-- print the least amount from each dept
select payment_type, max(amount) from payments
group by payment_type
order by max(amount) desc;

-- print all the students whose name start with "s" 
select s_name from std
where s_name like "a%";

-- -- print all the students whose name start with "s" and end with "a"
select s_name from std
where s_name like "a%a";

-- print all the students whose name contain "a" as second character
select s_name from std
where s_name like "_a%";

-- ************* Thursday session **************
 use feb_batch;
 show tables;
 select * from dim_customer;
 select * from dim_date;
 select * from dim_host;
 select * from dim_property;
 select * from fact_bookings;
select * from std;
select * from employeee;

-- how to insert the values in the table
insert into employeee values
(8,"Jancy",null,50000),
(9,"nancy",null,70000),
(10,null,"HR",900000),
(11,NULL,"IT",null);
 
 
insert into std values
(8,"Jancy",null),
(9,"nancy",null),
(10,null,90);
 
--- print the all entries without having name
select * from std
where s_name is null;

-- print all the entries without having name and marks
select * from std
where s_name is null and marks is null;

-- print all the entries without null values
select * from std
where s_name is not null;

-- ================= friday session ============================

use feb_batch;
show tables;
select * from dim_customer;
select * from dim_date;
select * from dim_host;
select * from dim_property;
select * from fact_bookings;
select * from std;
select * from employeee;

select dh.Superhost_Flag, round(sum(fb.revenue),2) as total_revenue from dim_host as dh
join fact_bookings as fb on fb.host_id = dh.host_id
group by dh.Superhost_Flag;

-- ======================== saturday session ======================
use feb_batch;
show tables;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Rahul', 101, 60000),
(2, 'Priya', 102, 75000),
(3, 'Amit', 103, 50000),
(4, 'Neha', 101, 72000),
(5, 'Arjun', NULL, 45000);
 
INSERT INTO departments VALUES
(101, 'HR'),
(102, 'Finance'),
(104, 'Marketing');

select * from employees;
select * from departments;

-- INNER join returns matching data points/values
select e.emp_name,d.dept_name from employees as e
join departments as d on d.dept_id = e.dept_id;

-- LEFT join returns all data from left table and matching data from right table.
select e.emp_name,d.dept_name from employees as e
left join departments as d on d.dept_id = e.dept_id;

-- RIGHT join returns all data from right table and matching data from left 
select e.emp_name,d.dept_name from employees as e
right join departments as d on d.dept_id = e.dept_id;

-- Full OUTER join returns all data from left table and all data from right
select e.emp_name,d.dept_name from employees as e
left join departments as d on d.dept_id = e.dept_id
union
select e.emp_name,d.dept_name from employees as e
right join departments as d on d.dept_id = e.dept_id;

select * from employees as e
left join departments as d on d.dept_id = e.dept_id
union
select * from employees as e
right join departments as d on d.dept_id = e.dept_id;

-- cross join returns c* product
select e.emp_name,d.dept_name from employees as e
cross join departments as d on d.dept_id = e.dept_id
limit 10;

select * from employees;
select * from departments;

select d.dept_name, sum(e.salary) total_income from departments d
join employees e on e.dept_id = d.dept_id;

