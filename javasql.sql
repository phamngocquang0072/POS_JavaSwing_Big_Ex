-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2022 lúc 12:04 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `javasql`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idhoadon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idsanpham` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `thanhtien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idhoadon`, `idsanpham`, `soluong`, `dongia`, `thanhtien`) VALUES
('HD1', 'SP17', 1, 851600, 75001600),
('HD1', 'SP4', 1, 39890000, 75001600),
('HD1', 'SP24', 1, 1790000, 75001600),
('HD1', 'SP23', 1, 5880000, 75001600),
('HD1', 'SP7', 1, 26590000, 75001600),
('HD2', 'SP21', 1, 14590000, 158977750),
('HD2', 'SP5', 1, 25990000, 158977750),
('HD2', 'SP25', 7, 5989000, 158977750),
('HD2', 'SP27', 1, 44890000, 158977750),
('HD2', 'SP18', 2, 19976000, 158977750),
('HD99', 'SP13', 1, 9490000, 9490000),
('HD13', 'SP19', 1, 13676000, 13676000),
('ccphat', 'SP16', 1, 4090000, 29996000),
('ccphat', 'SP20', 1, 25906000, 29996000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `idphieunhap` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idsanpham` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(10) UNSIGNED NOT NULL,
  `dongia` double UNSIGNED NOT NULL,
  `thanhtien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`idphieunhap`, `idsanpham`, `soluong`, `dongia`, `thanhtien`) VALUES
('HD3', 'SP18', 1, 19976000, 449215000),
('HD3', 'SP22', 1, 4489000, 449215000),
('HD3', 'SP9', 25, 16990000, 449215000),
('PN2', 'SP11', 12, 25990000, 2770055000),
('PN2', 'SP14', 13, 62499000, 2770055000),
('PN2', 'SP26', 19, 41890000, 2770055000),
('PN2', 'SP3', 19, 41890000, 2770055000),
('PN2', 'SP22', 12, 4489000, 2770055000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idhoadon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idnhanvien` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idkhachhang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idkhuyenmai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaylap` date NOT NULL,
  `tongtien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`idhoadon`, `idnhanvien`, `idkhachhang`, `idkhuyenmai`, `ngaylap`, `tongtien`) VALUES
('ccphat', 'NV1', 'KH1', 'KM1', '2022-05-04', 29996000),
('HD1', 'NV3', 'KH10', 'KM2', '2021-05-17', 75001600),
('HD13', 'NV1', 'KH1', 'KM1', '2021-12-31', 13676000),
('HD2', 'NV4', 'KH2', 'KM2', '2021-05-17', 158977750),
('HD99', 'NV1', 'KH11', 'KM1', '2021-12-29', 9490000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `idkhachhang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhachhang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`idkhachhang`, `tenkhachhang`, `diachi`, `sdt`, `gmail`) VALUES
('KH1', 'Tăng Trình Quang', 'TP HCM', '0123654951', 'trinhquang01@gmail.com'),
('KH10', 'Trần Đức Nguyên', 'Long An', '0841692241', 'nguyendhnam6@gmail.com'),
('KH11', 'Lê Thúc Quang', 'Quảng Ngãi', '0841692325', 'quangminhon@gmail.com'),
('KH12', 'Ngô Trường Khải', 'Quảng Nam', '095589751', 'khaigymer@gmail.com'),
('KH2', 'Trần Đại Phát', 'Bến Tre', '0456321789', 'daiphat@gmail.com'),
('KH3', 'Đỗ Huy Thông', 'Bến Tre', '0456327771', 'huit2k1@gmail.com'),
('KH4', 'Phạm Tất Thành', 'Bến Tre', '0456222171', 'bichengbt@gmail.com'),
('KH5', 'Hàng Hữu Lợi', 'Bạc Liêu', '0497589664', 'loibede@gmail.com'),
('KH6', 'Trần Đình Lâm', 'Đắk Lắk', '0498589967', 'lamcoghe@gmail.com'),
('KH7', 'Nguyễn Giáp Tài', 'Kon Tum', '0498111167', 'nguyen.Gtai@gmail.com'),
('KH8', 'Nguyễn Đức Vinh', 'Đồng Nai', '0498222267', 'vinhvape@gmail.com'),
('KH9', 'Ngô Công Lâm', 'Bình Thuận', '0841002267', 'lamngaongoe@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `idkhuyenmai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhuyenmai` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dieukienkhuyenmai` float NOT NULL,
  `phantramkhuyenmai` float NOT NULL,
  `ngaybatdau` date DEFAULT NULL,
  `ngayketthuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`idkhuyenmai`, `tenkhuyenmai`, `dieukienkhuyenmai`, `phantramkhuyenmai`, `ngaybatdau`, `ngayketthuc`) VALUES
('KM1', 'Không khuyến mãi', 0, 0, '2021-04-30', '2022-04-30'),
('KM2', 'Khuyến mãi thường niên', 5, 5, '2021-04-30', '2022-04-30'),
('KM3', 'Khuyến mãi ', 5, 3, '2021-04-30', '2022-04-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `idloaisanpham` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenloaisanpham` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`idloaisanpham`, `tenloaisanpham`, `mota`) VALUES
('ANDROID', 'Máy sử dụng Hệ điều hành android', 'Android là một hệ điều hành dựa trên nền tảng Linux được thiết kế dành cho các thiết bị di động có màn hình cảm ứng như điện thoại ...'),
('IOS', 'Máy sử dụng hệ điều hành IOS', 'iOS là hệ điều hành trên các thiết bị di động của Apple. Đây là hệ điều hành chạy trên các sản phẩm iPhone...'),
('TABLET', 'Máy tính bảng', 'Máy tính bảng, là một thiết bị di động, thông thường có hệ điều hành di động và mạch xử lý, màn hình cảm ứng ...');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `idnhacungcap` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tennhacungcap` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`idnhacungcap`, `tennhacungcap`, `diachi`, `sdt`, `gmail`) VALUES
('NCC1', 'Cty TNC Store', 'TP Hà Nội', '0123456789', 'tncstore@gmail.com'),
('NCC2', 'Cty GearVN', 'TP HCM', '0120728815', 'gearvn@gmail.com'),
('NCC3', 'Cty Phong Vũ', 'TP HCM', '0703192738', 'phongvu@gmail.com'),
('NCC4', 'Cty Phúc Anh Smart World', 'TP Hà Nội', '0501239237', 'phucanhsw@gmail.com'),
('NCC5', 'Cty An Phát PC', 'TP Hà Nội', '0901888869', 'anphatpro@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `idnhanvien` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tennhanvien` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`idnhanvien`, `tennhanvien`, `ngaysinh`, `diachi`, `sdt`, `gmail`) VALUES
('NV1', 'Phạm Ngọc Quang', '2001-04-05', 'Đà Nẵng', '0145647854', 'quang02@gmail.com'),
('NV2', 'Bùi Phước Hải', '2001-06-15', 'Kiên Giang', '0981578293', 'hai12211@gmail.com'),
('NV3', 'Trương Hồng Phát', '2001-08-13', 'TP HCM', '0805126735', 'phatng@gmail.com'),
('NV4', 'Phạm Duy Linh', '2001-08-15', 'Đắk Lắk', '0975128835', 'linhxike@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `idquyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenquyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `chitietquyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`idquyen`, `tenquyen`, `chitietquyen`) VALUES
('admin', 'Admin', 'qlBanHang qlNhapHang qlSanPham qlLoaiSanPham qlHoaDon qlKhuyenMai qlNhanVien qlKhachHang qlPhieuNhap qlNCC qlTaiKhoan qlQuyen'),
('user', 'Nhân viên Bán hàng', 'qlBanHang xemSanPham xemLoaiSanPham xemHoaDon xemNhanVien xemKhachHang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `idphieunhap` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idnhacungcap` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idnhanvien` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaynhap` date NOT NULL,
  `tongtien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`idphieunhap`, `idnhacungcap`, `idnhanvien`, `ngaynhap`, `tongtien`) VALUES
('PN1', 'NCC3', 'NV2', '2021-05-17', 449215000),
('PN2', 'NCC2', 'NV3', '2021-05-17', 2770055000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idloaisanpham` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tensanpham` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `dongia` double NOT NULL,
  `soluong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `mota` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `idloaisanpham`, `tensanpham`, `dongia`, `soluong`, `mota`, `anh`) VALUES
('SP1', 'Apple', 'iPhone 11 64GB', 16999000, 20, 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', 'sp1-iphone.jpg'),
('SP10', 'Xiaomi', 'Xiaomi 11T 5G 128GB', 10590000, 19, 'Xiaomi 11T đầy nổi bật với thiết kế vô cùng trẻ trung, màn hình AMOLED, bộ 3 camera sắc nét và viên pin lớn đây sẽ là mẫu smartphone của Xiaomi thỏa mãn mọi nhu cầu giải trí, làm việc và là niềm đam mê sáng tạo của bạn. ', 'sp2-Xiaomi.png'),
('SP11', 'Samsung', 'Samsung Galaxy Z Fold3 5G 256GB', 4199000, 43, 'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.', 'sp3-samsung.png'),
('SP12', 'Samsung', 'Samsung Galaxy A32', 6190000, 21, 'Samsung Galaxy A32 4G là chiếc điện thoại thuộc phân khúc tầm trung nhưng sở hữu nhiều ưu điểm vượt trội về màn hình lớn sắc nét, bộ bốn camera 64 MP cùng vi xử lý hiệu năng cao và được bán ra với mức giá vô cùng tốt.', 'sp4-samsung.jpg'),
('SP13', 'Oppo', 'OPPO Reno6 Z 5G', 9490000, 16, 'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm\" mà bạn không thể bỏ qua.', 'sp5-oppo.jpg'),
('SP14', 'Vivo', 'Vivo V23e', 8499000, 36, 'Vivo V23e - sản phẩm tầm trung được đầu tư lớn về khả năng selfie cùng ngoại hình mỏng nhẹ, bên cạnh thiết kế vuông vức theo xu hướng hiện tại thì V23e còn có hiệu năng tốt và một viên pin có khả năng sạc cực nhanh.', 'sp6-vivo.jpg'),
('SP15', 'Apple', 'iPhone 13 Pro Max 256GB', 36999000, 9, 'iPhone 13 Pro Max 256GB - siêu phẩm mang trên mình bộ vi xử lý Apple A15 Bionic hàng đầu, màn hình Super Retina XDR 120 Hz, cụm camera khẩu độ f/1.5 cực lớn, tất cả sẽ mang lại cho bạn những trải nghiệm tuyệt vời chưa từng có.', 'sp8-iphone.jpg'),
('SP16', 'Realme', 'Realme C21Y 4GB', 4090000, 59, 'Realme C21Y chiếc điện thoại với thiết kế đẹp mắt, tinh tế hướng đến đối tượng người dùng phổ thông đang tìm kiếm một sản phẩm với cấu hình tốt, đầy đủ tính năng hấp dẫn và đặc biệt là pin khủng cho một ngày làm việc sử dụng lâu dài. ', 'sp21-realme.jpg'),
('SP17', 'Apple', 'iPhone SE 128GB ', 1399600, 17, 'iPhone SE 2020 khi được cho ra mắt đã làm thỏa mãn triệu tín đồ Táo khuyết. Máy sở hữu thiết kế siêu nhỏ gọn như iPhone 8, chip A13 Bionic cho hiệu năng khủng như iPhone 11, nhưng iPhone SE 2020 lại có một mức giá tốt đến bất ngờ.', 'sp9-iphone.jpg'),
('SP18', 'Samsung', 'Samsung Galaxy Z Flip3 5G 128GB', 24976000, 58, 'Trong sự kiện Galaxy Unpacked hồi 11/8, Samsung đã chính thức trình làng mẫu điện thoại màn hình gập thế hệ mới mang tên Galaxy Z Flip3 5G 128GB. Đây là một siêu phẩm với màn hình gập dạng vỏ sò cùng nhiều điểm cải tiến và thông số ấn tượng, sản phẩm chắc chắn sẽ thu hút được rất nhiều sự quan tâm của người dùng, đặc biệt là phái nữ.\r\n', 'sp10-samsung.jpg'),
('SP19', 'Samsung', 'Samsung Galaxy S20 FE', 13676000, 57, 'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', 'sp11-samsung.jpg'),
('SP2', 'Samsung', 'Samsung Galaxy Note 20', 15990000, 20, 'Tháng 8/2020, Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với vi xử lý Exynos 990 cao cấp của chính Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.', 'sp12-samsung.jpg'),
('SP20', 'Samsung', 'Samsung Galaxy A72', 25906000, 17, 'Sau sự thành công của Galaxy S21 series, Samsung tiếp tục tấn công phân khúc tầm trung với Galaxy A72 thuộc Galaxy A series, sở hữu nhiều màu sắc trẻ trung, hệ thống camera nhiều tính năng cũng như nâng cấp hiệu năng vô cùng lớn mang đến những trải nghiệm hoàn toàn mới.', 'sp13-samsung.jpg'),
('SP21', 'Samsung', 'Samsung Galaxy A52 256GB', 14590000, 19, 'Samsung cho ra mắt sản phẩm thuộc dòng Galaxy A mang tên Galaxy A52 (8GB/256GB). Sở hữu vi xử lý Snapdragon 720G mạnh mẽ bậc nhất, cụm 4 camera có độ phân giải lên đến 64 MP và một vẻ ngoài hiện đại, trẻ trung tràn đầy sức sống.', 'sp14-samsung.jpg'),
('SP22', 'Oppo', 'OPPO A95', 4489000, 30, 'Bên cạnh phiên bản 5G, OPPO còn bổ sung phiên bản OPPO A95 4G với giá thành phải chăng tập trung vào thiết kế năng động, sạc nhanh và hiệu năng đa nhiệm ấn tượng sẽ giúp cho cuộc sống của bạn thêm phần hấp dẫn, ngập tràn niềm vui.', 'sp15-oppo.jpg'),
('SP23', 'Oppo', 'OPPO A95', 6900000, 19, 'Bên cạnh phiên bản 5G, OPPO còn bổ sung phiên bản OPPO A95 4G với giá thành phải chăng tập trung vào thiết kế năng động, sạc nhanh và hiệu năng đa nhiệm ấn tượng sẽ giúp cho cuộc sống của bạn thêm phần hấp dẫn, ngập tràn niềm vui.', 'sp16-opp.jpg'),
('SP24', 'Oppo', 'OPPO Reno5 Marvel', 9200000, 19, 'OPPO cho ra mắt một phiên bản giới hạn mới OPPO Reno5 Marvel, về hiệu năng cấu hình bên trong máy hoàn toàn tương tự so với Reno5, nhưng về kiểu dáng bên ngoài máy có phần khác biệt với thiết kế tùy chỉnh với mặt lưng có logo Marvel, logo Avengers hoàn toàn mới lạ.', 'sp17-oppo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idnhanvien` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idquyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`taikhoan`, `matkhau`, `idnhanvien`, `idquyen`, `hinh`) VALUES
('admin', '1', 'NV1', 'admin', 'vi5.jpg'),
('asd', '1', 'NV1', 'admin', 'vi5.jpg'),
('cuong', '1', 'NV1', 'user', 'banner-dong-ho-nam.png'),
('hai', '1', 'NV1', 'admin', 'shiba_inu.jpg'),
('havicute', '1', 'NV3', 'user', 'vi1.jpg'),
('lam1', '1', 'NV1', 'admin', 'edchina.jpg'),
('quang1', '2', 'NV1', 'admin', 'vi5.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhoadon`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`idkhachhang`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`idkhuyenmai`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`idloaisanpham`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`idnhacungcap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`idnhanvien`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`idquyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`idphieunhap`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`),
  ADD KEY `LoaiSP` (`idloaisanpham`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`taikhoan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
