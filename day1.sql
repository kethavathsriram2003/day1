CREATE DATABASE library1;
USE library1;
CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);

INSERT INTO Authors VALUES
(1, 'J.K. Rowling', 'British'),
(2, 'George R.R. Martin', 'American'),
(3, 'Haruki Murakami', 'Japanese'),
(4, 'Agatha Christie', 'British');
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    genre VARCHAR(50),
    published_year INT
);

INSERT INTO Books VALUES
(1, 'Harry Potter and the Philosopher''s Stone', 'Fantasy', 1997),
(2, 'A Game of Thrones', 'Fantasy', 1996),
(3, 'Norwegian Wood', 'Fiction', 1987),
(4, 'Murder on the Orient Express', 'Mystery', 1934),
(5, 'Kafka on the Shore', 'Fiction', 2002);
CREATE TABLE BookAuthors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

INSERT INTO BookAuthors VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 3);
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    membership_date DATE
);

INSERT INTO Members VALUES
(1, 'Alice Johnson', 'alice@example.com', '9876543210', '2023-05-10'),
(2, 'Bob Smith', 'bob@example.com', '9123456780', '2023-06-15'),
(3, 'Charlie Brown', 'charlie@example.com', '9988776655', '2023-07-01');
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50)
);

INSERT INTO Staff VALUES
(1, 'Sophia Lee', 'Librarian'),
(2, 'Daniel Kim', 'Assistant'),
(3, 'Emma Davis', 'Manager');
CREATE TABLE Loans ( 
    loan_id INT PRIMARY KEY, 
    book_id INT, 
    member_id INT, 
    staff_id INT, 
    loan_date DATE, 
    return_date DATE, 
    FOREIGN KEY (book_id) REFERENCES Books(book_id), 
    FOREIGN KEY (member_id) REFERENCES Members(member_id), 
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);
INSERT INTO Loans VALUES
(1, 1, 1, 1, '2023-08-01', '2023-08-15'),
(2, 2, 2, 2, '2023-08-05', '2023-08-20'),
(3, 3, 3, 1, '2023-08-10', NULL), 
(4, 4, 1, 3, '2023-09-01', '2023-09-14'),
(5, 5, 2, 2, '2023-09-05', NULL);


