CREATE DATABASE QLSV;
USE QLSV;

CREATE TABLE SinhVien (
    ma_sv INT PRIMARY KEY,                 
    ho_ten VARCHAR(100) NOT NULL,           
    ngay_sinh DATE NOT NULL,               
    gioi_tinh CHAR(1) 
        CHECK (gioi_tinh IN ('M','F')),    
    email VARCHAR(100) UNIQUE               
);

CREATE TABLE MonHoc (
    ma_mh INT PRIMARY KEY,                
    ten_mh VARCHAR(100) NOT NULL,           
    credits INT NOT NULL                    
        CHECK (credits > 0),                
    so_tiet INT                            
);

CREATE TABLE DangKy (
    ma_sv INT,                            
    ma_mh INT,                             
    semester VARCHAR(10),                   
    ngay_dk DATE DEFAULT CURRENT_DATE,      
    PRIMARY KEY (ma_sv, ma_mh),            
    FOREIGN KEY (ma_sv) REFERENCES SinhVien(ma_sv),
    FOREIGN KEY (ma_mh) REFERENCES MonHoc(ma_mh)
);

ALTER TABLE SinhVien
ADD so_dien_thoai VARCHAR(15);

ALTER TABLE SinhVien
ADD CONSTRAINT uq_email UNIQUE (email);

ALTER TABLE DangKy
MODIFY semester VARCHAR(20);

ALTER TABLE MonHoc
ADD CONSTRAINT chk_credits CHECK (credits BETWEEN 1 AND 5);

