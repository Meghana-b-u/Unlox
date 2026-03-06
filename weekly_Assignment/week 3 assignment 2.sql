-- ======================================================
-- Assignment 2: Stdent record management system
-- Student name: Meghana balappa uppar
-- ======================================================

-- ================== Part A : Theory ===================

-- 1. Difference between DATE nad DATETIME
--- DATE stores only the calender date in the format YYYY-MM-DD.
--- DATETIME stores both date and time in the format YYYY-MM-DD HHH:MM:SS.
--- DATE is useful for storing information like date of birth, 
--- while DATETIME is used when both date and exact time need to be recorded such asregistration time or login timestamp.

-- 2. Why email or phone number should be unique
--- Email and phone number usually identify a person uniquely.
--- By applying the unique constraint, the database prevents duplicate entries, ensuring that each student recod has distinct contact details.

-- 3. Can a table have multiple UNIQUE constraints?
--- Yes, a table can have multiple UNIQUE constraints.
--- For example, both email and phone number can be marked UNIQUE so that no two students share the same email or phone number.

-- 4. What happens if NULL is inserted into a not null column?
--- MYSQL will generate an error and the record will not be inserted.
--- becuase the not null constriant ensures that the column must always contain a values.

-- 5. Why proper data type selection is important.
--- Choosing the correct data type helps store data efficiently,
--- improves query performance, and prevents invalid data from being stored in the database.
--- For example ,Date should be used for dates instead of varchar.

-- =========================== Part B ==============================

create database student_db;

show databases;

use student_db;

create table students(
student_id int primary key,
full_name varchar(50) not null,
email varchar(100) UNIQUE,
phone_number BIGINT,
course varchar(30),
date_of_birth DATE,
registration_date DATETIME
);

insert into students values
(1, 'aisha khan','aishakhan@gmail.com', 8899001122,'data analytics','2003-04-15','2024-08-06 9:30:00'),
(2, 'rohan verma', 'rohanverma@gmail.com', 67584839201,'pytjon','2002-11-20','2025-04-03 8:15:00'),
(3,'priya ankit','priyaankit@gmail.com',9078563412,'sql','2004-02-05','2024-08-13 6:40:00'),
(4,'karthik mahesh','karthikmahesh@gmail.com',7654321890,'machine learning','2003-09-18','2025-03-14 8:45:00'),
(5,'sangeeta aramane','sangeeta098@gmail.com', 9078654321,'business analytics','2003-06-30','2024-05-09 5:50:00');

select * from students;

describe students;

drop database student_db;