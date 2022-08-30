use qlnv;

insert into nhanvien(manv,hoten,gioitinh,ngaysinh,luong,maphong,sdt,ngaybc)
values ('QT001',N'Lê Hoàng Phúc','Nam','2003-7-28',150000,'QTA',null,null);
insert into tdnn(manv,mann,tdo)
values ('QT001','01','C'),('QT001','04','A');


select * from qlnv.nhanvien
where hoten = "Lê Hoàng Phúc";

select * from qlnv.tdnn 
where manv = "QT001"


