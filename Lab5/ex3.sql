use quanlithuctap;

select madt,count(masv) > 2 as soluong from sinhvien_detai
group by madt ;


create view top as  select max(hocluc) from sinhvien where quequan like 'TPHCM';

select * from sinhvien where hocluc > (select max(hocluc) from sinhvien where quequan like 'TPHCM');


update sinhvien_detai 
set  ketqua = case  
when ketqua > 8 then 10
when ketqua < 8 then ketqua + 2
                    end
where masv = (select masv from sinhvien where quequan like 'Lam Dong');

select * from sinhvien 
right join sinhvien_detai on sinhvien_detai.masv = sinhvien.masv 
where sinhvien_detai.noithuctap like sinhvien.quequan;

select tendt from detai 
where not exists (select madt from sinhvien_detai where detai.madt = sinhvien_detai.madt);

select detai.tendt from detai 
join sinhvien_detai on sinhvien_detai.madt = detai.madt
where sinhvien_detai.masv in (select masv from sinhvien where hocluc = (select max(hocluc) from sinhvien));


select distinct detai.tendt from detai 
join sinhvien_detai on sinhvien_detai.madt = detai.madt
where sinhvien_detai.masv not in (select masv from sinhvien where hocluc = (select min(hocluc) from sinhvien));

select masv from sinhvien_detai
join detai on sinhvien_detai.madt = detai.madt
where sinhvien_detai.madt in (select madt from detai where kinhphi > (select sum(kinhphi) / 5 from detai));

select * from sinhvien where hocluc > (select avg(ketqua) from sinhvien_detai where madt like 'DT01')