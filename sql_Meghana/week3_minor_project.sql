CREATE DATABASE student_course_db;

USE student_course_db;

CREATE TABLE students(
 student_id INT PRIMARY KEY,
 full_name VARCHAR(50) NOT NULL, 
 email VARCHAR(100) UNIQUE NOT NULL,
 phone_number BIGINT UNIQUE,
 course_name VARCHAR(30),
 date_of_birth DATE,
 registration_date DATETIME
);

INSERT INTO students VALUES
(1,'Meghana','meghanabu01@gmail.com',7019702980,'Data Analytics','2004-06-05','2026-02-02 00:00:00'),
(2,'Madhura','madhurabu01@gmail.com',1234567890,'Python','2004-07-05','2025-03-02 00:00:00'),
(3,'Manju','manju@gmail.com',9876543210,'SQL','2004-08-05','2026-02-02 00:00:00'),
(4,'Manu','manu@gmail.com',8765432109,'Data Science','2004-09-05','2026-03-02 00:00:00'),
(5,'Balaji','balaji@gmail.com',7654321098,'Full Stack Development','2004-06-09','2025-02-03 00:00:00'),
(6,'Renuka','renuka@gmail.com',6543210987,'Java','2004-06-07','2024-09-02 00:00:00'),
(7,'Bhageeratha','bhageeratha@gmail.com',5432109876,'JavaScript','2004-07-05','2025-02-19 00:00:00'),
(8,'Pavan Kumar','pavankumar@gmail.com',4321098765,'PowerBI','2004-05-05','2022-02-02 00:00:00'),
(9,'Prajwal A','prajwal@gmail.com',3210987654,'Excel','2004-04-05','2025-06-12 00:00:00'),
(10,'Anu M K','anumk@gmail.com',2109876543,'Data Visualisation','2004-06-04','2026-01-23 00:00:00'),
(11,'Jyothi S','jyothi@gmail.com',1098765432,'Data Analytics','2004-06-03','2025-12-02 00:00:00'),
(12,'Nandini K V','nandini@gmail.com',6789054321,'Python','2004-03-05','2026-02-09 00:00:00'),
(13,'Virat Kohli','virat@gmail.com',5432167890,'Data Visualisation','2004-06-02','2026-02-02 00:00:00'),
(14,'Anuska Sharma','anuska@gmail.com',9988776655,'Java','2004-02-05','2020-02-22 00:00:00'),
(15,'Rakshit Shetty','rakshitshetty@gmail.com',5544332211,'Full Stack Development','2004-01-05','2026-02-02 00:00:00'),
(16,'Radhika Pandit','radhikapandit@gmail.com',789034567211,'Data Analytics','2004-06-01','2025-09-28 00:00:00'),
(17,'Sinchu M','sinchu@gmail.com',9078563412,'Python Full Stack','2004-03-15','2023-02-02 00:00:00'),
(18,'Ramya G','ramyag@gmail.com',4567890123,'Java Full Stack','2004-06-25','2022-12-02 00:00:00'),
(19,'Karthik Mahesh','karthik@gmail.com',8970563412,'Data Analytics','2004-06-27','2024-02-29 00:00:00'),
(20,'Sangeeta Sringeeri','sangeeta@gmail.com',9807653412,'Data Analytics','2004-09-17','2025-05-05 00:00:00');

select * from students;

-- extra for my practice

select student_id ,full_name, course_name from students;

select student_id,full_name from students
where course_name ='data analytics';

select count(student_id) from students;
