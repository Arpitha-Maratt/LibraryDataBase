-- Create a sample table
CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    Name TEXT,
    Age INTEGER,
    Email TEXT
);

-- 1. INSERT DATA (handling NULLs)
INSERT INTO Students (StudentID, Name, Age, Email)
VALUES (1, 'Arpitha', 21, 'arpitha@example.com');

INSERT INTO Students (StudentID, Name, Age, Email)
VALUES (2, 'Rahul', NULL, 'rahul@example.com');   -- Age is NULL

INSERT INTO Students (StudentID, Name, Age, Email)
VALUES (3, 'Sneha', 20, NULL);  -- Email is NULL

INSERT INTO Students (StudentID, Name, Age, Email)
VALUES (4, 'Kiran', 22, 'kiran@example.com');

-- 2. UPDATE DATA 
UPDATE Students
SET Age = 19
WHERE StudentID = 2;   -- Updating Rahul’s missing Age

UPDATE Students
SET Email = 'sneha@example.com'
WHERE StudentID = 3;   -- Adding Sneha’s missing Email

-- 3. DELETE DATA (removing wrong/duplicate record)
DELETE FROM Students
WHERE StudentID = 4;   -- Removing Kiran for demonstration
