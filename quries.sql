-- 1. View all students
SELECT * FROM students;

-- 2. View all marks
SELECT * FROM marks;

-- 3. Total number of students
SELECT COUNT(*) AS total_students FROM students;

-- 4. Average marks per subject
SELECT subject, AVG(marks) AS average_marks FROM marks GROUP BY subject;

-- 5. Top scorer in each subject
SELECT subject, student_id, MAX(marks) AS top_score
FROM marks
GROUP BY subject;

-- 6. Marks of each student with their name
SELECT s.name, m.subject, m.marks
FROM students s
JOIN marks m ON s.student_id = m.student_id;

-- 7. Students scoring above 80 marks
SELECT s.name, m.subject, m.marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
WHERE m.marks > 80;
