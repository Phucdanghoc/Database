use quanlibanhang;
alter table chitietdathang
alter column soluong set default 1;
-- cau 2 -- 
alter table dondathang
add check (ngaygiaohang <= ngaydathang and ngaychuyenhang <= ngaydathang);
-- cau 3 -- 
alter table nhanvien
add check (year(ngaysinh) >= 18 and year(ngaysinh) < 60)