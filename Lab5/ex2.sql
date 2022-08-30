
CREATE VIEW cau2_a AS SELECT *,year(now()) -  year(ngaysinh) as age from sinhvien 
where Year(now()) - YEAR(ngaysinh) < 20 and hocluc > 8.5;

select * from cau2_a;

CREATE VIEW cau2_b AS SELECT * from detai WHERE kinhphi > 1000000;

CREATE VIEW cau2_c AS 
SELECT tensv,sinhvien_detai.ketqua from sinhvien
left join  sinhvien_detai on sinhvien.masv = sinhvien_detai.masv 
where Year(now()) - YEAR(ngaysinh) < 20 and hocluc > 8 and sinhvien_detai.ketqua > 8;

create view cau2_d as 
select sinhvien.masv,detai.madt,sinhvien.tensv,sinhvien.quequan,detai.chunhiemdt from sinhvien_detai
join sinhvien on sinhvien_detai.masv = sinhvien.masv 
join detai on  sinhvien_detai.madt = detai.madt 
where sinhvien.quequan like 'TPHCM';
select * from cau2_d;

create view cau2_e as 
select * from sinhvien 
where  year(ngaysinh) < 1908 and quequan like 'Hai Phong';
select * from cau2_e;

create view cau2_f as 
select avg(hocluc) as tb,tensv from  sinhvien where quequan like 'Ha Noi';

create view cau2_g as 
select count(sinhvien.quequan) from sinhvien_detai
join sinhvien on sinhvien_detai.masv = sinhvien.masv 
where madt = 'DT05';
select * from cau2_g





