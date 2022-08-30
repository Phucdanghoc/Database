use quanlisinhvien;

-- insert into sinhvien(hosv,tensv,masv,ngaysinh,phai,makhoa) values ('Tran Minh','Son','S001',5/1/1985,'Nam','CNTT');-- 
  -- f_key and table
-- alter table ketqua
-- drop constraint ketqua_ibfk_1,
-- drop constraint ketqua_ibfk_2;

-- drop table sinhvien;
-- drop table monhoc;


-- Create talbe 
-- create table monhoc(
-- 	tenmh char(10) not null,
--     mamh char(4) not null,
--     sotiet int not null,
--     primary key(mamh)
-- );
-- create table sinhvien(
-- 	masv char(20) not null,
--     hosv char(20) not null,
--     tensv char(10) not null,
--     ngaysinh date not null,
--     makhoa char(4) not null,
--     primary key(masv),
-- 	foreign key(makhoa) references khoa(makhoa)
-- );

-- INSERT INTO sinhvien(hosv,tensv,masv,ngaysinh,phai,makhoa)
-- VALUES('Tran Minh','Son','S001',5/1/1985,'Nam','CNTT'),
-- ('Nguyen Quoc','Bao','S002',6/15/1986,'Nam','CNTT'),
-- ('Phan Anh','Tung','S003',12/20/1983,'Nam','QTKD'),
-- ('Bui Thi Anh','Thu','S004',2/1/1985,'Nu','QTKD'),
-- ('Le Thi Lan','Anh','S005',7/3/1987,'Nu','DTVT'),
-- ('Nguyen Thi','Lam','S006',11/25/1984,'Nu','DTVT'),
-- ('Phan Thi','Ha','S007',7/3/1988,'Nu','CNTT'),
-- ('Tran The','Dung','S008',10/21/1985,'Nam','CNTT');

-- INSERT INTO monhoc(tenmh,mamh,sotiet)
-- VALUES('Anh Van','AV',45),
-- ('Co So Du Lieu','CSDL',45),
-- ('Ky Thuat Lap Trinh','KTLT',60),
-- ('Ke Toan Tai Chinh','KTTC',45),
-- ('Toan Cao Cap','TCC',60),
-- ('Tin Hoc Van Hoc','THVP',30),
-- ('Tri Tue Nhan Tao','TTNT',45);


-- insert into khoa(makhoa,tenkhoa)
-- values('AVAN','Khoa Anh Van'),
-- ('CNTT', 'Cong Nghe Thong Tin'),
-- ('DTVT','Dien Tu Vien Thong'),
-- ('QTKD','Quan Tri Kinh Doanh');

-- insert into ketqua(masv,mamh,lanthi,diem)
-- values('S001','CSDL',1,4),
-- ('S001','TCC',1,6),
-- ('S002','CSDL',1,3),
-- ('S002','CSDL',2,6),
-- ('S003','KTTC',1,5),
-- ('S004','AV',1,8),
-- ('S004','THVP',1,4),
-- ('S004','THVP',2,8),
-- ('S006','TCC',1,5),
-- ('S007','AV',1,2),
-- ('S007','AV',2,9),
-- ('S007','KTLT',1,6),
-- ('S008','AV',1,7)

update monhoc set sotiet = 30 where mamh = "TTNT";

delete from ketqua where  masv="S001";

insert into ketqua(masv,mamh,lanthi,diem) values('S001','CSDL',1,4);

update sinhvien set hosv =" Nguyen Van"  , phai = "nam" where masv = "S006";

update sinhvien set makhoa = "CNTT"  where masv = "S005"