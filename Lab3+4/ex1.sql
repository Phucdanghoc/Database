use qlnv;

create table Phong(
   maphong char(3),
   tenphong varchar(40),
   diachi varchar(50),
   tel char(10),
   primary key(maphong)
);

create table dmnn(
   mann char(2),
   tennn varchar(20),
   primary key(mann)
);

create table nhanvien(
   manv char(5),
   hoten varchar(40),
   gioitinh varchar(5),
   ngaysinh datetime,
   luong integer,
   maphong char(3),
   sdt char(10),
   ngaybc datetime,
   primary key(manv)
);

create table tdnn(
   manv char(5),
   mann char(2),
   tdo char(1),
   primary key(mann,manv)
);


insert into   Phong(maphong,tenphong,diachi,tel)
values ('HCA',N'Hành chính tổ hợp','123, Láng Hạ, Đống Đa, Hà Nội','048585793'),
('KDA',N'Kinh doanh','123, Láng Hạ, Đống Đa, Hà Nội','048574943'),
('KTA',N'Kĩ thuật','123, Láng Hạ, Đống Đa, Hà Nội','049480485'),
('QTA',N'Quản trị','123, Láng Hạ, Đống Đa, Hà Nội','048508585');

insert into  dmnn(mann,tennn)
values ('01',N'Anh'),
('02',N'Nga'),
('03',N'Pháp'),
('04',N'Nhật'),
('05',N'TrungQuốc'),
('06',N'Hàn Quốc');



insert into   nhanvien(manv,hoten,gioitinh,ngaysinh,luong,maphong,sdt,ngaybc)
values  ('HC001','Nguyễn Thị Hà' ,N'Nữ' ,'1950-8-27' ,2500000 ,'HCA',null, '1975-2-8'),
('HC002' ,N'Trần Văn Nam ','Nam', '1975-6-12' ,3000000,'HCA', null,'1997-6-8'),
('HC003' ,N'Nguyễn Thanh Huyền ','Nữ', '1978-7-3' ,1500000,'HCA', null,'1999-9-24'),
('KD001' ,N'Lê Tuyết Anh ',N'Nữ' ,'1977-2-3',2500000,'KDA' ,null,'2001-10-2'),
('KD002' ,N'Nguyễn Anh Tú',' Nam' ,'1942-7-4' ,2600000,'KDA', null,'1999-9-24'),
('KD003' ,N'Phạm An Thái',' Nam', '1977-5-9', 1600000 ,'KDA' ,null,'1999-9-24'),
('KD004' ,N'Lê Văn Hải',' Nam' ,'1976-1-2' ,2700000 ,'KDA' ,null,'1997-6-8'),
('KD005' ,N'Nguyễn Phương Minh',' Nam','1980-1-2', 2000000 ,'KDA',null ,'2001-10-2'),
('KT001' ,N'Trần Đình Khâm ','Nam' , '1981-12-2' ,2700000 ,'KTA' ,null,'2005-1-1'),
('KT002' ,N'Nguyễn Mạnh Hùng',' Nam' ,'1980-8-16' ,2300000 ,'KTA' ,null,'2005-1-1'),
('KT003' ,N'Phạm Thanh Sơn ','Nam', '1984-8-20 ',2000000 ,'KTA' ,null,'2005-1-1'),
('KT004',N'Vũ Thị Hoài',N'Nữ','1980-12-5','2500000','KTA',null,'2001-10-2'),
('KT005',N'Nguyễn Thu Lan',N'Nữ','1977-10-5','3000000','KTA',null,'2001-10-2'),
('KT006',N'Trần Hoài Nam','Nam','1978-7-2','2800000','KTA',null,'1997-6-8'),
('KT007',N'Hoàng Nam Sơn','Nam','1940-12-3','3000000','KTA',null,'1965-7-2'),
('KT008',N'Lê Thu Trang',N'Nữ','1950-7-6','2500000','KTA',null,'1968-8-2'),
('KT009',N'Khúc Nam Hải','Nam','1980-7-22','2000000','KTA',null,'2005-1-1'),
('KT010',N'Phùng Trung Dũng','Nam','1978-8-28','2200000','KTA',null,'1999-9-24');



insert into tdnn(manv,mann,tdo) 
values ('HC001','01','A'),('KD004','05','A'),
('HC001','02','B'),('KD005','01','B'),
('HC002','01','C'),('KD005','02','D'),
('HC002','03','C'),('KD005','03','B'),
('HC003','01','D'),('KD005','04','B'),
('KD001','01','C'),('KT001','01','D'),
('KD001','02','B'),('KT001','04','E'),
('KD002','01','D'),('KT002','01','C'),
('KD002','02','A'),('KT002','02','B'),
('KD003','01','B'),('KT003','01','D'),
('KD003','02','C'),('KT003','03','C'),
('KD004','01','C'),('KT004','01','D'),
('KD004','04','A'),('KT005','01','C');

-- ex3 --
