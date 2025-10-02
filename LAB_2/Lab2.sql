--1
--declare @luonglonnhat int
--set @luonglonnhat = (select max(Luong) from NHANVIEN)
--select * from NHANVIEN
--where luong=@luonglonnhat

--2
--declare @luongtb float
--select @luongtb=avg(luong)
--from NHANVIEN,PHONGBAN
--where phg=MAPHG and TENPHG = N'Nghiên cứu'

--select honv,tenlot,tennv
--from NHANVIEN
--where LUONG>@luongtb

--3
--declare @giatri float
--set @giatri=30000
--select maphg,tenphg, count (manv) sonv,avg(luong) luongtb
--from NHANVIEN, PHONGBAN
--where PHG=MAPHG
--group by MAPHG,TENPHG
--having AVG(luong)>@giatri

--4
--select TENPHG N'Tên phòng', count(mada) N'Số đề án'
--from PHONGBAN, DEAN
--where MAPHG = PHONG
--group by TENPHG


--1
declare @phongso int
set @phongso=4
select * from NHANVIEN 
where PHG=@phongso

--2 
--declare @luong float
--set @luong=30000
--select * from NHANVIEN
--where LUONG>@luong

--3
declare @luong float
set @luong=25000
select * from NHANVIEN
where LUONG>@luong and PHG = 4

--4
declare @dchi NVARCHAR(50)
set @dchi= 'tp hcm'
select HONV+' '+TENLOT+' '+TENNV 'họ và tên'
FROM NHANVIEN
WHERE DCHI LIKE N'%'+@dchi+'%'

 --5
 declare @honv NVARCHAR(50)
set @honv= 'n'
select HONV+' '+TENLOT+' '+TENNV 'họ và tên'
FROM NHANVIEN
WHERE HONV LIKE @honv+'%'


 --6
 declare @hoten NVARCHAR(50)
set @hoten= N'Đinh Bá Tiến'
select HONV+' '+TENLOT+' '+TENNV 'họ và tên'
FROM NHANVIEN
WHERE HONV+' '+TENLOT+' '+TENNV =@hoten

--7
declare @thoigian int
set @thoigian=50
select d.MADA, TENDEAN, sum(thoigian)
from DEAN d, PHANCONG p
where d.MADA=p.MADA
group by d.MADA, TENDEAN
having sum(thoigian)>@thoigian

--8
declare @tennv nvarchar(15)
set @tennv = N'Vinh'

select MANV,TENNV,TRGPHG


where tennv=N'Vinh'
 

 




