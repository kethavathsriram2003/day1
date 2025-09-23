CREATE TABLE student1(
name VARCHAR(10),
age INT DEFAULT 18,
dateofbirth DATE,
id VARCHAR(10)
);


INSERT INTO student (name, age, dateofbirth, id)
VALUES
('Ravi', 20, '2005-03-15', 'S101'),
('Raju', 23, '2001-07-20', 'S102'),
('Varama', 25, '2003-11-02', 'S103'),
('Sriram', 21, '1998-06-02', 'S104'),
('Anita', 18, '2002-09-10', 'S105'),
('Kiran', 19, NULL, 'S106');



UPDATE student
SET name = 'Kiran Kumar'
WHERE name = 'Sriram';


DELETE FROM student
WHERE id = 'S102';


SELECT * FROM student;