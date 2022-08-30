create table QuanLiSv.Khoa(
	MaSo char(8) not null ,
    Ten char(20),
    NamThanhLap int,
    primary key(MaSo)
);

create table QuanLiSv.SinhVien(
	Tensv char(20) ,
    Masv char(20) not null,
    namsinh int,
    Makhoa char(8) not null,
    primary key(Masv),
    foreign key(Makhoa) references QuanLiSv.Khoa(MaSo)
);

create table QuanLiSv.Monhoc(
	Tenmh char(10) not null,
    Mamh char(7) not null,
    TinChi int not null,
    Makhoa char(8) not null, 
    primary key(Mamh),
    foreign key(Makhoa) references QuanLiSv.Khoa(MaSo)
);

create table QuanLiSv.Dieukien(
	Mamh char(7) not null,
    Mamh_Truoc char(7) not null,
    primary key(Mamh,Mamh_Truoc),
    foreign key(Mamh,Mamh_Truoc) references QuanLiSv.Monhoc(Mamh,Mamh)
);

create table QuanLiSv.HocPhan(
	Mahp char(8) not null, 
    Mamh char(8) not null,
    HocKy char(4) not null,
    Nam int not null,
    GiaoVien char(20) not null,
    primary key(Mahp),
    foreign key(Mamh) references quanlisv.Monhoc(Mamh)
);

create table QuanLiSv.KetQua(
	Masv char(20) not null,
    Mahp char(8) not null,
    Diem char(5) not null,
    primary key(Masv,Mahp),
    foreign key(Masv) references quanlisv.SinhVien(Masv),
    foreign key(Mahp) references quanlisv.HocPhan(Mahp)
);
    



    
    