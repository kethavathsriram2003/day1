CREATE TABLE student2(
    name VARCHAR(10),
    age INT default 18,
    dateofbirth DATE,
    id VARCHAR(10),location varchar(20),departmentname varchar(20),gender varchar(10),collegecode  varchar(20));
INSERT INTO student2 (name, age, dateofbirth, id, location, departmentname, gender, collegecode)
VALUES
('Ravi', 20, '2005-03-15', 'S101', 'hyd', 'cse', 'male', 'C001'),
('RAJU', 23, '2001-07-20', 'S102', 'bengaluru', 'aiml', 'male', 'C002'),
('VARAMA', 25, '2003-11-02', 'S103', 'pune', 'cse', 'male', 'C003'),
('SRIRAM', 21, '1998-06-02', 'S104', 'hyd', 'csd', 'male', 'C004'),
('Anita', 22, '2002-09-10', 'S105', 'hyd', 'aiml', 'female', 'C005'),
('Kiran', 19, NULL, 'S106', 'delhi', 'cse', 'male', 'C006');








select * from student2;
select * from student2 where name='Ravi';
select * from student2 where age>20 and name like'SRIRAM'; 
SELECT * FROM student2 WHERE age > 20 OR dateofbirth > '2001-06-21'
ORDER BY age ASC;
select * from student2 where dateofbirth between '1998-06-2' and '2005-03-15';
select * from student2 where id='S101';
select * from student2 where name like 'S%';
select * from student2 where name='SRIRAM' AND  ID='S104' and age>20;
select * from student2 where location='hyd' order by age  ASC;  
select * from student2 where departmentname='cse' and gender='male' and age>19;


select * from student2;
select * from  student2 where location like'%h%'  order by age ASC limit 3;
