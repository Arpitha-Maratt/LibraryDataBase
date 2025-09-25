CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    grade TEXT
);

INSERT INTO Students (student_id, name, age, grade) VALUES
(1, 'Arpitha', 20, 'A'),
(2, 'Rahul', 22, 'B'),
(3, 'Priya', 21, 'A'),
(4, 'Kiran', 23, 'C'),
(5, 'Anita', 20, 'B');

-- to extract data 

-- simple select

SELECT * FROM Students;

-- using where
SELECT name, age FROM Students
WHERE grade = 'A';

-- uding order by
SELECT * FROM Students
ORDER BY age DESC;

-- using limit
SELECT * FROM Students
ORDER BY age ASC
LIMIT 3;
