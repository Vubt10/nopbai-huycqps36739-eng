use QLDA;

select * from NHANVIEN;
select NGSINH, DCHI from NHANVIEN
	where HONV = N'Đinh' and TENLOT = N'Bá' and TENNV = N'Tiên';
--select CONCAT(HONV,' ',TENLOT,' ',TENNV) as Ten from NHANVIEN
	--where HONV like N'N%' ;
--select CONCAT(HONV,' ',TENLOT,' ',TENNV) as Ten from NHANVIEN
  -- where DCHI like N'%HCM%' ;
--select * from NHANVIEN where LUONG > 25000 and PHG = 4 or (PHG = 5 and LUONG > 30000)
--select * from NHANVIEN where LUONG > 30000;
--select * from NHANVIEN where PHG = 4;
