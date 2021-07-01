-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 01, 2021 lúc 06:36 PM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_quanlykho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatluong`
--

CREATE TABLE `chatluong` (
  `id` int(10) UNSIGNED NOT NULL,
  `cl_ma` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cl_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chatluong`
--

INSERT INTO `chatluong` (`id`, `cl_ma`, `cl_ten`, `created_at`, `updated_at`) VALUES
(2, '123', 'Tốt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '222', 'Trung bình', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '333', 'Kém', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietchuyenkho`
--

CREATE TABLE `chitietchuyenkho` (
  `id` int(10) UNSIGNED NOT NULL,
  `ctck_soluong` int(11) NOT NULL,
  `ctck_thanhtien` decimal(10,2) NOT NULL,
  `vt_id` int(10) UNSIGNED NOT NULL,
  `ck_id` int(10) UNSIGNED NOT NULL,
  `khocu_id` int(10) UNSIGNED NOT NULL,
  `khomoi_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietchuyenkho`
--

INSERT INTO `chitietchuyenkho` (`id`, `ctck_soluong`, `ctck_thanhtien`, `vt_id`, `ck_id`, `khocu_id`, `khomoi_id`, `created_at`, `updated_at`) VALUES
(1, 10, '180000.00', 2, 1, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 20, '200000.00', 1, 2, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, '18000.00', 2, 3, 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 10, '100000.00', 1, 4, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 10, '2000000.00', 4, 5, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietnhapkho`
--

CREATE TABLE `chitietnhapkho` (
  `id` int(10) UNSIGNED NOT NULL,
  `ctnk_soluong` int(11) NOT NULL,
  `ctnk_thanhtien` decimal(10,2) NOT NULL,
  `vt_id` int(10) UNSIGNED DEFAULT NULL,
  `nk_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietnhapkho`
--

INSERT INTO `chitietnhapkho` (`id`, `ctnk_soluong`, `ctnk_thanhtien`, `vt_id`, `nk_id`, `created_at`, `updated_at`) VALUES
(23, 100, '1800000.00', 2, 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 32, '6400000.00', 1, 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 23, '230000.00', 1, 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 100, '1000000.00', 1, 27, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 20, '360000.00', 2, 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 10, '100000.00', 1, 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 100, '1000000.00', 1, 29, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 20, '1000000.00', 5, 30, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietxuatkho`
--

CREATE TABLE `chitietxuatkho` (
  `id` int(10) UNSIGNED NOT NULL,
  `ctxk_soluong` int(11) NOT NULL,
  `ctxk_thanhtien` decimal(10,2) NOT NULL,
  `vt_id` int(10) UNSIGNED NOT NULL,
  `xk_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietxuatkho`
--

INSERT INTO `chitietxuatkho` (`id`, `ctxk_soluong`, `ctxk_thanhtien`, `vt_id`, `xk_id`, `created_at`, `updated_at`) VALUES
(13, 100, '1000000.00', 1, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 5, '50000.00', 1, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 11, '110000.00', 1, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 20, '4000000.00', 4, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 12, '120000.00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 21, '378000.00', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 12, '240000.00', 7, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 123, '12300000.00', 6, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenkho`
--

CREATE TABLE `chuyenkho` (
  `id` int(10) UNSIGNED NOT NULL,
  `ck_ma` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ck_ngay` date NOT NULL,
  `ck_lydo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nv_id` int(10) UNSIGNED NOT NULL,
  `ck_tongtien` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyenkho`
--

INSERT INTO `chuyenkho` (`id`, `ck_ma`, `ck_ngay`, `ck_lydo`, `nv_id`, `ck_tongtien`, `created_at`, `updated_at`) VALUES
(1, 'CK04072016110740', '2016-07-04', 'Chuyển vào kho Đức Minh', 4, '180000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'CK04072016120731', '2016-07-04', 'chuyển kho', 4, '200000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'CK04072016030700', '2016-07-04', 'abc', 4, '18000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'CK04072016030710', '2016-07-04', 'abc', 4, '100000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'CK05072016030742', '2016-07-05', 'Thiếu hàng', 4, '2000000.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congtrinh`
--

CREATE TABLE `congtrinh` (
  `id` int(10) UNSIGNED NOT NULL,
  `ct_ma` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ct_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `congtrinh`
--

INSERT INTO `congtrinh` (`id`, `ct_ma`, `ct_ten`, `created_at`, `updated_at`) VALUES
(1, 'CT01', 'Cung cấp cho nhà máy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'CT02', 'Nâng cấp thiết bị', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '004', 'Nâng cấp thiết bị', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donvitinh`
--

CREATE TABLE `donvitinh` (
  `id` int(10) UNSIGNED NOT NULL,
  `dvt_ma` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dvt_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donvitinh`
--

INSERT INTO `donvitinh` (`id`, `dvt_ma`, `dvt_ten`, `created_at`, `updated_at`) VALUES
(1, 'DVT01', 'Chiếc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'DVT02', 'Cái', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DVT03', 'Cái', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'DVT04', 'Cái', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `id` int(10) UNSIGNED NOT NULL,
  `kho_ma` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `kho_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kho_lienhe` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kho_diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `kho_sdt` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `kho_quanly` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kho_ghichu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`id`, `kho_ma`, `kho_ten`, `kho_lienhe`, `kho_diachi`, `kho_sdt`, `kho_quanly`, `kho_ghichu`, `created_at`, `updated_at`) VALUES
(1, 'K001', 'Kho Đức Minh', 'Nguyễn Văn A', 'TP Hải Dương', '0710386554', 'Trần Trần', 'Còn quản lý', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'K002', 'Kho Kinh Môn', 'Nguyễn Văn B', 'Hải Dương', '01665186186', 'Nguyễn Văn B', 'Tạm ngừng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'K003', 'Kho Nam Sách', 'Nguyễn Văn A', 'Hải Dương', '0946711770', 'Le Le', 'Còn Quản lý', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuvuc`
--

CREATE TABLE `khuvuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `kv_ma` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `kv_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuvuc`
--

INSERT INTO `khuvuc` (`id`, `created_at`, `updated_at`, `kv_ma`, `kv_ten`) VALUES
(4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'KV1', 'Khu vực 1'),
(5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'KV3', 'Khu vực 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_05_09_021146_create_khuvuc_table', 1),
('2016_05_17_122517_create_donvitinh_table', 2),
('2016_05_18_005923_create_chatluongs_table', 3),
('2016_05_18_020324_create_chatluong_table', 4),
('2016_05_18_020445_create_nhomvattu_table', 4),
('2016_05_18_021618_create_nhomvattu_table', 5),
('2016_05_18_023140_create_congtrinh_table', 6),
('2016_05_18_024401_create_nhasanxuat_table', 7),
('2016_05_18_041730_create_nhaphanphoi_table', 8),
('2016_05_18_065956_create_khuvucnhaphanphoi_table', 8),
('2016_05_18_071005_create_vattu_table', 9),
('2016_05_19_024011_create_kho_table', 10),
('2016_05_19_090753_create_phongban_table', 11),
('2016_05_20_032537_create_nhasanxuat_table', 12),
('2016_05_20_041401_create_nhaphanphoi_table', 13),
('2016_05_20_072311_create_nhanvien_table', 14),
('2016_05_23_035758_create_vattu_table', 15),
('2016_05_27_015553_create_vattu_table', 16),
('2016_05_27_072252_create_thongtincongty_table', 17),
('2016_05_27_072935_create_thongtincongties_table', 17),
('2016_05_27_085818_create_thongtincongty_table', 18),
('2016_05_27_090018_create_thongtincongty_table', 19),
('2016_05_27_090041_create_thongtincongties_table', 19),
('2016_05_27_090117_create_thongtincongty_table', 20),
('2016_05_30_023039_create_user_table', 21),
('2016_05_30_030642_create_user_table', 22),
('2016_05_30_031507_create_users_table', 23),
('2016_05_31_075701_create_nhanvien_table', 24),
('2016_05_31_080423_create_nhanvien_table', 25),
('2016_05_31_081038_create_nhanvien_table', 26),
('2016_05_31_081103_create_nhanviens_table', 26),
('2016_05_31_081308_create_users_table', 27),
('2016_05_31_082202_create_users_table', 28),
('2016_05_31_082731_create_users_table', 29),
('2016_05_31_083513_create_users_table', 30),
('2016_06_13_072141_create_nhapkho_table', 31),
('2016_06_13_073902_create_chitietnhapkho_table', 32),
('2016_06_13_074941_create_chitietnhapkho_table', 33),
('2016_06_13_075008_create_chitietnhapkhos_table', 33),
('2016_06_13_075120_create_chitietnhapkho_table', 34),
('2016_06_15_082752_create_xuatkho_table', 35),
('2016_06_15_083232_create_chitietxuatkho_table', 36),
('2008_12_31_170638_create_vattukho_table', 37),
('2016_06_22_122115_create_chuyenkho_table', 38),
('2016_06_22_125200_create_chitietchuyenkho_table', 39);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) UNSIGNED NOT NULL,
  `nd_ten` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `nd_ten`) VALUES
(1, 'Quản trị viên'),
(2, 'Thủ kho'),
(3, 'Nhân viên'),
(4, 'Ban lãnh đạo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nv_ma` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `nv_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nv_gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nv_ngaysinh` date NOT NULL,
  `nv_diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nv_cmnd` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `nv_sdt` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `nv_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nv_ngayvaolam` date NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `nv_ma`, `nv_ten`, `nv_gioitinh`, `nv_ngaysinh`, `nv_diachi`, `nv_cmnd`, `nv_sdt`, `nv_email`, `nv_ngayvaolam`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'NV002', 'Lê Hữu Nghĩa', 'Nam', '2016-07-03', 'TP Hải Dương', '24234234', '0946711770', 'nghiab1204035@gmail.com', '2016-07-14', 2, '2016-07-03 22:09:58', '2016-07-03 22:09:58'),
(5, '0011', 'Nguyễn Trọng Hiếu', 'Nam', '2016-07-07', 'TP Hải Dương', '24234234', '0946711770', 'han1221@gmail.com', '2016-07-20', 5, '2016-07-04 03:38:48', '2016-07-04 03:38:48'),
(6, '006', 'Nguyễn Văn A', 'Nam', '2016-07-22', 'TP Hải Dương', '24234234', '0946711770', 'abc@gmail.com', '2016-07-24', 6, '2016-07-04 05:19:17', '2016-07-04 05:19:17'),
(7, 'NV009', 'Nguyen Hoang Nam', 'Nam', '1990-06-05', 'TP Hải Dương', '301583024', '01293963362', 'nghia1204035@gmail.com', '2016-07-01', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaphanphoi`
--

CREATE TABLE `nhaphanphoi` (
  `id` int(10) UNSIGNED NOT NULL,
  `npp_ma` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `npp_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `npp_diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `npp_sdt` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `npp_fax` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `npp_taikhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `npp_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `npp_nhanviendaidien` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `kv_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaphanphoi`
--

INSERT INTO `nhaphanphoi` (`id`, `npp_ma`, `npp_ten`, `npp_diachi`, `npp_sdt`, `npp_fax`, `npp_taikhoan`, `npp_email`, `npp_nhanviendaidien`, `kv_id`, `created_at`, `updated_at`) VALUES
(3, 'abc', 'Công ty vật liệu Phú Cường', 'sda', '45645646', '5555555555', '456456465', '', 'Trần Trùi Trụi', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'KV2', 'Cửa hàng Ngọc Thuận', 'CM', 'ádas', 'ádasd', 'sdasd', 'sdasd@gmail.com', 'ádasds', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '003', 'Công ty TNHH ABC', 'Ninh Kiều - Cần Thơ', '0946711770', '0967117700', '123156498849', 'nghiab1204035@gmail.com', 'Nguyễn Văn A', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhapkho`
--

CREATE TABLE `nhapkho` (
  `id` int(10) UNSIGNED NOT NULL,
  `nk_ma` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nk_ngaylap` date NOT NULL,
  `nk_lydo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `nk_tongtien` decimal(10,2) NOT NULL,
  `npp_id` int(10) UNSIGNED NOT NULL,
  `nv_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhapkho`
--

INSERT INTO `nhapkho` (`id`, `nk_ma`, `nk_ngaylap`, `nk_lydo`, `nk_tongtien`, `npp_id`, `nv_id`, `created_at`, `updated_at`) VALUES
(26, 'PNK04072016080716', '2016-07-04', 'Nhap kho dinh ky', '8430000.00', 3, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'PNK04072016090707', '2016-07-04', 'abc', '1000000.00', 3, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'PNK04072016120735', '2016-07-04', 'Nhập kho vật tư', '460000.00', 4, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'PNK04072016030718', '2016-07-04', 'abc', '1000000.00', 3, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'PNK05072016030746', '2016-07-05', 'Nhập kho', '1000000.00', 4, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `id` int(10) UNSIGNED NOT NULL,
  `nsx_ma` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `nsx_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kv_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`id`, `nsx_ma`, `nsx_ten`, `kv_id`, `created_at`, `updated_at`) VALUES
(1, '001', 'Trung Quốc', 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '002', 'Nhật Bản', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '003', 'Mỹ', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomvattu`
--

CREATE TABLE `nhomvattu` (
  `id` int(10) UNSIGNED NOT NULL,
  `nvt_ma` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nvt_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomvattu`
--

INSERT INTO `nhomvattu` (`id`, `nvt_ma`, `nvt_ten`, `created_at`, `updated_at`) VALUES
(2, 'NVT01', 'Linh kiện điện tử', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'NVT02', 'Linh kiện cơ khí', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

CREATE TABLE `phongban` (
  `id` int(10) UNSIGNED NOT NULL,
  `pb_ma` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pb_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ten_anh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `ten_anh`, `noi_dung`) VALUES
(1, 'sl-2.png', 'Số 168 - Phố Đức Minh- Phường Thanh Bình - TP Hải Dương - Tỉnh Hải Dương'),
(2, 'sl-1.jpg', 'Điện thoại:0868xxxxx - Fax: 0868896944;  Email: mrhieuvip1997@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtincongty`
--

CREATE TABLE `thongtincongty` (
  `id` int(10) UNSIGNED NOT NULL,
  `cty_ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cty_diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cty_sdt` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `cty_fax` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `cty_web` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cty_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtincongty`
--

INSERT INTO `thongtincongty` (`id`, `cty_ten`, `cty_diachi`, `cty_sdt`, `cty_fax`, `cty_web`, `cty_email`, `created_at`, `updated_at`) VALUES
(1, 'Công ty linh kiện TM', 'TP Hải DƯơng', '07102221000', '07102221039', 'tml.com', 'tienmanh@gmail.com.vn', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguoidung_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `nguoidung_id`, `created_at`, `updated_at`) VALUES
(3, 'Trung Hiếu - Thủ kho', 'admin@gmail.com', '$2y$10$AeT6QeI22Ty0Oakq0s0pFOG1c5RR.YEqB65McFCqn2uYCq5QXVeny', 'LQguiPQAXQO8Ji8zn8BHvVqW1lmx6gZjYJam306BPJ5gsOV2kc9d8Cf6dyLp', 1, '2016-07-03 22:14:22', '2021-05-20 12:19:34'),
(5, 'Trọng Hiếu - Nhân viên', 'han1221@gmail.com', '$2y$10$hRKaeh2Z9fEUnCnrqTWcWOJBHZRtNUQ5rtx3y4I15Ksu5nvj0dg.K', 'EWjpUM02IAb9byjdZ9ju31IiC6ziG1EIz9eQWA1XS8W8jUY9kCuqdvJRq3nu', 1, '2016-07-04 03:38:48', '2016-07-04 19:46:18'),
(6, 'Minh Trung - GĐ', 'abc@gmail.com', '$2y$12$2GWxpDv54l9rI/aM3TJo2u7YQvaNe/huNO6KFPWV69unZgshQIhUW', '373I37Um2T0dhNGwPKhak7OZb6ibDTME5VL5fMzABTgrursAunHxwFEQDloX', 1, '2016-07-04 05:19:17', '2016-07-26 08:01:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vattu`
--

CREATE TABLE `vattu` (
  `id` int(10) UNSIGNED NOT NULL,
  `vt_ma` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `vt_ten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vt_gia` decimal(10,0) NOT NULL,
  `mo_ta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dvt_id` int(10) UNSIGNED NOT NULL,
  `nvt_id` int(10) UNSIGNED NOT NULL,
  `cl_id` int(10) UNSIGNED NOT NULL,
  `npp_id` int(10) UNSIGNED NOT NULL,
  `nsx_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vattu`
--

INSERT INTO `vattu` (`id`, `vt_ma`, `vt_ten`, `vt_gia`, `mo_ta`, `dvt_id`, `nvt_id`, `cl_id`, `npp_id`, `nsx_id`, `image`, `created_at`, `updated_at`) VALUES
(1, '001', 'Ốc', '10000', 'Ốc chính hãng', 3, 2, 2, 5, 1, 'oc_vit_luc_giac_inox.jpg', '2016-06-12 17:48:57', '2016-06-12 17:48:57'),
(2, '002', 'Ro-to', '1800000', 'Roto cho máy phát', 2, 3, 3, 3, 2, 'Ro to.png', '2016-07-01 00:00:40', '2016-07-01 00:00:40'),
(4, '003', 'Máy ép thủy lực', '20000000', 'Sử dụng áp suất lớn để thực hiện ép', 2, 3, 2, 3, 1, 'May ep thuy luc.png', '2016-07-04 16:05:41', '2016-07-04 16:05:41'),
(5, '004', 'Máy tiện CNC', '5000000', 'Dùng để gia công lại sản phẩm một cách đẹp hơn', 2, 3, 3, 3, 2, 'May tien.jpg', '2016-07-04 16:13:53', '2016-07-04 16:13:53'),
(6, '005', 'Bảng điện tử', '100000', NULL, 3, 2, 2, 4, 3, 'Bang dien tu.png', '2016-07-04 16:15:52', '2016-07-04 16:15:52'),
(7, '007', 'Máy hàn', '2000000', 'Hàn nối, cắt các mới sắt hoặc kimm loại bị hư hỏng', 2, 3, 3, 4, 2, 'May han.jpg', '2016-07-04 20:22:19', '2016-07-04 20:22:19'),
(8, '008', 'mũi khoan taro', '100000', 'mũi khoan chính hãng', 1, 2, 1, 2, 2, 'Mui khoan Taro.jpg', '2018-10-29 23:09:06', '2018-10-29 23:09:06'),
(9, '009', 'Vòng bi', '75000', 'vòng bi chính hãng, thông dụng và đặc chủng', 2, 2, 3, 2, 1, 'vong bi.jpg', '2018-11-02 23:09:06', '2018-11-02 23:09:06'),
(10, '010', 'lưỡi cắt nhôm', '550000', 'lưỡi cắt nhôm Makita', 3, 2, 3, 2, 2, 'luoi cat nhom.jpg', '2018-11-03 23:07:06', '2018-11-03 23:07:06'),
(11, '011', 'dao cắt kính', '75000', 'dao cắt kính loại nhỏ', 2, 3, 2, 2, 2, 'dao cat kinh.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '012', 'máy cưa đa góc', '1750000', 'Máy cưa đa góc Maktec MT230 Chính hãng', 5, 2, 2, 3, 2, 'may cua da goc.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '013', 'lưỡi mài', '80000', 'lưỡi mài bê tông, đĩa mài bê tông mác 250', 3, 2, 2, 3, 3, 'luoi mai.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vattukho`
--

CREATE TABLE `vattukho` (
  `id` int(10) UNSIGNED NOT NULL,
  `vt_id` int(10) UNSIGNED NOT NULL,
  `kho_id` int(10) UNSIGNED NOT NULL,
  `sl_nhap` int(11) NOT NULL,
  `sl_xuat` int(11) NOT NULL,
  `sl_ton` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vattukho`
--

INSERT INTO `vattukho` (`id`, `vt_id`, `kho_id`, `sl_nhap`, `sl_xuat`, `sl_ton`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 230, 0, 230, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 1, 230, 0, 230, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 1, 230, 0, 230, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 2, 80, 21, 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, 2, 80, 21, 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 2, 2, 80, 21, 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 4, 1, 100, 30, 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 5, 2, 100, 0, 100, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 6, 1, 200, 123, 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 7, 2, 100, 12, 88, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 5, 1, 20, 0, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 4, 2, 10, 0, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatkho`
--

CREATE TABLE `xuatkho` (
  `id` int(10) UNSIGNED NOT NULL,
  `xk_ma` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `xk_ngaylap` date NOT NULL,
  `xk_diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `xk_lydo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `xk_tongtien` decimal(10,2) NOT NULL,
  `ct_id` int(10) UNSIGNED NOT NULL,
  `nv_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `xuatkho`
--

INSERT INTO `xuatkho` (`id`, `xk_ma`, `xk_ngaylap`, `xk_diachi`, `xk_lydo`, `xk_tongtien`, `ct_id`, `nv_id`, `created_at`, `updated_at`) VALUES
(0, 'PXK26072016030701', '2016-07-26', 'đường 3/2', 'Xuất kho', '13038000.00', 1, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'PXK04072016050735', '2016-07-04', 'đường 3/2', 'abc', '1000000.00', 2, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'PXK04072016120702', '2016-07-04', 'TP Hải DƯơng', 'Xuất kho', '50000.00', 2, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'PXK04072016020711', '2016-07-04', 'đường 3/2', 'acb', '110000.00', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'PXK05072016030746', '2016-07-05', 'ĐỨc Minh', 'Nhập hàng', '4000000.00', 2, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chatluong`
--
ALTER TABLE `chatluong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietchuyenkho`
--
ALTER TABLE `chitietchuyenkho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietchuyenkho_vt_id_foreign` (`vt_id`),
  ADD KEY `chitietchuyenkho_ck_id_foreign` (`ck_id`),
  ADD KEY `chitietchuyenkho_khocu_id_foreign` (`khocu_id`),
  ADD KEY `chitietchuyenkho_khomoi_id_foreign` (`khomoi_id`);

--
-- Chỉ mục cho bảng `chitietnhapkho`
--
ALTER TABLE `chitietnhapkho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietnhapkho_nk_id_foreign` (`nk_id`),
  ADD KEY `chitietnhapkho_vt_id_foreign` (`vt_id`);

--
-- Chỉ mục cho bảng `chitietxuatkho`
--
ALTER TABLE `chitietxuatkho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietxuatkho_vt_id_foreign` (`vt_id`),
  ADD KEY `chitietxuatkho_xk_id_foreign` (`xk_id`);

--
-- Chỉ mục cho bảng `chuyenkho`
--
ALTER TABLE `chuyenkho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nv_id` (`nv_id`);

--
-- Chỉ mục cho bảng `congtrinh`
--
ALTER TABLE `congtrinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_group` (`user_id`);

--
-- Chỉ mục cho bảng `nhaphanphoi`
--
ALTER TABLE `nhaphanphoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhaphanphoi_kv_id_foreign` (`kv_id`);

--
-- Chỉ mục cho bảng `nhapkho`
--
ALTER TABLE `nhapkho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhapkho_npp_id_foreign` (`npp_id`),
  ADD KEY `nhapkho_nv_id_foreign` (`nv_id`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nhasanxuat_kv_id_foreign` (`kv_id`);

--
-- Chỉ mục cho bảng `nhomvattu`
--
ALTER TABLE `nhomvattu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongtincongty`
--
ALTER TABLE `thongtincongty`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`);

--
-- Chỉ mục cho bảng `vattu`
--
ALTER TABLE `vattu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vattu_dvt_id_foreign` (`dvt_id`),
  ADD KEY `vattu_nvt_id_foreign` (`nvt_id`),
  ADD KEY `vattu_cl_id_foreign` (`cl_id`),
  ADD KEY `vattu_npp_id_foreign` (`npp_id`),
  ADD KEY `vattu_nsx_id_foreign` (`nsx_id`);

--
-- Chỉ mục cho bảng `vattukho`
--
ALTER TABLE `vattukho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vattukho_vt_id_foreign` (`vt_id`),
  ADD KEY `vattukho_kho_id_foreign` (`kho_id`);

--
-- Chỉ mục cho bảng `xuatkho`
--
ALTER TABLE `xuatkho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `xuatkho_ct_id_foreign` (`ct_id`),
  ADD KEY `xuatkho_user_id_foreign` (`nv_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chatluong`
--
ALTER TABLE `chatluong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `chitietchuyenkho`
--
ALTER TABLE `chitietchuyenkho`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `chitietnhapkho`
--
ALTER TABLE `chitietnhapkho`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `chitietxuatkho`
--
ALTER TABLE `chitietxuatkho`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `chuyenkho`
--
ALTER TABLE `chuyenkho`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `congtrinh`
--
ALTER TABLE `congtrinh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
