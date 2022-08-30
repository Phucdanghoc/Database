use quanlibanhang;

create table nhanvien(
	manhanvien char(10) not null,
    ho char not null,
    ten char not null,
    ngaysinh date not null,
    ngaylamviec date not null,
    diachi char(10) not null,
    dienthoai char(10) not null,
    luongcoban int not null,
    phucap int not null,
    primary key(manhanvien)
);

create table khachhang(
	makhachhang char(10) not null,
    tencongty char(10) not null,
    tengiaotdich char(10) not null,
    diachi char(10) not null,
    email char(10) not null,
    dienthoai char(10) not null,
    fax char(10) not null,
    primary key(makhachhang)
);

create table loaihang(
	maloaihang char(10) not null,
    tenloaihang char(10) not null,
    primary key (maloaihang)
);
 
create table nhacungcap(	
	macongty char(10) not null,
    tencongty char(10) not null,
    tengiaodich char(10) not null,
    diachi char(10) not null,
    dienthoai char(10) not null,
    fax char(10) not null,
    email char(10)  not null,
    primary key(macongty)
);


create table mathang(
	mahang char(10) not null,
    tenhang char(10) not null,
    macongty char(10) not null,
    maloaihang char(10) not null,
    soluong int not null,
    donvitinh char(10) not null,
    giahang char(10) not null,
    primary key(mahang),
    foreign key(macongty) references nhacungcap(macongty),
    foreign key(maloaihang) references loaihang(maloaihang)
);

create table chitietdathang(
	sohoadon int not null,
    mahang char(10) not null,
    giaban int not null,
    soluong int not null,
    mucgiaban int not null,
    foreign key(sohoadon) references dondathang(sohoadon),
    foreign key(mahang) references mathang(mahang)
);

-- create table dondathang(
-- 	sohoadon char(10) not null,
--     makhachhang char(10) not null,
--     manhanvien char(10) not null,
--     ngaydathang date not null,
--     ngaygiaohang date not null,
--     ngaychuyenhang date not null,
--     noigiaohang char(100) not null,
--     primary key(sohoadon),
--     foreign key(manhanvien) references nhanvien(manhanvien),
--     foreign key(makhachhang) references khachang(makhachhang)
-- );










    
    