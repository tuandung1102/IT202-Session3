
INSERT INTO Student (student_id, full_name, date_of_birth, email)
VALUES
(10, N'Nguyễn Văn Tổng Hợp', '2004-04-20', 'tonghop.nguyen@gmail.com');

INSERT INTO Enrollment (student_id, subject_id, enroll_date)
VALUES
(10, 1, '2025-02-01'),
(10, 2, '2025-02-01');

INSERT INTO Score (student_id, subject_id, mid_score, final_score)
VALUES
(10, 1, 7.0, 8.0),
(10, 2, 6.5, 7.5);

UPDATE Score
SET final_score = 8.5
WHERE student_id = 10 AND subject_id = 2;

DELETE FROM Enrollment
WHERE student_id = 10 AND subject_id = 2;

SELECT 
    s.student_id,
    s.full_name,
    sub.subject_name,
    sc.mid_score,
    sc.final_score
FROM Student s
JOIN Score sc ON s.student_id = sc.student_id
JOIN Subject sub ON sc.subject_id = sub.subject_id;
