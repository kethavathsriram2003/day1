CREATE TABLE student(
name VARCHAR(10),
age INT DEFAULT 18,
dateofbirth DATE,
id VARCHAR(10)
);


INSERT INTO student (name, age, dateofbirth, id)
VALUES
('Ravi', 20, '02-jan-2003', 'S101'),
('Raju', 23, '03-feb-2004', 'S102'),
('Varama', 25, '21-dec-2006', 'S103'),
('Sriram', 21, '23-mar-2006', 'S104'),
('Anita', 18, '20-feb-2001', 'S105'),
('Kiran', 19, NULL, 'S106');



UPDATE student
SET name = 'Kiran Kumar'
WHERE name = 'Sriram';


DELETE FROM student
WHERE id = 'S102';


SELECT * FROM student;
