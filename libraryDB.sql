
-- creating databse -- 
CREATE DATABASE LibraryDB;

-- use database --
USE LibraryDB;

-- creating table Members 
CREATE TABLE Members(
Member_ID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(100),
EMAIL VARCHAR(100),
Phone VARCHAR(15),
Address VARCHAR(255)
);

ALTER TABLE Members 
MODIFY EMAIL VARCHAR(100) UNIQUE NOT NULL;

-- inserting data to Members table
INSERT INTO Members (Name, Email, Phone, Address) 
VALUES ('Alice Johnson', 'alice@mail.com', '1234567890', 'NY, USA');



-- creating table books
CREATE TABLE Books(
Book_ID INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(150) NOT NULL,
Author VARCHAR(100),
Category VARCHAR(100),
ISBN VARCHAR(20) UNIQUE,
PublishedYear INT 
);

ALTER TABLE Books 
ADD CHECK (PublishedYear >= 1900 AND PublishedYear <= 2025);

-- inserting data to Books table
INSERT INTO Books (Title, Author, Category, ISBN, PublishedYear) 
VALUES ('Database Systems', 'Ramakrishnan', 'CS', '123-DB-2025', 2021);



-- creating table Borrow
CREATE TABLE Borrow (
    Borrow_ID INT AUTO_INCREMENT PRIMARY KEY,
    Member_ID INT,
    Book_ID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (Member_ID)
        REFERENCES Members (Member_ID),
    FOREIGN KEY (Book_ID)
        REFERENCES Books (Book_ID)
);

-- inserting data to Borrow table
INSERT INTO Borrow (Member_ID, Book_ID, BorrowDate, ReturnDate) 
VALUES (1, 1, '2025-09-20', '2025-09-30');



-- To run 
SELECT * FROM Borrow 
JOIN Members ON Borrow.Member_ID = Members.Member_ID
JOIN Books ON Borrow.Book_ID = Books.Book_ID;
