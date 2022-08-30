use quanlithuctap;

create table sinhvien(
   masv varchar(255),
   tensv varchar(255),
   quequan VARCHAR(255) ,
   ngaysinh date,
   hocluc int,
   CHECK(hocluc >= 0 and hocluc <= 10),
   PRIMARY KEY(masv)
);

create TABLE detai(
   madt varchar(255),
   tendt VARCHAR(255),
   chunhiemdt VARCHAR(255),
   kinhphi int DEFAULT 0,
   CHECK(kinhphi < 100000000),
   PRIMARY KEY(madt)
);

create TABLE sinhvien_detai(
   masv varchar(255) ,
   madt varchar(255) ,
   noithuctap VARCHAR(255),
   quangduong INT,
   ketqua VARCHAR(255),
   CHECK(ketqua >= 0 and ketqua <= 10),
   PRIMARY KEY(masv,madt),
   FOREIGN KEY(masv) REFERENCES sinhvien(masv),
   FOREIGN KEY(madt) REFERENCES detai(madt)
);


-- ex1 


INSERT INTO sinhvien(masv,tensv,quequan,ngaysinh,hocluc) 
values('H11','Phuc','Ha Tinh','2003-7-28',7),
      ('H12','Dung','Daklak','2003-7-12',7),
      ('H13','Phong','Ha Noi','2003-5-9',9),
      ('H14','An','Nghe An','2003-11-23',7),
      ('H15','Duyen','Thanh Hoa','2003-11-24',9);

INSERT INTO detai(madt,tendt,chunhiemdt,kinhphi)
VALUES ('DT01','De Tai 1','Thay Hung',null),
      ('DT02','De Tai 2','Thay Hoang',null),
      ('DT03','De Tai 3','Co Thi',null),
      ('DT04','De Tai 4','Co Giang',null),
      ('DT05','De Tai 5','Thay Nam',null);

INSERT INTO sinhvien_detai(masv,madt,noithuctap,quangduong,ketqua) 
VALUES ('H11','DT01','Q1',4,7),
('H12','DT02','Q8',5,'9'),
('H13','DT03','Binh Thanh',13,8),
('H14','DT04','Tan Binh',20,7),
('H15','DT05','Q7',6,8)

