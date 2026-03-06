-- ====================================================
---- Week 3 Assignment -1 -----
---- Assignment 1: Database Fundamentals
---- Student Name : Meghana Balappa Uppar
-- ====================================================

-- ================= Part A : Therory =================

-- 1. What is a database in MySQL?Why is it important?
--- A database in MySQL is an organized collection of data.
--- It helps in storing,managing, and retrieving stuctured data efficiently.
    
--- Importance -
--- It avoids data redundancy.
--- It improves data security.
--- It makes data retrieval faster.
    
-- 2. Difference between INT and BIGINT
--- INT stores smaller whole number whereas BIGINT stores very large numbers.
--- INT is used for employee IDs, BIGINT is used for large numeric values.
    
-- 3. What is a PRIMARY KEY?
--- PRIMARY KEY uniquely identifies each record.
--- Rules:
--- It must be unique.
--- It cannot contain NULL values.
    
-- 4. Difference between CHAR and VARCHAR
--- CHAR stores fixed-length data.
--- VARCHAR stores variable-length data.
--- Example:
--- If department code is always 10 character then use CHAR(10)
---	If employee name length varies then use VARCHAR(50)

-- 5. Purpose of NOT NULL and UNIQUE
--- NOT NULL ensures a column cannot store NULL values.
--- UNIQUE ensures all values in that column are different and no duplicate values.
   
-- ============================== PART B =================================

create database company_db;

show databases;

use company_db;

create table employees (
emp_id int primary key,
emp_name varchar(50) not null,
email varchar(100) unique, 
department char(10),
salary int, 
joining_date char(10),
created_at datetime);

insert into employees values
(1, "MEGHANA",'meghanabu01@gmail.com','HR', 55000, '2023-06-15','2023-06-15 09:30:00'),
(2, "Meera nair",'meera01@gmail.com','IT', 42000, '2022-11-05','2023-011-05 09:00:00'),
(3, "Sneha",'sneha789@gmail.com','Finance', 30000, '2023-08-23','2023-08-23 06:15:00'),
(4, "Arjun",'arjun@gmail.com','HR', 35000, '2022-07-12','2022-07-12 07:45:00'),
(5, "Kalyan",'kalyan123@gmail.com','Finance', 40000, '2025-09-16','2025-09-16 10:20:00');

select * from employees;

describe employees;

drop table employees;

drop database company_db;
