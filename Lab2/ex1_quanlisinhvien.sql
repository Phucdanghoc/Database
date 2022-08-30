use quanlisinhvien;

create table khoa(
	makhoa char(200) not null,
    tenkhoa char(200) not null,
    primary key(makhoa) 
);
create table monhoc(
	tenmh char(200) not null,
    mamh char(200) not null,
    sotiet int not null,
    primary key(mamh)
);
create table sinhvien(
	masv char(200) not null,
    hosv char(200) not null,
    tensv char(200) not null,
    ngaysinh datetime not null,
    phai char(200) not null,
    makhoa char(200) not null,
    primary key(masv),
	foreign key(makhoa) references khoa(makhoa)
);

create table ketqua(
	masv char(200) not null,
    mamh char(200) not null,
    lanthi int not null,
    diem int not null,
    primary key(lanthi,mamh,masv),
    foreign key(masv) references sinhvien(masv),
    foreign key(mamh) references monhoc(mamh)
);



