USE QLDA;
GO
-- cau 1.1
SELECT 
    N.TENNV,
    CASE 
        WHEN N.LUONG < (
            SELECT AVG(NV.LUONG)
            FROM NHANVIEN NV
            WHERE NV.PHG = N.PHG
        ) THEN N'TangLuong'
        ELSE N'KhongTangLuong'
    END AS TrangThai
FROM NHANVIEN N;
-- cau 1.2
SELECT 
    N.TENNV,
    CASE 
        WHEN N.LUONG < (
            SELECT AVG(NV.LUONG)
            FROM NHANVIEN NV
            WHERE NV.PHG = N.PHG
        ) THEN N'NhanVien'
        ELSE N'TruongPhong'
    END AS PhanLoai
FROM NHANVIEN N;
-- cau 1.3
SELECT 
    CASE 
        WHEN PHAI = N'Nam' THEN N'Mr ' + TENNV
        WHEN PHAI = N'Nữ' THEN N'Ms ' + TENNV
        ELSE N'Không xác định'
    END AS TenHienThi
FROM NHANVIEN;
-- cau 1.4
SELECT 
    TENNV,
    LUONG,
    CASE
        WHEN LUONG < 25000 THEN LUONG * 0.10
        WHEN LUONG BETWEEN 25000 AND 29999 THEN LUONG * 0.12
        WHEN LUONG BETWEEN 30000 AND 39999 THEN LUONG * 0.15
        WHEN LUONG BETWEEN 40000 AND 49999 THEN LUONG * 0.20
        ELSE LUONG * 0.25
    END AS Thue
FROM NHANVIEN;
-- cau 2.1
SELECT HONV, TENLOT, TENNV, MANV
FROM NHANVIEN
WHERE MANV % 2 = 0;
-- cau 2.2
SELECT HONV, TENLOT, TENNV, MANV
FROM NHANVIEN
WHERE MANV % 2 = 0 AND MANV <> 4;
-- cau 3.1
BEGIN TRY
    INSERT INTO PHONGBAN(MAPHG, TENPHG, TRPHG, NG_NHANCHUC)
    VALUES (10, N'Kế Toán', 1, GETDATE());
    PRINT N'Thêm dữ liệu thành công';
END TRY
BEGIN CATCH
    PRINT N'Thêm dữ liệu thất bại';
END CATCH;

--    Chèn sai kiểu dữ liệu cột MaPHG để nhận thông báo lỗi “Them dư lieu that bai” từ khối Catch
--    BEGIN TRY
--    INSERT INTO PHONGBAN(MAPHG, TENPHG, TRPHG, NG_NHANCHUC)
--    VALUES (N'ABC', N'Lỗi dữ liệu', 2, GETDATE());
--    PRINT N'Thêm dữ liệu thành công';
--END TRY
--BEGIN CATCH
--    PRINT N'Thêm dữ liệu thất bại';
--END CATCH;

-- 3.2
DECLARE @chia INT = 10, @mau INT = 0;

BEGIN TRY
    DECLARE @ketqua FLOAT;
    SET @ketqua = @chia / @mau;  -- lỗi chia cho 0
    PRINT @ketqua;
END TRY
BEGIN CATCH
    RAISERROR('Lỗi chia cho 0 - Không thể thực hiện phép chia', 16, 1);
END CATCH;















