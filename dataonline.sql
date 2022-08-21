-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 21, 2022 lúc 07:44 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dataonline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsp`, `soluong`, `gia`) VALUES
(14, 2, 3, '18990000, '),
(14, 2, 3, '18990000, '),
(15, 2, 3, '18990000'),
(15, 2, 3, '18990000'),
(16, 2, 3, '18990000'),
(16, 2, 3, '18990000'),
(17, 2, 3, '18990000'),
(17, 2, 3, '18990000'),
(18, 2, 3, '18990000'),
(18, 2, 3, '18990000'),
(19, 2, 3, '18990000'),
(19, 2, 3, '18990000'),
(20, 2, 3, '18990000'),
(20, 2, 3, '18990000'),
(21, 2, 3, '18990000'),
(21, 2, 3, '18990000'),
(22, 2, 3, '18990000'),
(22, 2, 3, '18990000'),
(23, 2, 3, '18990000'),
(23, 2, 3, '18990000'),
(24, 2, 3, '18990000'),
(24, 2, 3, '18990000'),
(25, 2, 3, '18990000'),
(25, 2, 3, '18990000'),
(26, 2, 3, '18990000'),
(26, 2, 3, '18990000'),
(27, 2, 3, '18990000'),
(27, 2, 3, '18990000'),
(28, 2, 2, '18990000'),
(29, 2, 2, '18990000'),
(30, 2, 1, '18990000'),
(31, 13, 3, '10090000'),
(31, 14, 1, '12900000'),
(32, 11, 1, '10790000'),
(33, 2, 1, '18990000'),
(33, 1, 1, '17990000'),
(33, 14, 1, '12900000'),
(33, 1, 1, '21212121'),
(34, 11, 1, '10790000'),
(34, 13, 1, '10090000'),
(34, 14, 1, '12900000'),
(35, 2, 1, '18990000'),
(35, 6, 1, '24440000'),
(36, 19, 5, '64500000'),
(36, 18, 1, '10090000'),
(47, 1, 1, '17990000'),
(48, 2, 1, '75960000'),
(49, 2, 1, '18990000'),
(50, 1, 1, '17990000'),
(51, 7, 27, '675000000'),
(52, 7, 2, '50000000'),
(52, 6, 2, '48880000'),
(53, 2, 1, '18990000'),
(54, 65, 1, '65'),
(55, 64, 1, '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`) VALUES
(1, 9, '123', '12345', 'anhsinhdz2001@gmail.com', 21, '2121212121'),
(2, 9, '123', '12345', 'anhsinhdz2001@gmail.com', 21, '2121212121'),
(4, 9, '123', '12345', 'anhsinhdz2001@gmail.com', 21, '2121212121'),
(5, 9, '123', '12345', 'anhsinhdz2001@gmail.com', 21, '2121212121'),
(6, 9, '123', '12345', 'anhsinhdz2001@gmail.com', 21, '2121212121'),
(7, 9, '123', '12345', 'anhsinhdz2001@gmail.com', 21, '2121212121'),
(8, 9, '123', '12345', 'anhsinhdz2001@gmail.com', 21, '2121212121'),
(9, 9, '123', '12345', 'anhsinhdz2001@gmail.com', 21, '2121212121'),
(28, 11, 'new', '12345', 'jambovelinhds@gmail.com', 2, '37980000'),
(29, 11, 'ha noi co nhue 1', '12345', 'jambovelinhds@gmail.com', 2, '37980000'),
(30, 11, 'Ha noi viet nam', '12345', 'jambovelinhds@gmail.com', 1, '18990000'),
(31, 11, 'vietnam', '12345', 'jambovelinhds@gmail.com', 4, '43170000'),
(32, 11, 'viet nam', '12345', 'jambovelinhds@gmail.com', 1, '10790000'),
(33, 11, 'new', '12345', 'jambovelinhds@gmail.com', 3, '49880000'),
(34, 12, 'new', '123', 'lesinh@gmail.com', 3, '33780000'),
(35, 12, 'new', '123', 'lesinh@gmail.com', 2, '43430000'),
(36, 12, 'new', '123', 'lesinh@gmail.com', 1, '10090000'),
(47, 12, 'new,', '123', 'lesinh@gmail.com', 1, '17990000'),
(48, 12, 'new', '123', 'lesinh@gmail.com', 1, '75960000'),
(49, 12, 'newwww', '123', 'lesinh@gmail.com', 1, '18990000'),
(50, 12, '123', '123', 'lesinh@gmail.com', 1, '17990000'),
(51, 13, 'hcjklewecjkwrv', '0867183836', 'jambovelinhds241@gmail.com', 27, '18225000000'),
(52, 13, 'errt', '0867183836', 'jambovelinhds241@gmail.com', 4, '197760000'),
(53, 11, 'n', '12345', 'jambovelinhds@gmail.com', 1, '18990000'),
(54, 11, 'New', '12345', 'jambovelinhds@gmail.com', 1, '65'),
(55, 11, 'N', '12345', 'jambovelinhds@gmail.com', 1, '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `hinhanh`) VALUES
(1, 'Trang chủ', 'https://ngochieu.name.vn/img/home.png'),
(2, 'Điện thoại', 'https://ngochieu.name.vn/img/mobile.png'),
(3, 'Laptop', 'https://ngochieu.name.vn/img/laptop.png'),
(4, 'Thông tin', 'https://ngochieu.name.vn/img/info.png'),
(5, 'Liên hệ', 'https://ngochieu.name.vn/img/contact.png'),
(6, 'Đơn hàng', 'https://cdn-icons-png.flaticon.com/512/4290/4290854.png'),
(7, 'Quản lý', 'https://cdn-icons.flaticon.com/png/512/4946/premium/4946348.png?token=exp=1661002787~hmac=b74d3fc512195ec0988a248ff3d7f9fd'),
(8, 'Đăng xuất', 'https://cdn-icons.flaticon.com/png/512/4400/premium/4400828.png?token=exp=1660979321~hmac=3baef472f64e08291f9c302c7823127f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphammoi`
--

CREATE TABLE `sanphammoi` (
  `id` int(11) NOT NULL,
  `tensp` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `giasp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `loai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphammoi`
--

INSERT INTO `sanphammoi` (`id`, `tensp`, `giasp`, `hinhanh`, `mota`, `loai`) VALUES
(1, 'Laptop gaming MSI GF63 Thin 11SC 662VN', '17990000', 'https://product.hstatic.net/1000026716/product/622_1ab38aa17d264e8da44e1ad0bd8a9127.png', 'CPU:	Intel Core i7-11800H 2.3GHz up to 4.6GHz 24MB\r\nRAM:	8GB (8x1) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\r\nỔ cứng:	512GB NVMe PCIe Gen3x4 SSD (1 slot)\r\nCard đồ họa:	NVIDIA GeForce GTX1650 4GB GDDR6 with Max-Q Design + Intel UHD Graphics\r\nMàn hình:	15.6\" FHD (1920 x 1080) IPS 144Hz, Thin Bezel\r\nCổng giao tiếp:	3x USB3.2 Gen1,\r\n1x Type-C USB3.2 Gen1,\r\nHDMI\r\nRJ-45\r\nAudio:	2 x 2W Speaker\r\nĐọc thẻ nhớ:	None\r\nChuẩn LAN:	Gb LAN\r\nChuẩn WIFI:	Intel Wireless-AC 9560 (2*2 AC)\r\nBluetooth:	v5.0\r\nWebcam:	HD type (30fps@720p)\r\nHệ điều hành:	Windows 11 Home\r\nPin:	3 Cell 51WHr\r\nTrọng lượng:	1.86 kg\r\nMàu sắc:	Đen\r\nKích thước:	359 x 254 x 21.7 mm', 2),
(2, 'Laptop gaming GIGABYTE G5 GD 51S1123SO', '18990000', 'https://product.hstatic.net/1000026716/product/i5-3050-45__350169c41d984bcaa43d02e7240ae863.png', 'CPU:     Intel Core i5-11400H upto 4.50GHz, 6 nhân 12 luồng\r\n\r\nRAM:     16GB (2x8GB) DDR4-3200Mhz (2 khe ram, nâng cấp tối đa 64GB RAM)\r\n\r\nỔ cứng:     512GB SSD M.2 PCIE G4X4 (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\r\n\r\nCard đồ họa:     NVIDIA GeForce RTX 3050 4GB GDDR6 + Intel UHD Graphics\r\n\r\nMàn hình:     15.6 inch Thin Bezel FHD (1920x1080) IPS-level Anti-glare Display LCD, 144Hz, 45% NTSC, 62-65% sRGB.\r\n\r\nCổng giao tiếp:     1x USB2.0 Type-A\r\n1x USB3.2 Gen1 Type-A\r\n1x USB3.2 Gen2 Type-A\r\n1x HDMI 2.0 (with HDCP)\r\n1x mini DP 1.4\r\n1x DisplayPort 1.4 Type-C over USB 3.2 Gen 2\r\nBàn phím:     Bàn phím tiêu chuẩn - Có bàn phím số\r\nTất cả các vùng của bàn phím có đèn nền một màu với cài đặt đèn LED 15 màu\r\nChuẩn LAN:     RTL8411B REALTEK (1G) Ethernet\r\n\r\nChuẩn Wifi:     Wifi 6 (AX)\r\n\r\nBluetooth:     Bluetooth V5.2 + LE\r\n\r\nAudio:	Loa 2 x 2 W , 2 Micro , Nahimic 3\r\nWebcam:     HD Camera\r\n\r\nHệ điều hành:     Windows 11 Home\r\n\r\nPin:     48.96Wh\r\nTrọng lượng:     2.2 kg\r\n\r\nMàu sắc:     Đen\r\n\r\nKích thước:     361(W) x 258(D) x 27.9(H) mm', 2),
(3, 'Laptop ASUS TUF Gaming F15 FX506HC', '19490000', 'https://product.hstatic.net/1000026716/product/hn144w_48ecbca2786b4028934d22d149833c1d.png', 'CPU:	Intel® Core™ i5-11400H Processor 2.7 GHz (12M Cache, up to 4.5 GHz, 6 Cores)\r\nRAM:	8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng:	512GB SSD M.2 PCIE G3X2, 1x slot M.2\r\nCard đồ họa:	NVIDIA® GeForce RTX™ 3050 Laptop GPU + Intel® UHD Graphics\r\nMàn hình:	15.6\" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 45% NTSC, 62.5% sRGB\r\nCổng giao tiếp:	1x RJ45 LAN port\r\n3x USB 3.2 Gen 1 Type-A\r\n1x Thunderbolt™ 4 support DisplayPort™\r\n1x 3.5mm Combo Audio Jack\"\r\n1 x HDMI 2.0B\r\nAudio:	DTS software\r\nBàn phím:	Backlit Chiclet Keyboard RGB\r\nChuẩn LAN:	10/100/1000/Gigabits Base T\r\nKết nối không dây:	Wifi 6 (802.11ax) / Bluetooth 5.2\r\nWebcam:	HD 720p\r\nHệ điều hành:	Windows 11 Home\r\nPin:	48WHrs, 3S1P, 3-cell Li-ion\r\nTrọng lượng:	2.3 kg\r\nMàu sắc:	Graphite Black\r\nKích thước:	35.9 x 25.6 x 2.28 ~ 2.43 cm', 2),
(4, 'Laptop Gaming Acer Nitro 5 AN515 57 71VV', '19400000', 'https://product.hstatic.net/1000026716/product/71vv_d5aa92f30bf04956a12a33079fe4359b.jpg', 'CPU	Intel® Core i7-11800H upto 4.60 GHz, 8 nhân 16 luồng\r\nRam	8GB DDR4 3200MHz (2 slot SO-DIMM socket, nâng cấp tối đa 32GB SDRAM)\r\nỔ cứng	512GB SSD M.2 PCIE (nâng cấp tối đa 1TB SSD PCIe Gen3, 8 Gb/s, NVMe và 2TB HDD 2.5-inch 5400 RPM) (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\r\nCard đồ họa	NVIDIA® GeForce RTX™ 3050 4GB GDDR6\r\nMàn hình	15.6 inch FHD(1920 x 1080) IPS 144Hz SlimBezel\r\nCổng giao tiếp	3x USB 3.1 Gen 1, 1x USB 3.2 Gen 2 Type C, 1x HDMI, RJ45\r\nỔ quang	None\r\nAudio	Waves MaxxAudio®, Acer TrueHarmony™\r\nBàn phím	RGB 4 vùng\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	10/100/1000/Gigabits Base T\r\nChuẩn WIFI	802.11AX (2x2)\r\nBluetooth	Bluetooth® 5.1\r\nWebcam	HD Webcam\r\nHệ điều hành	Windows 11 Home\r\nPin	4 Cell 57.5WHr\r\nTrọng lượng	2.20 kg\r\nMàu sắc	Đen\r\nKích thước	363.4 x 255 x 23.9 mm', 2),
(5, 'Laptop Lenovo Ideapad gaming 3 15ARH7', '29480000', 'https://product.hstatic.net/1000026716/product/7jvn_21c71c081350458186859bcb48d531d7.png', 'CPU	AMD Ryzen 5 6600H 3.3GHz up to 4.5GHz 16MB\r\nRAM	8GB (8x1) DDR5 4800MHz (2x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng	512GB SSD M.2 2242 PCIe 4.0x4 NVMe (Còn trống 1 khe SSD M.2 PCIE 2280)\r\nCard đồ họa	NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500MHz, TGP 85W\r\nMàn hình	15.6 inch FHD (1920x1080) IPS 250nits Anti-glare, 120Hz, 45% NTSC, Free-Sync, DC dimmer\r\nCổng kết nối	1x USB-C 3.2 Gen 2 (support data transfer, Power Delivery 3.0, and DisplayPort 1.4)\r\n2x USB 3.2 Gen 1\r\n1x HDMI 2.0\r\n1x RJ-45\r\n1x headphone / microphone combo jack (3.5mm)\r\n1x power connector\r\nBàn phím	Blue Backlit, English\r\nAudio	Stereo speakers, 2W x2, Nahimic Audio\r\nChuẩn Lan	100/1000M\r\nWifi + Bluetooth	802.11AX (2x2) + BT v5.2\r\nWebcam	HD 720p with Privacy Shutter\r\nHệ điều hành    	Windows 11 Home\r\nPin	3 Cell 60WHr\r\nTrọng lượng	2.3 kg\r\nMàu sắc	Glacier White\r\nKích thước    	359.6 x 266.4 x 21.8 (mm)', 2),
(6, 'Máy tính xách tay Acer Nitro 5 AN515 58 52SP', '24440000', 'https://product.hstatic.net/1000026716/product/52sp_015bf4d0a0524150b7c492067f1490fb.jpg', 'CPU	Intel Core i5-12500H 3.3GHz up to 4.5GHz 18MB\r\nRam	8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng	512GB SSD M.2 PCIE (nâng cấp tối đa 1TB SSD PCIe Gen3, 8 Gb/s, NVMe và 2TB HDD 2.5-inch 5400 RPM) (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\r\nCard đồ họa	NVIDIA® GeForce RTX™ 3050 4GB GDDR6\r\nMàn hình	15.6 inch FHD(1920 x 1080) IPS 144Hz SlimBezel\r\nCổng giao tiếp	\r\n1x USB 3.2 Gen 2 Type-C Ports (supporting: USB 3.2 Gen 2 (up to 10 Gbps); DisplayPort over USB-C; Thunderbolt 4; USB charging 5 V; 3 A; DC-in port 20 V; 65 W)\r\n1x USB 3.2 Gen 2 port featuring power-off USB charging\r\n1x USB 3.2 Gen 2 port\r\n1x USB 3.2 Gen 1 port\r\n1x Ethernet (RJ-45) port\r\n1x HDMI®2.1 port with HDCP support\r\n1x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1x DC-in jack for AC adapter\r\nỔ quang	None\r\nAudio	Waves MaxxAudio®, Acer TrueHarmony™\r\nBàn phím	RGB 4 vùng\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	KillerTM Ethernet E2600\r\nChuẩn WIFI	KillerTM Wi-Fi 6 AX 1650i (2x2)\r\nBluetooth	Bluetooth® 5.1\r\nWebcam	HD Webcam\r\nHệ điều hành	Windows 11 Home\r\nPin	4 Cell 57.5WHr\r\nTrọng lượng	2.5 kg\r\nMàu sắc	Obsidian Black\r\nKích thước	360.4 x 271.09 x 25.9 mm', 2),
(7, 'Laptop Asus Vivobook 14X M1403QA', '25000000', 'https://product.hstatic.net/1000026716/product/r5_e589aaef1feb4bafa00f59922ab552ad.png', 'CPU	AMD Ryzen 5 5600H 3.3GHz up to 4.2GHz 16MB\r\nRAM	8GB Onboard DDR4 3200MHz (1x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng	512GB M.2 NVMe™ PCIe® 3.0 SSD (1 slot, support M.2 2280 PCIe 3.0x4)\r\nVGA	AMD Radeon™ Graphics\r\nMàn hình	14\" WUXGA (1920 x 1200) 16:10 aspect ratio, LED Backlit, IPS-level Panel, 300 Nits, 45% NTSC color gamut, Anti-glare display, Screen-to-body ratio: 86%\r\nCổng giao tiếp	1x USB 3.2 Gen 1 Type-C\r\n2x USB 3.2 Gen 1 Type-A\r\n1x USB 2.0 Type-A\r\n1x HDMI 1.4\r\n1x 3.5mm Combo Audio Jack\r\n1x DC-in\r\nBàn phím	None\r\nBảo mật	Vân tay\r\nAudio	SonicMaster\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	None\r\nChuẩn WIFI	Wi-Fi 6(802.11ax) (Dual band) 2*2\r\nBluetooth	v5.1\r\nWebcam	720p HD camera With privacy shutter\r\nHệ điều hành	Windows 11 Home\r\nPin	3 Cells 50WHrs\r\nTrọng lượng	1.6 kg\r\nMàu sắc	Quiet Blue\r\nKích thước	31.71 x 22.20 x 1.99 cm', 2),
(8, 'Laptop Acer Aspire 3 A315 58 53S6', '27009000', 'https://product.hstatic.net/1000026716/product/gearvn-laptop-acer-aspire-3-a315-58-53s6-1_9b8b6a488ff04a29a4f06fb1964ad202.png', 'CPU	Intel Core i5-1135G7 2.4GHz up to 4.2GHz 8MB\r\nRAM	8GB (4GB Onboard + 4GB) DDR4 2400MHz (1x SO-DIMM socket, up to 12GB SDRAM)\r\nỔ cứng	256GB PCIe NVMe SSD (Còn trống 1 khe 2.5\" SATA)\r\nCard đồ họa	Intel Iris Xe Graphics \r\nMàn hình	15.6\" FHD (1920 x 1080), Acer ComfyView LED-backlit TFT LCD\r\nCổng giao tiếp	2x USB 3.2 Gen 1 Type-A \r\n1x USB 2.0\r\n1x HDMI®2.0 port with HDCP support\r\n1x RJ45\r\n1x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1x DC-in jack for AC adapter\r\nBàn phím	Không LED\r\nAudio	Realtek High Definition\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	Gigabit Ethernet\r\nWifi + Bluetooth	802.11a/b/g/n/ac + BT v5.0\r\nWebcam	720p HD audio/video recording\r\nHệ điều hành	Windows 11 Home\r\nPin	2 Cell 36.7 Whr\r\nTrọng lượng	1.7 kg\r\nMàu sắc	Safari Gold\r\nKích thước	363 x 238.4 x 19.9 (mm)', 2),
(9, 'Laptop ASUS VivoBook 15X OLED M1503QA ', '31990000', 'https://product.hstatic.net/1000026716/product/gearvn-laptop-asus-vivobook-15x-oled-m1503qa-l1028w-1_91a88cafd2364235867ff97978eb0f7f.png', 'CPU	AMD Ryzen 5 5600H 3.3GHz up to 4.2GHz 16MB\r\nRAM	8GB (Onboard) DDR4 3200MHz (Còn 1 slot SO-DIMM, nâng cấp tối đa 16GB)\r\nỔ cứng	512GB SSD M.2 NVMe PCIe 3.0 (1 Slot)\r\nVGA	AMD Radeon Graphics\r\nMàn hình	15.6 inch FHD (1920 x 1080) OLED 16:9, 600nits peak brightness, 100% DCI-P3, VESA CERTIFIED Display HDR True Black 600, PANTONE Validated, Glossy display, Screen-to-body ratio: 86 ％\r\nCổng giao tiếp	\r\n1 x USB 3.2 Gen 1 Type-C\r\n2 x USB 3.2 Gen 1 Type-A\r\n1 x USB 2.0 Type-A\r\n1 x HDMI 1.4\r\n1 x 3.5mm Combo Audio Jack\r\n1 x DC-in\r\nBàn phím	None\r\nBảo mật	Fingerprint sensor intergrated with Touchpad\r\nAudio	SonicMaster\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	None\r\nChuẩn WIFI	Wi-Fi 6(802.11ax) (Dual band) 2*2\r\nBluetooth	v5.1\r\nWebcam	720p HD camera With privacy shutter\r\nHệ điều hành	Windows 11 Home\r\nPin	70WHrs, 3S1P, 3-cell Li-ion\r\nTrọng lượng	1.70 kg\r\nMàu sắc	Quiet Blue\r\nKích thước	35.68 x 22.76 x 1.99 ~ 1.99 cm', 2),
(10, 'Laptop Dell Vostro 3420 70283385', '10000000', 'https://product.hstatic.net/1000026716/product/gearvn-laptop-dell-vostro-3420-70283385-1_0e507c763bef409c86f34b2e8481096a.png', 'CPU	Intel Core i5-1135G7 2.4GHz up to 4.2GHz 8MB\r\nRAM	8GB (1x8) DDR4 2666MHz (2x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng	512GB SSD M.2 PCI-E (1 slot)\r\nCard đồ họa	Intel Iris Xe Graphics\r\nMàn hình	14\'\' FHD (1920 x 1080), 60Hz, Non-Touch, AG, Wide Viewing Angle, LED-Backlit, Narrow Border\r\nCổng giao tiếp 	\r\n1x USB 3.2 Gen 1 Type-C (with DisplayPort®)\r\n1x USB 3.2 Gen 1 Type-A\r\n1x USB 2.0\r\n1x HDMI 1.4\r\n1x Headset Jack\r\n1 Flip-Down RJ-45 port 10/100/1000 Mbps\r\n1x DC in\r\nBàn phím	Không có dãy phím Numpad, không hỗ trợ đèn LED\r\nKhe đọc thẻ nhớ	SD Media Card Reader\r\nAudio	2x 2W Realtek\r\nLan	100/1000 Mbps\r\nWifi + Bluetooth	802.11 AC + v5.0\r\nWebcam	HD Webcam\r\nHệ điều hành	Windows 11 Home + Office Home & Student\r\nBảo mật	Vân tay\r\nPin	3 Cell 41WHr\r\nTrọng lượng:	1.49 kg\r\nMàu sắc	Carbon Black\r\nKích thước    	321.27 x 220.26 x 18.62~23.02 mm', 2),
(11, 'iPhone 11 64GB I Chính hãng VN/A', '10790000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_11_white_4_.png', 'Vi xử lý & đồ họa\r\n\r\nLoại CPU\r\n\r\nHexa-core\r\nChipset\r\n\r\nA13 Bionic\r\nGPU\r\n\r\nApple GPU\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n6.1 inches\r\nĐộ phân giải màn hình\r\n\r\n1792 x 828 pixel\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\nTính năng màn hình\r\n\r\nTrue-tone\r\nTần số quét\r\n\r\n60Hz\r\nGiao tiếp & kết nối\r\n\r\nHệ điều hành\r\n\r\niOS 13 hoặc cao hơn (Tùy vào phiên bản phát hành)\r\nWi-Fi\r\n\r\n802.11ax Wi‑Fi 6 with 2x2 MIMO\r\nBluetooth\r\n\r\n5.0\r\nThẻ SIM\r\n\r\nNano-SIM + eSIM\r\nHồng ngoại\r\n\r\nKhông\r\nJack tai nghe 3.5\r\n\r\nKhông\r\nCông nghệ NFC\r\n\r\nCó\r\nHỗ trợ mạng\r\n\r\n4G\r\nGPS\r\n\r\nGPS/GNSS\r\nThông số kỹ thuật\r\n\r\nPin\r\n\r\n3110 mAh\r\nThiết kế & Trọng lượng\r\n\r\nKích thước\r\n\r\n150.9mm - 75.7mm - 8.3mm\r\nTrọng lượng\r\n\r\n194 g\r\nChất liệu mặt lưng\r\n\r\nKính\r\nChất liệu khung viền\r\n\r\nKim loại\r\nCamera sau\r\n\r\nCamera sau\r\n\r\nCamera kép 12MP:\r\n- Camera góc rộng: ƒ/1.8 aperture\r\n- Camera siêu rộng: ƒ/2.4 aperture\r\nTính năng camera\r\n\r\nRetina Flash\r\nNhãn dán (AR Stickers)\r\nBan đêm (Night Mode)\r\nChạm lấy nét\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide) HDR Nhận diện khuôn mặt\r\nQuay chậm (Slow Motion)\r\nToàn cảnh (Panorama)\r\nTrôi nhanh thời gian (Time L\r\nQuay video\r\n\r\nQuay video 4K ở tốc độ 24 fps, 30 fps hoặc 60 fps\r\nCamera trước\r\n\r\nCamera trước\r\n\r\n12 MP, ƒ/2.2 aperture\r\nQuay video trước\r\n\r\n4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS\r\nRAM & lưu trữ\r\n\r\nDung lượng RAM\r\n\r\n4 GB\r\nBộ nhớ trong\r\n\r\n64 GB\r\nKhe cắm thẻ nhớ\r\n\r\nKhông\r\nPin & công nghệ sạc\r\n\r\nCông nghệ sạc\r\n\r\nSạc nhanh 18W\r\nPower Delivery 2.0\r\nCổng sạc\r\n\r\nLightning\r\nThông số khác\r\n\r\nChỉ số kháng nước, bụi\r\n\r\nIP68\r\nKiểu màn hình\r\n\r\nTai thỏ\r\nCảm biến\r\n\r\nFaceID, Con quay hồi chuyển, Gia tốc kế, Cảm biến tiệm cận, Cảm biến ánh sáng xung quanh\r\nTiện ích khác\r\n\r\nCảm biến vân tay\r\n\r\nKhông\r\nCác loại cảm biến\r\n\r\nCảm biến gia tốc, Cảm biến tiệm cận, Cảm biến ánh sáng, La bàn, Con quay hồi chuyển, Cảm biến áp kế\r\nTính năng đặc biệt\r\n\r\nSạc không dây', 1),
(13, 'Samsung Galaxy A73 5G - Chính hãng', '10090000', 'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/04/10/image-removebg-preview-2.png', 'Dung lượng pin	Li-Ion 5000 mAh\r\nBộ nhớ & Lưu trữ\r\nRAM	8GB\r\nBộ nhớ trong (ROM)	128GB\r\nKết nối\r\nBluetooth	5.0, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, GALILEO, BDS\r\nSố khe sim	2 Nano SIM (SIM 2 chung khe thẻ nhớ)\r\nWifi	\r\nDual-band (2.4 GHz/5 GHz)\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\nWi-Fi Direct\r\nWi-Fi hotspot\r\nJack tai nghe	Type-C\r\nCổng kết nối/sạc	Type-C\r\nKết nối khác:	NFC\r\nHệ điều hành & CPU\r\nChip xử lý (CPU)	Snapdragon 778G 5G 8 nhân\r\nTốc độ CPU	4 nhân 2.4 GHz & 4 nhân 1.8 GHz\r\nChip đồ họa (GPU)	Adreno 642L\r\nMàn hình\r\nĐộ phân giải:	Full HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:	6.7\" - Tần số quét 120 Hz\r\nCông nghệ màn hình:	Super AMOLED Plus\r\nCamera sau\r\nĐộ phân giải	Chính 108 MP & Phụ 12 MP, 5 MP, 5 MP\r\nQuay phim	\r\n4K 2160p@30fps\r\nFullHD 1080p@30fps\r\nFullHD 1080p@60fps\r\nHD 720p@240fps\r\nTính năng	\r\nBan đêm (Night Mode)\r\nBộ lọc màu\r\nChuyên nghiệp (Pro)\r\nChạm lấy nét\r\nChống rung quang học (OIS)\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide)\r\nHDR\r\nLàm đẹp\r\nLấy nét theo pha (PDAF)\r\nNhận diện khuôn mặt\r\nQuay chậm (Slow Motion)\r\nQuay Siêu chậm (Super Slow Motion)\r\nSiêu cận (Macro)\r\nToàn cảnh (Panorama)\r\nTrôi nhanh thời gian (Time Lapse)\r\nTự động lấy nét (AF)\r\nXóa phông\r\nZoom kỹ thuật số\r\nCamera trước\r\nĐộ phân giải	32 MP\r\nTính năng	\r\nBộ lọc màu\r\nChụp đêm\r\nGóc rộng (Wide)\r\nHDR\r\nLive Photo\r\nLàm đẹp\r\nNhận diện khuôn mặt\r\nQuay video Full HD\r\nXóa phông\r\nTiện ích\r\nGhi âm	Ghi âm cuộc gọi , Ghi âm mặc định\r\nTính năng đặc biệt	\r\nChạm 2 lần tắt/sáng màn hình\r\nChế độ trẻ em (Samsung Kids)\r\nChế độ đơn giản (Giao diện đơn giản)\r\nKhông gian thứ hai (Thư mục bảo mật)\r\nMở rộng bộ nhớ RAM\r\nSamsung Pay\r\nSmart Switch (ứng dụng chuyển đổi dữ liệu)\r\nTrợ lý ảo Samsung Bixby\r\nTối ưu game (Game Booster)\r\nÂm thanh Dolby Atmos\r\nĐa cửa sổ (chia đôi màn hình)\r\nỨng dụng kép (Dual Messenger)\r\nKháng nước, kháng bụi IP67\r\nBảo mật nâng cao	Mở khoá vân tay dưới màn hình\r\nXem phim	\r\n3GP\r\nAVI\r\nMP4\r\nWMV\r\nNghe nhạc	\r\nAAC\r\nAMR\r\nFLAC\r\nMidi\r\nMP3\r\nOGG\r\nThông tin chung\r\nKích thước, khối lượng:	Dài 163.7 mm - Ngang 76.1 mm - Dày 7.6 mm - Nặng 181 g', 1),
(14, 'Điện thoại di động OPPO Reno6 Z 5G - Chính Hãng', '12900000', 'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/07/07/reno6-z.png', 'Công nghệ màn hình:: AMOLED\r\nĐộ phân giải:: Full HD+ (1080 x 2400 Pixels)\r\nĐộ phân giải: Chính 64 MP & Phụ 8 MP, 2 MP, 32 MP\r\nHệ điều hành: Android 11\r\nChip xử lý (CPU): MediaTek Dimensity 800U 5G 8 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 8 GB\r\nMạng di động: Hỗ trợ 5G\r\nSố khe sim: 2 Nano SIM\r\nDung lượng pin: 4310 mAh', 1),
(15, 'iPhone 12 Pro Max 128GB I Chính hãng VN/A', '26900000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_12_pro_max_white_1.png', 'Loại CPU\r\n\r\nHexa-core\r\nKích thước màn hình\r\n\r\n6.7 inches\r\nĐộ phân giải màn hình\r\n\r\n1284 x 2778 pixels\r\nHệ điều hành\r\n\r\niOS 14.1 hoặc cao hơn (Tùy vào phiên bản phát hành)\r\nPin\r\n\r\nLi-Ion, sạc nhanh 20W, sạc không dây 15W, USB Power Delivery 2.0\r\nTrọng lượng\r\n\r\n228\r\nCông nghệ màn hình\r\n\r\nSuper Retina XDR OLED, HDR10, Dolby Vision, Wide color gamut, True-tone\r\nBluetooth\r\n\r\n5.0, A2DP, LE\r\nCông nghệ màn hình\r\n\r\nOLED\r\nCamera sau\r\n\r\nCamera chính: 12 MP, f/1.6, 26mm, 1.4µm, dual pixel PDAF, OIS\r\nCamera tele: 12 MP, f/2.0, 52mm, 1/3.4\", 1.0µm, PDAF, OIS, 2x optical zoom\r\nCamera góc siêu rộng: 12 MP, f/2.4, 120˚, 13mm, 1/3.6\"\r\nCảm biến: TOF 3D LiDAR scanner\r\nCamera trước\r\n\r\n12 MP, f/2.2, 23mm (wide), 1/3.6\"\r\nSL 3D, (depth/biometrics sensor)\r\nDung lượng RAM\r\n\r\n6 GB\r\nBộ nhớ trong\r\n\r\n128 GB\r\nThẻ SIM\r\n\r\n2 SIM (nano‑SIM và eSIM)\r\nTính năng màn hình\r\n\r\nHDR10\r\nDolby Vision\r\nTrue-tone\r\nĐộ sáng 800 nits\r\nTần số quét\r\n\r\n60Hz\r\nChipset\r\n\r\nApple A14 Bionic (5 nm)\r\nCảm biến\r\n\r\nFace ID, cảm biến gia tốc, cảm biến tiệm cận, con quay hồi chuyển, cảm biên sáng', 1),
(16, 'Samsung Galaxy S22 Ultra (8GB - 128GB)', '21090000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s908_galaxys22ultra_front_burgundy_211119.jpg', 'Loại CPU\r\n\r\nOcta-core (1x3.00 GHz Cortex-X2 & 3x2.50 GHz Cortex-A710 & 4x1.80 GHz Cortex-A510)\r\nKích thước màn hình\r\n\r\n6.8 inches\r\nĐộ phân giải màn hình\r\n\r\n1440 x 3088 pixels (QHD+)\r\nHệ điều hành\r\n\r\nAndroid 12, One UI 4.1\r\nPin\r\n\r\nLi-Ion 5000 mAh\r\nTrọng lượng\r\n\r\n229 g\r\nBluetooth\r\n\r\n5.2, A2DP, LE\r\nCông nghệ màn hình\r\n\r\nDynamic AMOLED 2X\r\nCamera sau\r\n\r\n108 MP, f/1.8 góc rộng\r\n10 MP, f/4.9\r\n10 MP, f/2.4\r\n12 MP, f/2.2 góc siêu rộng\r\nCamera trước\r\n\r\n40 MP, f/2.2\r\nDung lượng RAM\r\n\r\n8 GB\r\nBộ nhớ trong\r\n\r\n128 GB\r\nThẻ SIM\r\n\r\n2 Nano SIM hoặc 1 Nano + 1 eSIM\r\nTính năng màn hình\r\n\r\nTần số quét 120Hz\r\nCông nghệ HDR10+\r\nTần số quét\r\n\r\n120Hz\r\nChipset\r\n\r\nQualcomm Snapdragon 8 Gen 1 (4 nm)', 1),
(17, 'iPhone 11 64GB I Chính hãng VN/A\r\n', '10790000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_11_white_4_.png', 'Vi xử lý & đồ họa\r\n\r\nLoại CPU\r\n\r\nHexa-core\r\nChipset\r\n\r\nA13 Bionic\r\nGPU\r\n\r\nApple GPU\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n6.1 inches\r\nĐộ phân giải màn hình\r\n\r\n1792 x 828 pixel\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\nTính năng màn hình\r\n\r\nTrue-tone\r\nTần số quét\r\n\r\n60Hz\r\nGiao tiếp & kết nối\r\n\r\nHệ điều hành\r\n\r\niOS 13 hoặc cao hơn (Tùy vào phiên bản phát hành)\r\nWi-Fi\r\n\r\n802.11ax Wi‑Fi 6 with 2x2 MIMO\r\nBluetooth\r\n\r\n5.0\r\nThẻ SIM\r\n\r\nNano-SIM + eSIM\r\nHồng ngoại\r\n\r\nKhông\r\nJack tai nghe 3.5\r\n\r\nKhông\r\nCông nghệ NFC\r\n\r\nCó\r\nHỗ trợ mạng\r\n\r\n4G\r\nGPS\r\n\r\nGPS/GNSS\r\nThông số kỹ thuật\r\n\r\nPin\r\n\r\n3110 mAh\r\nThiết kế & Trọng lượng\r\n\r\nKích thước\r\n\r\n150.9mm - 75.7mm - 8.3mm\r\nTrọng lượng\r\n\r\n194 g\r\nChất liệu mặt lưng\r\n\r\nKính\r\nChất liệu khung viền\r\n\r\nKim loại\r\nCamera sau\r\n\r\nCamera sau\r\n\r\nCamera kép 12MP:\r\n- Camera góc rộng: ƒ/1.8 aperture\r\n- Camera siêu rộng: ƒ/2.4 aperture\r\nTính năng camera\r\n\r\nRetina Flash\r\nNhãn dán (AR Stickers)\r\nBan đêm (Night Mode)\r\nChạm lấy nét\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide) HDR Nhận diện khuôn mặt\r\nQuay chậm (Slow Motion)\r\nToàn cảnh (Panorama)\r\nTrôi nhanh thời gian (Time L\r\nQuay video\r\n\r\nQuay video 4K ở tốc độ 24 fps, 30 fps hoặc 60 fps\r\nCamera trước\r\n\r\nCamera trước\r\n\r\n12 MP, ƒ/2.2 aperture\r\nQuay video trước\r\n\r\n4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS\r\nRAM & lưu trữ\r\n\r\nDung lượng RAM\r\n\r\n4 GB\r\nBộ nhớ trong\r\n\r\n64 GB\r\nKhe cắm thẻ nhớ\r\n\r\nKhông\r\nPin & công nghệ sạc\r\n\r\nCông nghệ sạc\r\n\r\nSạc nhanh 18W\r\nPower Delivery 2.0\r\nCổng sạc\r\n\r\nLightning\r\nThông số khác\r\n\r\nChỉ số kháng nước, bụi\r\n\r\nIP68\r\nKiểu màn hình\r\n\r\nTai thỏ\r\nCảm biến\r\n\r\nFaceID, Con quay hồi chuyển, Gia tốc kế, Cảm biến tiệm cận, Cảm biến ánh sáng xung quanh\r\nTiện ích khác\r\n\r\nCảm biến vân tay\r\n\r\nKhông\r\nCác loại cảm biến\r\n\r\nCảm biến gia tốc, Cảm biến tiệm cận, Cảm biến ánh sáng, La bàn, Con quay hồi chuyển, Cảm biến áp kế\r\nTính năng đặc biệt\r\n\r\nSạc không dây', 1),
(18, 'Samsung Galaxy A73 5G - Chính hãng\r\n', '10090000', 'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/04/10/image-removebg-preview-2.png', 'Dung lượng pin	Li-Ion 5000 mAh\r\nBộ nhớ & Lưu trữ\r\nRAM	8GB\r\nBộ nhớ trong (ROM)	128GB\r\nKết nối\r\nBluetooth	5.0, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, GALILEO, BDS\r\nSố khe sim	2 Nano SIM (SIM 2 chung khe thẻ nhớ)\r\nWifi	\r\nDual-band (2.4 GHz/5 GHz)\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\nWi-Fi Direct\r\nWi-Fi hotspot\r\nJack tai nghe	Type-C\r\nCổng kết nối/sạc	Type-C\r\nKết nối khác:	NFC\r\nHệ điều hành & CPU\r\nChip xử lý (CPU)	Snapdragon 778G 5G 8 nhân\r\nTốc độ CPU	4 nhân 2.4 GHz & 4 nhân 1.8 GHz\r\nChip đồ họa (GPU)	Adreno 642L\r\nMàn hình\r\nĐộ phân giải:	Full HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:	6.7\" - Tần số quét 120 Hz\r\nCông nghệ màn hình:	Super AMOLED Plus\r\nCamera sau\r\nĐộ phân giải	Chính 108 MP & Phụ 12 MP, 5 MP, 5 MP\r\nQuay phim	\r\n4K 2160p@30fps\r\nFullHD 1080p@30fps\r\nFullHD 1080p@60fps\r\nHD 720p@240fps\r\nTính năng	\r\nBan đêm (Night Mode)\r\nBộ lọc màu\r\nChuyên nghiệp (Pro)\r\nChạm lấy nét\r\nChống rung quang học (OIS)\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide)\r\nHDR\r\nLàm đẹp\r\nLấy nét theo pha (PDAF)\r\nNhận diện khuôn mặt\r\nQuay chậm (Slow Motion)\r\nQuay Siêu chậm (Super Slow Motion)\r\nSiêu cận (Macro)\r\nToàn cảnh (Panorama)\r\nTrôi nhanh thời gian (Time Lapse)\r\nTự động lấy nét (AF)\r\nXóa phông\r\nZoom kỹ thuật số\r\nCamera trước\r\nĐộ phân giải	32 MP\r\nTính năng	\r\nBộ lọc màu\r\nChụp đêm\r\nGóc rộng (Wide)\r\nHDR\r\nLive Photo\r\nLàm đẹp\r\nNhận diện khuôn mặt\r\nQuay video Full HD\r\nXóa phông\r\nTiện ích\r\nGhi âm	Ghi âm cuộc gọi , Ghi âm mặc định\r\nTính năng đặc biệt	\r\nChạm 2 lần tắt/sáng màn hình\r\nChế độ trẻ em (Samsung Kids)\r\nChế độ đơn giản (Giao diện đơn giản)\r\nKhông gian thứ hai (Thư mục bảo mật)\r\nMở rộng bộ nhớ RAM\r\nSamsung Pay\r\nSmart Switch (ứng dụng chuyển đổi dữ liệu)\r\nTrợ lý ảo Samsung Bixby\r\nTối ưu game (Game Booster)\r\nÂm thanh Dolby Atmos\r\nĐa cửa sổ (chia đôi màn hình)\r\nỨng dụng kép (Dual Messenger)\r\nKháng nước, kháng bụi IP67\r\nBảo mật nâng cao	Mở khoá vân tay dưới màn hình\r\nXem phim	\r\n3GP\r\nAVI\r\nMP4\r\nWMV\r\nNghe nhạc	\r\nAAC\r\nAMR\r\nFLAC\r\nMidi\r\nMP3\r\nOGG\r\nThông tin chung\r\nKích thước, khối lượng:	Dài 163.7 mm - Ngang 76.1 mm - Dày 7.6 mm - Nặng 181 g', 1),
(19, 'Điện thoại di động OPPO Reno6 Z 5G - Chính Hãng', '12900000', 'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/07/07/reno6-z.png', 'Công nghệ màn hình:: AMOLED\r\nĐộ phân giải:: Full HD+ (1080 x 2400 Pixels)\r\nĐộ phân giải: Chính 64 MP & Phụ 8 MP, 2 MP, 32 MP\r\nHệ điều hành: Android 11\r\nChip xử lý (CPU): MediaTek Dimensity 800U 5G 8 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 8 GB\r\nMạng di động: Hỗ trợ 5G\r\nSố khe sim: 2 Nano SIM\r\nDung lượng pin: 4310 mAh', 1),
(20, 'Laptop gaming MSI GF63 Thin 11SC 662VN', '17990000', 'https://product.hstatic.net/1000026716/product/622_1ab38aa17d264e8da44e1ad0bd8a9127.png', 'CPU:	Intel Core i7-11800H 2.3GHz up to 4.6GHz 24MB\r\nRAM:	8GB (8x1) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\r\nỔ cứng:	512GB NVMe PCIe Gen3x4 SSD (1 slot)\r\nCard đồ họa:	NVIDIA GeForce GTX1650 4GB GDDR6 with Max-Q Design + Intel UHD Graphics\r\nMàn hình:	15.6\" FHD (1920 x 1080) IPS 144Hz, Thin Bezel\r\nCổng giao tiếp:	3x USB3.2 Gen1,\r\n1x Type-C USB3.2 Gen1,\r\nHDMI\r\nRJ-45\r\nAudio:	2 x 2W Speaker\r\nĐọc thẻ nhớ:	None\r\nChuẩn LAN:	Gb LAN\r\nChuẩn WIFI:	Intel Wireless-AC 9560 (2*2 AC)\r\nBluetooth:	v5.0\r\nWebcam:	HD type (30fps@720p)\r\nHệ điều hành:	Windows 11 Home\r\nPin:	3 Cell 51WHr\r\nTrọng lượng:	1.86 kg\r\nMàu sắc:	Đen\r\nKích thước:	359 x 254 x 21.7 mm', 2),
(21, 'Laptop gaming GIGABYTE G5 GD 51S1123SO', '18990000', 'https://product.hstatic.net/1000026716/product/i5-3050-45__350169c41d984bcaa43d02e7240ae863.png', 'CPU:     Intel Core i5-11400H upto 4.50GHz, 6 nhân 12 luồng\r\n\r\nRAM:     16GB (2x8GB) DDR4-3200Mhz (2 khe ram, nâng cấp tối đa 64GB RAM)\r\n\r\nỔ cứng:     512GB SSD M.2 PCIE G4X4 (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\r\n\r\nCard đồ họa:     NVIDIA GeForce RTX 3050 4GB GDDR6 + Intel UHD Graphics\r\n\r\nMàn hình:     15.6 inch Thin Bezel FHD (1920x1080) IPS-level Anti-glare Display LCD, 144Hz, 45% NTSC, 62-65% sRGB.\r\n\r\nCổng giao tiếp:     1x USB2.0 Type-A\r\n1x USB3.2 Gen1 Type-A\r\n1x USB3.2 Gen2 Type-A\r\n1x HDMI 2.0 (with HDCP)\r\n1x mini DP 1.4\r\n1x DisplayPort 1.4 Type-C over USB 3.2 Gen 2\r\nBàn phím:     Bàn phím tiêu chuẩn - Có bàn phím số\r\nTất cả các vùng của bàn phím có đèn nền một màu với cài đặt đèn LED 15 màu\r\nChuẩn LAN:     RTL8411B REALTEK (1G) Ethernet\r\n\r\nChuẩn Wifi:     Wifi 6 (AX)\r\n\r\nBluetooth:     Bluetooth V5.2 + LE\r\n\r\nAudio:	Loa 2 x 2 W , 2 Micro , Nahimic 3\r\nWebcam:     HD Camera\r\n\r\nHệ điều hành:     Windows 11 Home\r\n\r\nPin:     48.96Wh\r\nTrọng lượng:     2.2 kg\r\n\r\nMàu sắc:     Đen\r\n\r\nKích thước:     361(W) x 258(D) x 27.9(H) mm', 2),
(22, 'Laptop ASUS TUF Gaming F15 FX506HC', '19490000', 'https://product.hstatic.net/1000026716/product/hn144w_48ecbca2786b4028934d22d149833c1d.png', 'CPU:	Intel® Core™ i5-11400H Processor 2.7 GHz (12M Cache, up to 4.5 GHz, 6 Cores)\r\nRAM:	8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng:	512GB SSD M.2 PCIE G3X2, 1x slot M.2\r\nCard đồ họa:	NVIDIA® GeForce RTX™ 3050 Laptop GPU + Intel® UHD Graphics\r\nMàn hình:	15.6\" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 45% NTSC, 62.5% sRGB\r\nCổng giao tiếp:	1x RJ45 LAN port\r\n3x USB 3.2 Gen 1 Type-A\r\n1x Thunderbolt™ 4 support DisplayPort™\r\n1x 3.5mm Combo Audio Jack\"\r\n1 x HDMI 2.0B\r\nAudio:	DTS software\r\nBàn phím:	Backlit Chiclet Keyboard RGB\r\nChuẩn LAN:	10/100/1000/Gigabits Base T\r\nKết nối không dây:	Wifi 6 (802.11ax) / Bluetooth 5.2\r\nWebcam:	HD 720p\r\nHệ điều hành:	Windows 11 Home\r\nPin:	48WHrs, 3S1P, 3-cell Li-ion\r\nTrọng lượng:	2.3 kg\r\nMàu sắc:	Graphite Black\r\nKích thước:	35.9 x 25.6 x 2.28 ~ 2.43 cm', 2),
(23, 'Laptop Gaming Acer Nitro 5 AN515 57 71VV', '19400000', 'https://product.hstatic.net/1000026716/product/71vv_d5aa92f30bf04956a12a33079fe4359b.jpg', 'CPU	Intel® Core i7-11800H upto 4.60 GHz, 8 nhân 16 luồng\r\nRam	8GB DDR4 3200MHz (2 slot SO-DIMM socket, nâng cấp tối đa 32GB SDRAM)\r\nỔ cứng	512GB SSD M.2 PCIE (nâng cấp tối đa 1TB SSD PCIe Gen3, 8 Gb/s, NVMe và 2TB HDD 2.5-inch 5400 RPM) (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\r\nCard đồ họa	NVIDIA® GeForce RTX™ 3050 4GB GDDR6\r\nMàn hình	15.6 inch FHD(1920 x 1080) IPS 144Hz SlimBezel\r\nCổng giao tiếp	3x USB 3.1 Gen 1, 1x USB 3.2 Gen 2 Type C, 1x HDMI, RJ45\r\nỔ quang	None\r\nAudio	Waves MaxxAudio®, Acer TrueHarmony™\r\nBàn phím	RGB 4 vùng\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	10/100/1000/Gigabits Base T\r\nChuẩn WIFI	802.11AX (2x2)\r\nBluetooth	Bluetooth® 5.1\r\nWebcam	HD Webcam\r\nHệ điều hành	Windows 11 Home\r\nPin	4 Cell 57.5WHr\r\nTrọng lượng	2.20 kg\r\nMàu sắc	Đen\r\nKích thước	363.4 x 255 x 23.9 mm', 2),
(24, 'Laptop Lenovo Ideapad gaming 3 15ARH7', '29480000', 'https://product.hstatic.net/1000026716/product/7jvn_21c71c081350458186859bcb48d531d7.png', 'CPU	AMD Ryzen 5 6600H 3.3GHz up to 4.5GHz 16MB\r\nRAM	8GB (8x1) DDR5 4800MHz (2x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng	512GB SSD M.2 2242 PCIe 4.0x4 NVMe (Còn trống 1 khe SSD M.2 PCIE 2280)\r\nCard đồ họa	NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500MHz, TGP 85W\r\nMàn hình	15.6 inch FHD (1920x1080) IPS 250nits Anti-glare, 120Hz, 45% NTSC, Free-Sync, DC dimmer\r\nCổng kết nối	1x USB-C 3.2 Gen 2 (support data transfer, Power Delivery 3.0, and DisplayPort 1.4)\r\n2x USB 3.2 Gen 1\r\n1x HDMI 2.0\r\n1x RJ-45\r\n1x headphone / microphone combo jack (3.5mm)\r\n1x power connector\r\nBàn phím	Blue Backlit, English\r\nAudio	Stereo speakers, 2W x2, Nahimic Audio\r\nChuẩn Lan	100/1000M\r\nWifi + Bluetooth	802.11AX (2x2) + BT v5.2\r\nWebcam	HD 720p with Privacy Shutter\r\nHệ điều hành    	Windows 11 Home\r\nPin	3 Cell 60WHr\r\nTrọng lượng	2.3 kg\r\nMàu sắc	Glacier White\r\nKích thước    	359.6 x 266.4 x 21.8 (mm)', 2),
(25, 'Máy tính xách tay Acer Nitro 5 AN515 58 52SP', '24440000', 'https://product.hstatic.net/1000026716/product/52sp_015bf4d0a0524150b7c492067f1490fb.jpg', 'CPU	Intel Core i5-12500H 3.3GHz up to 4.5GHz 18MB\r\nRam	8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng	512GB SSD M.2 PCIE (nâng cấp tối đa 1TB SSD PCIe Gen3, 8 Gb/s, NVMe và 2TB HDD 2.5-inch 5400 RPM) (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\r\nCard đồ họa	NVIDIA® GeForce RTX™ 3050 4GB GDDR6\r\nMàn hình	15.6 inch FHD(1920 x 1080) IPS 144Hz SlimBezel\r\nCổng giao tiếp	\r\n1x USB 3.2 Gen 2 Type-C Ports (supporting: USB 3.2 Gen 2 (up to 10 Gbps); DisplayPort over USB-C; Thunderbolt 4; USB charging 5 V; 3 A; DC-in port 20 V; 65 W)\r\n1x USB 3.2 Gen 2 port featuring power-off USB charging\r\n1x USB 3.2 Gen 2 port\r\n1x USB 3.2 Gen 1 port\r\n1x Ethernet (RJ-45) port\r\n1x HDMI®2.1 port with HDCP support\r\n1x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1x DC-in jack for AC adapter\r\nỔ quang	None\r\nAudio	Waves MaxxAudio®, Acer TrueHarmony™\r\nBàn phím	RGB 4 vùng\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	KillerTM Ethernet E2600\r\nChuẩn WIFI	KillerTM Wi-Fi 6 AX 1650i (2x2)\r\nBluetooth	Bluetooth® 5.1\r\nWebcam	HD Webcam\r\nHệ điều hành	Windows 11 Home\r\nPin	4 Cell 57.5WHr\r\nTrọng lượng	2.5 kg\r\nMàu sắc	Obsidian Black\r\nKích thước	360.4 x 271.09 x 25.9 mm', 2),
(26, 'Laptop Asus Vivobook 14X M1403QA', '25000000', 'https://product.hstatic.net/1000026716/product/r5_e589aaef1feb4bafa00f59922ab552ad.png', 'CPU	AMD Ryzen 5 5600H 3.3GHz up to 4.2GHz 16MB\r\nRAM	8GB Onboard DDR4 3200MHz (1x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng	512GB M.2 NVMe™ PCIe® 3.0 SSD (1 slot, support M.2 2280 PCIe 3.0x4)\r\nVGA	AMD Radeon™ Graphics\r\nMàn hình	14\" WUXGA (1920 x 1200) 16:10 aspect ratio, LED Backlit, IPS-level Panel, 300 Nits, 45% NTSC color gamut, Anti-glare display, Screen-to-body ratio: 86%\r\nCổng giao tiếp	1x USB 3.2 Gen 1 Type-C\r\n2x USB 3.2 Gen 1 Type-A\r\n1x USB 2.0 Type-A\r\n1x HDMI 1.4\r\n1x 3.5mm Combo Audio Jack\r\n1x DC-in\r\nBàn phím	None\r\nBảo mật	Vân tay\r\nAudio	SonicMaster\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	None\r\nChuẩn WIFI	Wi-Fi 6(802.11ax) (Dual band) 2*2\r\nBluetooth	v5.1\r\nWebcam	720p HD camera With privacy shutter\r\nHệ điều hành	Windows 11 Home\r\nPin	3 Cells 50WHrs\r\nTrọng lượng	1.6 kg\r\nMàu sắc	Quiet Blue\r\nKích thước	31.71 x 22.20 x 1.99 cm', 2),
(27, 'Laptop Acer Aspire 3 A315 58 53S6', '27009000', 'https://product.hstatic.net/1000026716/product/gearvn-laptop-acer-aspire-3-a315-58-53s6-1_9b8b6a488ff04a29a4f06fb1964ad202.png', 'CPU	Intel Core i5-1135G7 2.4GHz up to 4.2GHz 8MB\r\nRAM	8GB (4GB Onboard + 4GB) DDR4 2400MHz (1x SO-DIMM socket, up to 12GB SDRAM)\r\nỔ cứng	256GB PCIe NVMe SSD (Còn trống 1 khe 2.5\" SATA)\r\nCard đồ họa	Intel Iris Xe Graphics \r\nMàn hình	15.6\" FHD (1920 x 1080), Acer ComfyView LED-backlit TFT LCD\r\nCổng giao tiếp	2x USB 3.2 Gen 1 Type-A \r\n1x USB 2.0\r\n1x HDMI®2.0 port with HDCP support\r\n1x RJ45\r\n1x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1x DC-in jack for AC adapter\r\nBàn phím	Không LED\r\nAudio	Realtek High Definition\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	Gigabit Ethernet\r\nWifi + Bluetooth	802.11a/b/g/n/ac + BT v5.0\r\nWebcam	720p HD audio/video recording\r\nHệ điều hành	Windows 11 Home\r\nPin	2 Cell 36.7 Whr\r\nTrọng lượng	1.7 kg\r\nMàu sắc	Safari Gold\r\nKích thước	363 x 238.4 x 19.9 (mm)', 2),
(28, 'Laptop ASUS VivoBook 15X OLED M1503QA ', '31990000', 'https://product.hstatic.net/1000026716/product/gearvn-laptop-asus-vivobook-15x-oled-m1503qa-l1028w-1_91a88cafd2364235867ff97978eb0f7f.png', 'CPU	AMD Ryzen 5 5600H 3.3GHz up to 4.2GHz 16MB\r\nRAM	8GB (Onboard) DDR4 3200MHz (Còn 1 slot SO-DIMM, nâng cấp tối đa 16GB)\r\nỔ cứng	512GB SSD M.2 NVMe PCIe 3.0 (1 Slot)\r\nVGA	AMD Radeon Graphics\r\nMàn hình	15.6 inch FHD (1920 x 1080) OLED 16:9, 600nits peak brightness, 100% DCI-P3, VESA CERTIFIED Display HDR True Black 600, PANTONE Validated, Glossy display, Screen-to-body ratio: 86 ％\r\nCổng giao tiếp	\r\n1 x USB 3.2 Gen 1 Type-C\r\n2 x USB 3.2 Gen 1 Type-A\r\n1 x USB 2.0 Type-A\r\n1 x HDMI 1.4\r\n1 x 3.5mm Combo Audio Jack\r\n1 x DC-in\r\nBàn phím	None\r\nBảo mật	Fingerprint sensor intergrated with Touchpad\r\nAudio	SonicMaster\r\nĐọc thẻ nhớ	None\r\nChuẩn LAN	None\r\nChuẩn WIFI	Wi-Fi 6(802.11ax) (Dual band) 2*2\r\nBluetooth	v5.1\r\nWebcam	720p HD camera With privacy shutter\r\nHệ điều hành	Windows 11 Home\r\nPin	70WHrs, 3S1P, 3-cell Li-ion\r\nTrọng lượng	1.70 kg\r\nMàu sắc	Quiet Blue\r\nKích thước	35.68 x 22.76 x 1.99 ~ 1.99 cm', 2),
(29, 'Laptop Dell Vostro 3420 70283385', '10000000', 'https://product.hstatic.net/1000026716/product/gearvn-laptop-dell-vostro-3420-70283385-1_0e507c763bef409c86f34b2e8481096a.png', 'CPU	Intel Core i5-1135G7 2.4GHz up to 4.2GHz 8MB\r\nRAM	8GB (1x8) DDR4 2666MHz (2x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng	512GB SSD M.2 PCI-E (1 slot)\r\nCard đồ họa	Intel Iris Xe Graphics\r\nMàn hình	14\'\' FHD (1920 x 1080), 60Hz, Non-Touch, AG, Wide Viewing Angle, LED-Backlit, Narrow Border\r\nCổng giao tiếp 	\r\n1x USB 3.2 Gen 1 Type-C (with DisplayPort®)\r\n1x USB 3.2 Gen 1 Type-A\r\n1x USB 2.0\r\n1x HDMI 1.4\r\n1x Headset Jack\r\n1 Flip-Down RJ-45 port 10/100/1000 Mbps\r\n1x DC in\r\nBàn phím	Không có dãy phím Numpad, không hỗ trợ đèn LED\r\nKhe đọc thẻ nhớ	SD Media Card Reader\r\nAudio	2x 2W Realtek\r\nLan	100/1000 Mbps\r\nWifi + Bluetooth	802.11 AC + v5.0\r\nWebcam	HD Webcam\r\nHệ điều hành	Windows 11 Home + Office Home & Student\r\nBảo mật	Vân tay\r\nPin	3 Cell 41WHr\r\nTrọng lượng:	1.49 kg\r\nMàu sắc	Carbon Black\r\nKích thước    	321.27 x 220.26 x 18.62~23.02 mm', 2),
(30, 'iPhone 11 64GB I Chính hãng VN/A\r\n', '10790000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_11_white_4_.png', 'Vi xử lý & đồ họa\r\n\r\nLoại CPU\r\n\r\nHexa-core\r\nChipset\r\n\r\nA13 Bionic\r\nGPU\r\n\r\nApple GPU\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n6.1 inches\r\nĐộ phân giải màn hình\r\n\r\n1792 x 828 pixel\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\nTính năng màn hình\r\n\r\nTrue-tone\r\nTần số quét\r\n\r\n60Hz\r\nGiao tiếp & kết nối\r\n\r\nHệ điều hành\r\n\r\niOS 13 hoặc cao hơn (Tùy vào phiên bản phát hành)\r\nWi-Fi\r\n\r\n802.11ax Wi‑Fi 6 with 2x2 MIMO\r\nBluetooth\r\n\r\n5.0\r\nThẻ SIM\r\n\r\nNano-SIM + eSIM\r\nHồng ngoại\r\n\r\nKhông\r\nJack tai nghe 3.5\r\n\r\nKhông\r\nCông nghệ NFC\r\n\r\nCó\r\nHỗ trợ mạng\r\n\r\n4G\r\nGPS\r\n\r\nGPS/GNSS\r\nThông số kỹ thuật\r\n\r\nPin\r\n\r\n3110 mAh\r\nThiết kế & Trọng lượng\r\n\r\nKích thước\r\n\r\n150.9mm - 75.7mm - 8.3mm\r\nTrọng lượng\r\n\r\n194 g\r\nChất liệu mặt lưng\r\n\r\nKính\r\nChất liệu khung viền\r\n\r\nKim loại\r\nCamera sau\r\n\r\nCamera sau\r\n\r\nCamera kép 12MP:\r\n- Camera góc rộng: ƒ/1.8 aperture\r\n- Camera siêu rộng: ƒ/2.4 aperture\r\nTính năng camera\r\n\r\nRetina Flash\r\nNhãn dán (AR Stickers)\r\nBan đêm (Night Mode)\r\nChạm lấy nét\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide) HDR Nhận diện khuôn mặt\r\nQuay chậm (Slow Motion)\r\nToàn cảnh (Panorama)\r\nTrôi nhanh thời gian (Time L\r\nQuay video\r\n\r\nQuay video 4K ở tốc độ 24 fps, 30 fps hoặc 60 fps\r\nCamera trước\r\n\r\nCamera trước\r\n\r\n12 MP, ƒ/2.2 aperture\r\nQuay video trước\r\n\r\n4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS\r\nRAM & lưu trữ\r\n\r\nDung lượng RAM\r\n\r\n4 GB\r\nBộ nhớ trong\r\n\r\n64 GB\r\nKhe cắm thẻ nhớ\r\n\r\nKhông\r\nPin & công nghệ sạc\r\n\r\nCông nghệ sạc\r\n\r\nSạc nhanh 18W\r\nPower Delivery 2.0\r\nCổng sạc\r\n\r\nLightning\r\nThông số khác\r\n\r\nChỉ số kháng nước, bụi\r\n\r\nIP68\r\nKiểu màn hình\r\n\r\nTai thỏ\r\nCảm biến\r\n\r\nFaceID, Con quay hồi chuyển, Gia tốc kế, Cảm biến tiệm cận, Cảm biến ánh sáng xung quanh\r\nTiện ích khác\r\n\r\nCảm biến vân tay\r\n\r\nKhông\r\nCác loại cảm biến\r\n\r\nCảm biến gia tốc, Cảm biến tiệm cận, Cảm biến ánh sáng, La bàn, Con quay hồi chuyển, Cảm biến áp kế\r\nTính năng đặc biệt\r\n\r\nSạc không dây', 1),
(31, 'Samsung Galaxy A73 5G - Chính hãng\r\n', '10090000', 'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/04/10/image-removebg-preview-2.png', 'Dung lượng pin	Li-Ion 5000 mAh\r\nBộ nhớ & Lưu trữ\r\nRAM	8GB\r\nBộ nhớ trong (ROM)	128GB\r\nKết nối\r\nBluetooth	5.0, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, GALILEO, BDS\r\nSố khe sim	2 Nano SIM (SIM 2 chung khe thẻ nhớ)\r\nWifi	\r\nDual-band (2.4 GHz/5 GHz)\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\nWi-Fi Direct\r\nWi-Fi hotspot\r\nJack tai nghe	Type-C\r\nCổng kết nối/sạc	Type-C\r\nKết nối khác:	NFC\r\nHệ điều hành & CPU\r\nChip xử lý (CPU)	Snapdragon 778G 5G 8 nhân\r\nTốc độ CPU	4 nhân 2.4 GHz & 4 nhân 1.8 GHz\r\nChip đồ họa (GPU)	Adreno 642L\r\nMàn hình\r\nĐộ phân giải:	Full HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:	6.7\" - Tần số quét 120 Hz\r\nCông nghệ màn hình:	Super AMOLED Plus\r\nCamera sau\r\nĐộ phân giải	Chính 108 MP & Phụ 12 MP, 5 MP, 5 MP\r\nQuay phim	\r\n4K 2160p@30fps\r\nFullHD 1080p@30fps\r\nFullHD 1080p@60fps\r\nHD 720p@240fps\r\nTính năng	\r\nBan đêm (Night Mode)\r\nBộ lọc màu\r\nChuyên nghiệp (Pro)\r\nChạm lấy nét\r\nChống rung quang học (OIS)\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide)\r\nHDR\r\nLàm đẹp\r\nLấy nét theo pha (PDAF)\r\nNhận diện khuôn mặt\r\nQuay chậm (Slow Motion)\r\nQuay Siêu chậm (Super Slow Motion)\r\nSiêu cận (Macro)\r\nToàn cảnh (Panorama)\r\nTrôi nhanh thời gian (Time Lapse)\r\nTự động lấy nét (AF)\r\nXóa phông\r\nZoom kỹ thuật số\r\nCamera trước\r\nĐộ phân giải	32 MP\r\nTính năng	\r\nBộ lọc màu\r\nChụp đêm\r\nGóc rộng (Wide)\r\nHDR\r\nLive Photo\r\nLàm đẹp\r\nNhận diện khuôn mặt\r\nQuay video Full HD\r\nXóa phông\r\nTiện ích\r\nGhi âm	Ghi âm cuộc gọi , Ghi âm mặc định\r\nTính năng đặc biệt	\r\nChạm 2 lần tắt/sáng màn hình\r\nChế độ trẻ em (Samsung Kids)\r\nChế độ đơn giản (Giao diện đơn giản)\r\nKhông gian thứ hai (Thư mục bảo mật)\r\nMở rộng bộ nhớ RAM\r\nSamsung Pay\r\nSmart Switch (ứng dụng chuyển đổi dữ liệu)\r\nTrợ lý ảo Samsung Bixby\r\nTối ưu game (Game Booster)\r\nÂm thanh Dolby Atmos\r\nĐa cửa sổ (chia đôi màn hình)\r\nỨng dụng kép (Dual Messenger)\r\nKháng nước, kháng bụi IP67\r\nBảo mật nâng cao	Mở khoá vân tay dưới màn hình\r\nXem phim	\r\n3GP\r\nAVI\r\nMP4\r\nWMV\r\nNghe nhạc	\r\nAAC\r\nAMR\r\nFLAC\r\nMidi\r\nMP3\r\nOGG\r\nThông tin chung\r\nKích thước, khối lượng:	Dài 163.7 mm - Ngang 76.1 mm - Dày 7.6 mm - Nặng 181 g', 1),
(32, 'Điện thoại di động OPPO Reno6 Z 5G - Chính Hãng', '12900000', 'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/07/07/reno6-z.png', 'Công nghệ màn hình:: AMOLED\r\nĐộ phân giải:: Full HD+ (1080 x 2400 Pixels)\r\nĐộ phân giải: Chính 64 MP & Phụ 8 MP, 2 MP, 32 MP\r\nHệ điều hành: Android 11\r\nChip xử lý (CPU): MediaTek Dimensity 800U 5G 8 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 8 GB\r\nMạng di động: Hỗ trợ 5G\r\nSố khe sim: 2 Nano SIM\r\nDung lượng pin: 4310 mAh', 1),
(33, 'iPhone 12 Pro Max 128GB I Chính hãng VN/A', '26900000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_12_pro_max_white_1.png', 'Loại CPU\r\n\r\nHexa-core\r\nKích thước màn hình\r\n\r\n6.7 inches\r\nĐộ phân giải màn hình\r\n\r\n1284 x 2778 pixels\r\nHệ điều hành\r\n\r\niOS 14.1 hoặc cao hơn (Tùy vào phiên bản phát hành)\r\nPin\r\n\r\nLi-Ion, sạc nhanh 20W, sạc không dây 15W, USB Power Delivery 2.0\r\nTrọng lượng\r\n\r\n228\r\nCông nghệ màn hình\r\n\r\nSuper Retina XDR OLED, HDR10, Dolby Vision, Wide color gamut, True-tone\r\nBluetooth\r\n\r\n5.0, A2DP, LE\r\nCông nghệ màn hình\r\n\r\nOLED\r\nCamera sau\r\n\r\nCamera chính: 12 MP, f/1.6, 26mm, 1.4µm, dual pixel PDAF, OIS\r\nCamera tele: 12 MP, f/2.0, 52mm, 1/3.4\", 1.0µm, PDAF, OIS, 2x optical zoom\r\nCamera góc siêu rộng: 12 MP, f/2.4, 120˚, 13mm, 1/3.6\"\r\nCảm biến: TOF 3D LiDAR scanner\r\nCamera trước\r\n\r\n12 MP, f/2.2, 23mm (wide), 1/3.6\"\r\nSL 3D, (depth/biometrics sensor)\r\nDung lượng RAM\r\n\r\n6 GB\r\nBộ nhớ trong\r\n\r\n128 GB\r\nThẻ SIM\r\n\r\n2 SIM (nano‑SIM và eSIM)\r\nTính năng màn hình\r\n\r\nHDR10\r\nDolby Vision\r\nTrue-tone\r\nĐộ sáng 800 nits\r\nTần số quét\r\n\r\n60Hz\r\nChipset\r\n\r\nApple A14 Bionic (5 nm)\r\nCảm biến\r\n\r\nFace ID, cảm biến gia tốc, cảm biến tiệm cận, con quay hồi chuyển, cảm biên sáng', 1),
(34, 'Samsung Galaxy S22 Ultra (8GB - 128GB)', '21090000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s908_galaxys22ultra_front_burgundy_211119.jpg', 'Loại CPU\r\n\r\nOcta-core (1x3.00 GHz Cortex-X2 & 3x2.50 GHz Cortex-A710 & 4x1.80 GHz Cortex-A510)\r\nKích thước màn hình\r\n\r\n6.8 inches\r\nĐộ phân giải màn hình\r\n\r\n1440 x 3088 pixels (QHD+)\r\nHệ điều hành\r\n\r\nAndroid 12, One UI 4.1\r\nPin\r\n\r\nLi-Ion 5000 mAh\r\nTrọng lượng\r\n\r\n229 g\r\nBluetooth\r\n\r\n5.2, A2DP, LE\r\nCông nghệ màn hình\r\n\r\nDynamic AMOLED 2X\r\nCamera sau\r\n\r\n108 MP, f/1.8 góc rộng\r\n10 MP, f/4.9\r\n10 MP, f/2.4\r\n12 MP, f/2.2 góc siêu rộng\r\nCamera trước\r\n\r\n40 MP, f/2.2\r\nDung lượng RAM\r\n\r\n8 GB\r\nBộ nhớ trong\r\n\r\n128 GB\r\nThẻ SIM\r\n\r\n2 Nano SIM hoặc 1 Nano + 1 eSIM\r\nTính năng màn hình\r\n\r\nTần số quét 120Hz\r\nCông nghệ HDR10+\r\nTần số quét\r\n\r\n120Hz\r\nChipset\r\n\r\nQualcomm Snapdragon 8 Gen 1 (4 nm)', 1),
(35, 'iPhone 11 64GB I Chính hãng VN/A\r\n', '10790000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_11_white_4_.png', 'Vi xử lý & đồ họa\r\n\r\nLoại CPU\r\n\r\nHexa-core\r\nChipset\r\n\r\nA13 Bionic\r\nGPU\r\n\r\nApple GPU\r\nMàn hình\r\n\r\nKích thước màn hình\r\n\r\n6.1 inches\r\nĐộ phân giải màn hình\r\n\r\n1792 x 828 pixel\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\nTính năng màn hình\r\n\r\nTrue-tone\r\nTần số quét\r\n\r\n60Hz\r\nGiao tiếp & kết nối\r\n\r\nHệ điều hành\r\n\r\niOS 13 hoặc cao hơn (Tùy vào phiên bản phát hành)\r\nWi-Fi\r\n\r\n802.11ax Wi‑Fi 6 with 2x2 MIMO\r\nBluetooth\r\n\r\n5.0\r\nThẻ SIM\r\n\r\nNano-SIM + eSIM\r\nHồng ngoại\r\n\r\nKhông\r\nJack tai nghe 3.5\r\n\r\nKhông\r\nCông nghệ NFC\r\n\r\nCó\r\nHỗ trợ mạng\r\n\r\n4G\r\nGPS\r\n\r\nGPS/GNSS\r\nThông số kỹ thuật\r\n\r\nPin\r\n\r\n3110 mAh\r\nThiết kế & Trọng lượng\r\n\r\nKích thước\r\n\r\n150.9mm - 75.7mm - 8.3mm\r\nTrọng lượng\r\n\r\n194 g\r\nChất liệu mặt lưng\r\n\r\nKính\r\nChất liệu khung viền\r\n\r\nKim loại\r\nCamera sau\r\n\r\nCamera sau\r\n\r\nCamera kép 12MP:\r\n- Camera góc rộng: ƒ/1.8 aperture\r\n- Camera siêu rộng: ƒ/2.4 aperture\r\nTính năng camera\r\n\r\nRetina Flash\r\nNhãn dán (AR Stickers)\r\nBan đêm (Night Mode)\r\nChạm lấy nét\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide) HDR Nhận diện khuôn mặt\r\nQuay chậm (Slow Motion)\r\nToàn cảnh (Panorama)\r\nTrôi nhanh thời gian (Time L\r\nQuay video\r\n\r\nQuay video 4K ở tốc độ 24 fps, 30 fps hoặc 60 fps\r\nCamera trước\r\n\r\nCamera trước\r\n\r\n12 MP, ƒ/2.2 aperture\r\nQuay video trước\r\n\r\n4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS\r\nRAM & lưu trữ\r\n\r\nDung lượng RAM\r\n\r\n4 GB\r\nBộ nhớ trong\r\n\r\n64 GB\r\nKhe cắm thẻ nhớ\r\n\r\nKhông\r\nPin & công nghệ sạc\r\n\r\nCông nghệ sạc\r\n\r\nSạc nhanh 18W\r\nPower Delivery 2.0\r\nCổng sạc\r\n\r\nLightning\r\nThông số khác\r\n\r\nChỉ số kháng nước, bụi\r\n\r\nIP68\r\nKiểu màn hình\r\n\r\nTai thỏ\r\nCảm biến\r\n\r\nFaceID, Con quay hồi chuyển, Gia tốc kế, Cảm biến tiệm cận, Cảm biến ánh sáng xung quanh\r\nTiện ích khác\r\n\r\nCảm biến vân tay\r\n\r\nKhông\r\nCác loại cảm biến\r\n\r\nCảm biến gia tốc, Cảm biến tiệm cận, Cảm biến ánh sáng, La bàn, Con quay hồi chuyển, Cảm biến áp kế\r\nTính năng đặc biệt\r\n\r\nSạc không dây', 1),
(36, 'Samsung Galaxy A73 5G - Chính hãng\r\n', '10090000', 'https://cdn.hoanghamobile.com/i/preview/Uploads/2022/04/10/image-removebg-preview-2.png', 'Dung lượng pin	Li-Ion 5000 mAh\r\nBộ nhớ & Lưu trữ\r\nRAM	8GB\r\nBộ nhớ trong (ROM)	128GB\r\nKết nối\r\nBluetooth	5.0, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, GALILEO, BDS\r\nSố khe sim	2 Nano SIM (SIM 2 chung khe thẻ nhớ)\r\nWifi	\r\nDual-band (2.4 GHz/5 GHz)\r\nWi-Fi 802.11 a/b/g/n/ac/ax\r\nWi-Fi Direct\r\nWi-Fi hotspot\r\nJack tai nghe	Type-C\r\nCổng kết nối/sạc	Type-C\r\nKết nối khác:	NFC\r\nHệ điều hành & CPU\r\nChip xử lý (CPU)	Snapdragon 778G 5G 8 nhân\r\nTốc độ CPU	4 nhân 2.4 GHz & 4 nhân 1.8 GHz\r\nChip đồ họa (GPU)	Adreno 642L\r\nMàn hình\r\nĐộ phân giải:	Full HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng:	6.7\" - Tần số quét 120 Hz\r\nCông nghệ màn hình:	Super AMOLED Plus\r\nCamera sau\r\nĐộ phân giải	Chính 108 MP & Phụ 12 MP, 5 MP, 5 MP\r\nQuay phim	\r\n4K 2160p@30fps\r\nFullHD 1080p@30fps\r\nFullHD 1080p@60fps\r\nHD 720p@240fps\r\nTính năng	\r\nBan đêm (Night Mode)\r\nBộ lọc màu\r\nChuyên nghiệp (Pro)\r\nChạm lấy nét\r\nChống rung quang học (OIS)\r\nGóc rộng (Wide)\r\nGóc siêu rộng (Ultrawide)\r\nHDR\r\nLàm đẹp\r\nLấy nét theo pha (PDAF)\r\nNhận diện khuôn mặt\r\nQuay chậm (Slow Motion)\r\nQuay Siêu chậm (Super Slow Motion)\r\nSiêu cận (Macro)\r\nToàn cảnh (Panorama)\r\nTrôi nhanh thời gian (Time Lapse)\r\nTự động lấy nét (AF)\r\nXóa phông\r\nZoom kỹ thuật số\r\nCamera trước\r\nĐộ phân giải	32 MP\r\nTính năng	\r\nBộ lọc màu\r\nChụp đêm\r\nGóc rộng (Wide)\r\nHDR\r\nLive Photo\r\nLàm đẹp\r\nNhận diện khuôn mặt\r\nQuay video Full HD\r\nXóa phông\r\nTiện ích\r\nGhi âm	Ghi âm cuộc gọi , Ghi âm mặc định\r\nTính năng đặc biệt	\r\nChạm 2 lần tắt/sáng màn hình\r\nChế độ trẻ em (Samsung Kids)\r\nChế độ đơn giản (Giao diện đơn giản)\r\nKhông gian thứ hai (Thư mục bảo mật)\r\nMở rộng bộ nhớ RAM\r\nSamsung Pay\r\nSmart Switch (ứng dụng chuyển đổi dữ liệu)\r\nTrợ lý ảo Samsung Bixby\r\nTối ưu game (Game Booster)\r\nÂm thanh Dolby Atmos\r\nĐa cửa sổ (chia đôi màn hình)\r\nỨng dụng kép (Dual Messenger)\r\nKháng nước, kháng bụi IP67\r\nBảo mật nâng cao	Mở khoá vân tay dưới màn hình\r\nXem phim	\r\n3GP\r\nAVI\r\nMP4\r\nWMV\r\nNghe nhạc	\r\nAAC\r\nAMR\r\nFLAC\r\nMidi\r\nMP3\r\nOGG\r\nThông tin chung\r\nKích thước, khối lượng:	Dài 163.7 mm - Ngang 76.1 mm - Dày 7.6 mm - Nặng 181 g', 1),
(37, 'Điện thoại di động OPPO Reno6 Z 5G - Chính Hãng', '12900000', 'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/07/07/reno6-z.png', 'Công nghệ màn hình:: AMOLED\r\nĐộ phân giải:: Full HD+ (1080 x 2400 Pixels)\r\nĐộ phân giải: Chính 64 MP & Phụ 8 MP, 2 MP, 32 MP\r\nHệ điều hành: Android 11\r\nChip xử lý (CPU): MediaTek Dimensity 800U 5G 8 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 8 GB\r\nMạng di động: Hỗ trợ 5G\r\nSố khe sim: 2 Nano SIM\r\nDung lượng pin: 4310 mAh', 1),
(38, 'Samsung Galaxy S22 (8GB - 128GB)', '16190000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s901_galaxys22_front_pinkgold_211122.jpg', 'Loại CPU  1x3.00 GHz Cortex-X2 ', 1),
(39, 'Samsung Galaxy S22 (8GB - 128GB)', '16190000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s901_galaxys22_front_pinkgold_211122.jpg', 'Loại CPU  1x3.00 GHz Cortex-X2', 1),
(49, 'Samsung Galaxy S22 (8GB - 128GB) Laptop', '16190000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s901_galaxys22_front_pinkgold_211122.jpg', 'Loại CPU  1x3.00 GHz Cortex-X2', 2),
(52, 'Samsung Galaxy S22 (8GB - 128GB) Laptop', '16190000', 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s901_galaxys22_front_pinkgold_211122.jpg', 'Loại CPU  1x3.00 GHz Cortex-X2', 2),
(68, 'id68', '11', '11', '11', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`) VALUES
(5, 'sinhle.dev@gmail.com', '1234', 'Lê Xuân Sinh', '0973432518'),
(6, 'lexuansinh', '1234', 'Lê Xuân Sinh', '0973432518'),
(7, 'sinhle@gmail.com', '123', '0973432518', '0973432518'),
(8, 'sinhle1@gmail.com', '123', '123', '123'),
(9, 'anhsinhdz2001@gmail.com', '222222', '123456', '123456'),
(10, 'sinh2001@gmail.com', '123', '123', '123'),
(11, 'jambovelinhds@gmail.com', '6789', '12345', '12345'),
(12, 'lesinh@gmail.com', '123', '123', '123'),
(13, 'jambovelinhds241@gmail.com', '123456', '0867183836', '0867183836');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sanphammoi`
--
ALTER TABLE `sanphammoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
