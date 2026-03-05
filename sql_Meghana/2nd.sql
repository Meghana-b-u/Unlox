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
order by marks desc;
limit 3;
