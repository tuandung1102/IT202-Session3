
CREATE TABLE Subject (
    subject_id INT PRIMARY KEY,
    subject_name NVARCHAR(100) NOT NULL,
    credit INT CHECK (credit > 0)
);

INSERT INTO Subject (subject_id, subject_name, credit)
VALUES
(1, N'Cơ sở dữ liệu', 3),
(2, N'Lập trình Java', 4),
(3, N'Mạng máy tính', 3),
(4, N'Hệ điều hành', 4);

UPDATE Subject
SET credit = 4
WHERE subject_id = 1;

UPDATE Subject
SET subject_name = N'Lập trình Java nâng cao'
WHERE subject_id = 2;

SELECT * FROM Subject
WHERE credit >= 4;
