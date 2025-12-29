
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    full_name NVARCHAR(100) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);

INSERT INTO Student (student_id, full_name, date_of_birth, email)
VALUES
(1, N'Nguyễn Văn An', '2003-05-10', 'an.nguyen@gmail.com'),
(2, N'Trần Thị Bình', '2004-08-22', 'binh.tran@gmail.com'),
(3, N'Lê Hoàng Minh', '2003-12-01', 'minh.le@gmail.com'),
(5, N'Phạm Văn Sai', '2002-01-01', 'sai.pham@gmail.com');

UPDATE Student
SET email = 'minh.le_new@gmail.com'
WHERE student_id = 3;

UPDATE Student
SET date_of_birth = '2004-09-15'
WHERE student_id = 2;

DELETE FROM Student
WHERE student_id = 5;

