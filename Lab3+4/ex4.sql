use qlnv;

select * from qlnv.nhanvien 
where manv = 'KT001';

select * from qlnv.nhanvien
where gioitinh = "Nữ";

select * from qlnv.nhanvien
where hoten like  "Nguyên%";

select * from qlnv.nhanvien
where hoten like  "%Văn%" or "Văn%";

select *,year(now()) -  year(ngaysinh) as age from qlnv.nhanvien
where year(now()) -  year(ngaysinh) < 30;

select *,year(now()) -  year(ngaysinh) as age from qlnv.nhanvien
where  year(now()) -  year(ngaysinh) < 30 and  year(now()) -  year(ngaysinh) > 25;

select manv from tdnn where tdo = "C";

select * from nhanvien where year(ngaybc) > 2000;

select * from nhanvien where year(now()) - year(ngaybc)  > 10;

select * from nhanvien where (year(now()) - year(ngaysinh) >= 60 and gioitinh = "Nam") or (year(now()) - year(ngaysinh) >= 55 and gioitinh = "Nữ" );

select maphong,tenphong,tel from phong ;

select manv,hoten,ngaysinh,luong from nhanvien where luong > 2000000 and luong < 3000000;

select * from nhanvien where sdt is null;

select * from nhanvien where month(ngaysinh) = 3;

select * from nhanvien order by luong asc;

select avg(luong) as 'luongtb' from nhanvien where maphong='KDA';

select maphong,avg(luong) as 'luongtb' from nhanvien group by maphong;

select maphong,sum(luong) as 'tongluong' from nhanvien group by maphong;

select maphong,sum(luong) > 500000  as 'tongluong' from nhanvien  group by maphong;

select manv,hoten,nhanvien.maphong,phong.tenphong from nhanvien 
join phong on nhanvien.maphong = phong.maphong;

select * from nhanvien 
left join phong on nhanvien.maphong = phong.maphong;

select * from phong 
left join nhanvien on nhanvien.maphong = phong.maphong;




