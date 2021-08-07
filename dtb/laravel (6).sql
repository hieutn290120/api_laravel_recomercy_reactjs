-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 07, 2021 lúc 10:38 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacus`
--

CREATE TABLE `contacus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_25_091133_create_table_product', 2),
(5, '2021_03_26_080013_inser_column_to_table_product', 3),
(6, '2021_03_26_142754_create_table__cart', 4),
(7, '2021_03_28_045522_insert_column_in_table_cart', 4),
(8, '2021_03_29_075801_insert_column_to_tablecart', 5),
(9, '2021_04_01_072402_create_table_product_new', 6),
(10, '2021_04_01_083224_insert_column_in_table__product', 7),
(11, '2021_04_01_095055_insert_column_into_table_user', 8),
(12, '2021_04_02_065903_insert_column_into_table_user_delete_at', 9),
(13, '2021_04_03_081206_insert_column_to_table__product', 10),
(14, '2021_04_10_031334_create_table_vot_rate', 11),
(15, '2021_04_12_032543_inser_column_table_cart', 12),
(16, '2021_04_15_063035_inser_table_user_column__role', 13),
(17, '2021_04_15_063159_create_table__role', 13),
(18, '2021_04_19_025036_create_tabe__contact_us', 14),
(19, '2021_04_19_025632_insert_column_intable_contactus', 15),
(20, '2021_05_04_012034_insert_column_table_user_', 15),
(21, '2021_05_10_021810_create_table_resetpathpass', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `categories` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` smallint(6) DEFAULT NULL,
  `made` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `user_id`, `name`, `price`, `categories`, `description`, `stock_status`, `discount`, `made`, `created_at`, `updated_at`, `deleted_at`, `avatar`) VALUES
(17, 47, 'Module Âm Thanh - M1', 230, 'Module', 'Module Am Thanh', 'In Stock', 10, 'Viet Nam', '2021-04-16 21:22:59', '2021-04-16 21:23:38', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633418/diqfkmogj6s1ys5hcjo8.jpg'),
(18, 47, 'Module Âm Thanh  - M2', 240, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:24:25', '2021-04-16 21:24:25', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633465/yc7bcn07tu2vxvbuooqo.jpg'),
(19, 47, 'Module Âm Thanh  - M3', 250, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:24:39', '2021-04-16 21:24:39', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633479/vpd43rt8uhwhvxpwt6vh.jpg'),
(20, 47, 'Module Âm Thanh - M3', 260, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:25:26', '2021-04-16 21:25:26', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633526/g1ygrpcnuenfxsyw4lzy.jpg'),
(21, 47, 'Module Âm Thanh - M4', 270, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:25:43', '2021-04-16 21:25:43', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633542/zqqt898zq02yozkneysm.jpg'),
(22, 47, 'Module Âm Thanh - M5', 280, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:25:53', '2021-04-16 21:25:53', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633553/ot1qura0b1pvb4yajbg2.jpg'),
(23, 47, 'Module Âm Thanh - M6', 290, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:26:09', '2021-04-16 21:26:09', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633569/cnzcdwaotwyozq2bidjv.jpg'),
(24, 47, 'Module Âm Thanh - M7', 300, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:26:20', '2021-04-16 21:26:20', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633579/yo8szw1yvexxfsqwsttn.jpg'),
(25, 47, 'Module Âm Thanh - M8', 310, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:26:29', '2021-04-16 21:26:29', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633589/ubr6rkvhrxavzmyag25b.jpg'),
(26, 47, 'Module Âm Thanh - M9', 320, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:26:39', '2021-04-16 21:26:39', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633599/zyhvl8azg4xrwwrumg63.jpg'),
(27, 47, 'Module Âm Thanh - M10', 330, 'Module', 'Module Am Thanh', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:26:58', '2021-04-16 21:26:58', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633618/jqwg483qjkkilkfcvypg.jpg'),
(28, 47, 'Module Cảm Biến - M1', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:27:44', '2021-04-16 21:27:44', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633664/yk9pzjcoogntupbfyy41.jpg'),
(29, 47, 'Module Cảm Biến - M2', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:27:52', '2021-04-16 21:27:52', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633672/xc8rzrfrodmbfrhu6coo.jpg'),
(30, 47, 'Module Cảm Biến - M3', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:28:00', '2021-04-16 21:28:00', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633680/b4vkw2n8hacsfwubx5kx.jpg'),
(31, 47, 'Module Cảm Biến - M4', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:28:06', '2021-04-16 21:28:06', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633686/zyocnmlzzpugflhkqrti.jpg'),
(32, 47, 'Module Cảm Biến - M5', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:28:13', '2021-04-16 21:28:13', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633693/s3za7koochlncjqbe8ye.jpg'),
(33, 47, 'Module Cảm Biến - M6', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:28:20', '2021-04-16 21:28:20', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633700/w6secnxtk2js2gbutk99.jpg'),
(34, 47, 'Module Cảm Biến - M7', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:28:27', '2021-04-16 21:28:27', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633707/zvogqt4yuad9ghe3agbe.jpg'),
(35, 47, 'Module Cảm Biến - M8', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:28:34', '2021-04-16 21:28:34', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633714/d5kitsvkciwepkos1pmh.jpg'),
(36, 47, 'Module Cảm Biến - M9', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:28:42', '2021-04-16 21:28:42', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633721/kmyhtufla55jxwlisudy.jpg'),
(37, 47, 'Module Cảm Biến - M10', 200, 'Module', 'Module Cam Bien', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:28:47', '2021-04-16 21:28:47', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633727/oggj4jmw66ylx6snobaj.jpg'),
(38, 47, 'Module Mạch Nạp  - M1', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:29:12', '2021-04-16 21:29:12', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633752/nn42f2zchplf2s8zaxrm.jpg'),
(39, 47, 'Module Mạch Nạp  - M2', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:29:20', '2021-04-16 21:29:20', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633760/bvdozb78fqm8zinsskiu.jpg'),
(40, 47, 'Module Mạch Nạp  - M3', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:29:26', '2021-04-16 21:29:26', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633766/nqbh7jepqn67wqos3yr4.jpg'),
(41, 47, 'Module Mạch Nạp  - M4', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:29:32', '2021-04-16 21:29:32', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633772/bwlym87pqthg84ekpm4c.jpg'),
(42, 47, 'Module Mạch Nạp  - M5', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:29:39', '2021-04-16 21:29:39', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633779/fnw5b5g4wfypzefloqv4.jpg'),
(43, 47, 'Module Mạch Nạp  - M6', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:29:47', '2021-04-16 21:29:47', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633787/avyggxid3agedody8zxg.webp'),
(44, 47, 'Module Mạch Nạp  - M7', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:29:53', '2021-04-16 21:29:53', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633793/dd6b7rmgkgfk2mhbofjr.jpg'),
(45, 47, 'Module Mạch Nạp  - M8', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:30:01', '2021-04-16 21:30:01', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633801/awjmgepzwpdvfpojtauo.jpg'),
(46, 47, 'Module Mạch Nạp  - M9', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:30:08', '2021-04-16 21:30:08', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633808/z95xlyy7tgijbr5q3wpk.png'),
(47, 47, 'Module Mạch Nạp  - M10', 200, 'Module', 'Module Mach Nap', 'In Stock', 0, 'Viet Nam', '2021-04-16 21:30:13', '2021-04-16 21:30:13', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618633813/tdevfqujjbt4qjm6dxin.jpg'),
(48, 47, 'Module Nguồn - M1', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:00', '2021-04-18 18:55:00', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797299/xniuchpdaoyhhxdx7wb4.jpg'),
(49, 47, 'Module Nguồn - M2', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:08', '2021-04-18 18:55:08', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797308/pxp0g1enlpfxxdcohbr0.jpg'),
(50, 47, 'Module Nguồn - M3', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:17', '2021-04-18 18:55:17', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797316/jy4vt70bwwp7aedtqgeo.jpg'),
(51, 47, 'Module Nguồn - M4', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:23', '2021-04-18 18:55:23', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797322/jelodiczakz2gt6tzun5.jpg'),
(52, 47, 'Module Nguồn - M5', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:30', '2021-04-18 18:55:30', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797329/l0c43l6vlqxfugwqef9p.jpg'),
(53, 47, 'Module Nguồn - M6', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:35', '2021-04-18 18:55:35', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797335/idouzjj3ld13q2zt1syv.jpg'),
(54, 47, 'Module Nguồn - M7', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:46', '2021-04-18 18:55:46', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797345/fj1kqfr3ooehmr6kd6xm.png'),
(55, 47, 'Module Nguồn - M8', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:52', '2021-04-18 18:55:52', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797351/nvqcafkz76rorqnmt37o.jpg'),
(56, 47, 'Module Nguồn - M9', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:55:58', '2021-04-18 18:55:58', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797357/qefu7bbehia4umzww3qa.jpg'),
(57, 47, 'Module Nguồn - M10', 200, 'Module', 'Module Nguon', 'In Stock', 0, 'Viet Nam', '2021-04-18 18:56:06', '2021-04-18 18:56:06', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1618797365/ie1rx7vctlttr1gzzzwo.jpg'),
(58, 47, 'TV SONY 50in', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:39:11', '2021-05-03 02:39:11', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034751/dppbxqhjq5yaqpciyzso.jpg'),
(59, 47, 'TV SONY 55in', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:39:25', '2021-05-03 02:39:25', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034764/y3wbu1e8jzkbd9fim8pk.jpg'),
(60, 47, 'TV SONY 49in', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:39:37', '2021-05-03 02:39:37', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034776/q7hu31fhkpizgbwydp8j.jpg'),
(61, 47, 'TV SONY 49in-OLED', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:39:57', '2021-05-03 02:39:57', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034796/klrm8jbfmgzbmhzy95tb.jpg'),
(62, 47, 'TV SONY 49in-QLED', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:40:15', '2021-05-03 02:40:15', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034814/orhgizg9nahtfjpscdna.jpg'),
(63, 47, 'TV SONY 50in', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:40:24', '2021-05-03 02:40:24', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034823/jx72eqco0gfu0xlp478n.jpg'),
(64, 47, 'TV SONY 55in', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:40:35', '2021-05-03 02:40:35', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034835/mdwp5ghvu0wjhhdgzhdi.jpg'),
(65, 47, 'TV SONY 65in', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:41:06', '2021-05-03 02:41:06', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034866/onivvtfuzr6yir8ag2hk.jpg'),
(66, 47, 'TV SONY ANDROID', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:41:23', '2021-05-03 02:41:23', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034882/oxqaflajnjnsv6w8dmpb.png'),
(67, 47, 'TV SONY 32in', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:41:36', '2021-05-03 02:41:36', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034895/tmzfcf9rptgagbb41wo1.jpg'),
(68, 47, 'TV SONY 51in', 3000000, 'TIVI', 'TIVI SONY', 'In Stock', 0, 'Usa', '2021-05-03 02:41:46', '2021-05-03 02:41:46', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034905/xkjpejwpfhsqnqhyenql.jpg'),
(69, 47, 'TV TCL 32in', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:42:32', '2021-05-03 02:42:32', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034952/s8u3c7kbxr9wtigqislm.jpg'),
(70, 47, 'TV TCL 32in', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:42:46', '2021-05-03 02:42:46', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034965/xszhrgtstxgtuhgnsn3o.jpg'),
(71, 47, 'TV TCL 32in', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:42:49', '2021-05-03 02:42:49', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034969/ipkralaf0tf6qhmy3y7h.jpg'),
(72, 47, 'TV TCL 43in', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:43:01', '2021-05-03 02:43:01', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034980/zmo1pqmvteefe2vkkbkq.jpg'),
(73, 47, 'TV TCL 65in', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:43:07', '2021-05-03 02:43:07', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034986/eyfnunnbpygf5chtcwcs.jpg'),
(74, 47, 'TV TCL 4K', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:43:24', '2021-05-03 02:43:24', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035003/y4zrzh9hsomczpumqrc6.png'),
(75, 47, 'TV TCL 43in', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:43:31', '2021-05-03 02:43:31', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035010/uxwgv8czepf4rukdculh.png'),
(76, 47, 'TV TCL 50in', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:43:39', '2021-05-03 02:43:39', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035018/cl1zk3ovizi22zpyvari.png'),
(77, 47, 'TV TCL 55in', 3000000, 'TIVI', 'TIVI TCL', 'In Stock', 0, 'Usa', '2021-05-03 02:43:45', '2021-05-03 02:43:45', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035025/oqeng4nrwdrxrkrpxlc8.jpg'),
(78, 47, 'TV SAMSUNG 32in', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:44:48', '2021-05-03 02:44:48', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035088/cs6qrcrj9dpgwp8prczf.jpg'),
(79, 47, 'TV SAMSUNG 32in', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:44:52', '2021-05-03 02:44:52', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035091/rddkpbknutvedwgsda7i.jpg'),
(80, 47, 'TV SAMSUNG 43in', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:45:06', '2021-05-03 02:45:06', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035105/dfojklfceepeweope0yi.jpg'),
(81, 47, 'TV SAMSUNG 45in', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:45:12', '2021-05-03 02:45:12', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035112/rkv6iipfhqsftjei6ex9.jpg'),
(82, 47, 'TV SAMSUNG 50in', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:45:21', '2021-05-03 02:45:21', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035120/wlkfwwgnkucoewi1ibmo.jpg'),
(83, 47, 'TV SAMSUNG 55in', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:45:29', '2021-05-03 02:45:29', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035127/hqouxfc7oyxm81yxn3o9.jpg'),
(84, 47, 'TV SAMSUNG 55in 4K', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:45:36', '2021-05-03 02:45:36', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035135/obefzpyaxas61sh2d9jy.jpg'),
(85, 47, 'TV SAMSUNG 55in Cong', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:45:46', '2021-05-03 02:45:46', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035145/uzbv4rok97hkf1neflsl.png'),
(86, 47, 'TV SAMSUNG 55in QLED', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:45:55', '2021-05-03 02:45:55', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035154/jvge3ojbrecjoxasbppr.png'),
(87, 47, 'TV SAMSUNG 65in QLED', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:46:02', '2021-05-03 02:46:02', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035162/wb9ip6xgws8fpumdigxz.jpg'),
(88, 47, 'TV SAMSUNG 75in QLED', 3000000, 'TIVI', 'TIVI SAMSUNG', 'In Stock', 0, 'Usa', '2021-05-03 02:46:10', '2021-05-03 02:46:10', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035169/a3vaba8etyslvheiugse.jpg'),
(89, 47, 'TV LG 43in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:46:50', '2021-05-03 02:46:50', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035208/os2itpcaqyr6zsjtpqkf.jpg'),
(90, 47, 'TV LG 49in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:46:55', '2021-05-03 02:46:55', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035214/watmnuyg3bmmn4foz08l.jpg'),
(91, 47, 'TV LG 49in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:46:58', '2021-05-03 02:46:58', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035218/e7ajyzgbnst1a6gl34sl.png'),
(92, 47, 'TV LG 50in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:04', '2021-05-03 02:47:04', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035224/v43ydwhhvgrnpoovmajc.jpg'),
(93, 47, 'TV LG 55in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:09', '2021-05-03 02:47:09', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035229/tobsvtu2dqur1nvewl6w.jpg'),
(94, 47, 'TV LG 55in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:12', '2021-05-03 02:47:12', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035232/ufo2bpan0zbo0nih7cqy.jpg'),
(95, 47, 'TV LG 55in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:17', '2021-05-03 02:47:17', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035236/d1imvswkgy10s54fbr47.jpg'),
(96, 47, 'TV LG 55in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:20', '2021-05-03 02:47:20', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035239/hzgxei9lmucamfw4awip.jpg'),
(97, 47, 'TV LG 55in 4K', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:26', '2021-05-03 02:47:26', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035246/kfhedluffrrc3c7szr7f.jpg'),
(98, 47, 'TV LG 65in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:37', '2021-05-03 02:47:37', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035256/fxpd11xxll6vucaoazqj.jpg'),
(99, 47, 'TV LG 65in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:39', '2021-05-03 02:47:39', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035259/ovbg0owkeywddrfsnhwa.jpg'),
(100, 47, 'TV LG 65in', 3000000, 'TIVI', 'TIVI LG', 'In Stock', 0, 'Usa', '2021-05-03 02:47:45', '2021-05-03 02:47:45', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035265/itpyfiezcbsjeuekutdz.jpg'),
(101, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:02:30', '2021-05-03 03:02:30', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036150/ciqm7tmh5yuw54hdqtyf.jpg'),
(102, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:02:40', '2021-05-03 03:02:40', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036159/igrsquroahgznpdodfrp.jpg'),
(103, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:02:43', '2021-05-03 03:02:43', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036162/mzkw4blf8jcrweweytjx.jpg'),
(104, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:02:46', '2021-05-03 03:02:46', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036165/lm9jdurgzwu2uxn2lpvx.jpg'),
(105, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:02:49', '2021-05-03 03:02:49', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036169/mtx6y3j4bnv56s45yysf.jpg'),
(106, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:02:53', '2021-05-03 03:02:53', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036172/e06kayyycuq9fw94gnn5.jpg'),
(107, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:02:56', '2021-05-03 03:02:56', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036176/uhz3cf95qg4ywlxfmph7.jpg'),
(108, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:02:59', '2021-05-03 03:02:59', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036178/e27xqvvylheozjlheket.jpg'),
(109, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:02', '2021-05-03 03:03:02', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036181/qh6mn2h3ur0w3wjuniek.jpg'),
(110, 47, 'REMOTE TIVI SONY', 100000, 'REMOTE_SONY', 'REMOTE TIVI SONY', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:04', '2021-05-03 03:03:04', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036184/czibhf9hdenjxipizdqt.jpg'),
(111, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:20', '2021-05-03 03:03:20', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036200/bxiajut1a2ryja4d5h8e.jpg'),
(112, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:23', '2021-05-03 03:03:23', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036202/wa32wu62gldtlpkry4ap.jpg'),
(113, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:26', '2021-05-03 03:03:26', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036205/nsjt92isevo59zs5qzx0.jpg'),
(114, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:29', '2021-05-03 03:03:29', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036208/wwcg596j2eg1lh3hynzg.jpg'),
(115, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:32', '2021-05-03 03:03:32', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036211/fq8u3y471fa6pna90sa2.jpg'),
(116, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:34', '2021-05-03 03:03:34', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036213/rww2djidsx78id7jwjx9.jpg'),
(117, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:37', '2021-05-03 03:03:37', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036216/rmgpgf10e6tqf2xrm6d9.jpg'),
(118, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:40', '2021-05-03 03:03:40', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036219/f0cqwbfds9m3hvni59jb.jpg'),
(119, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:42', '2021-05-03 03:03:42', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036222/m19zszmy2zhldebbzmih.jpg'),
(120, 47, 'REMOTE TIVI TCL', 100000, 'REMOTE_TCL', 'REMOTE TIVI TCL', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:03:45', '2021-05-03 03:03:45', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036224/xjfuwljpgrfwu5pngrq6.jpg'),
(121, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:01', '2021-05-03 03:04:01', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036241/ntpibdsczhxjchai3vme.jpg'),
(122, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:06', '2021-05-03 03:04:06', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036245/cr8emrdgxmcp2vis1lnw.jpg'),
(123, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:09', '2021-05-03 03:04:09', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036248/iuiyi2px63vewdpua8dj.jpg'),
(124, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:12', '2021-05-03 03:04:12', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036251/cmz6cj3hj5yo1sczflpa.jpg'),
(125, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:15', '2021-05-03 03:04:15', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036254/eoh78dexfkhea689bpdj.jpg'),
(126, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:18', '2021-05-03 03:04:18', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036257/lmwwdfhxd7zlguigpscg.jpg'),
(127, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:22', '2021-05-03 03:04:22', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036261/kodbziswqwuyppw9bbo5.jpg'),
(128, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:24', '2021-05-03 03:04:24', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036264/ro9nop6hjpzshknnvyxz.jpg'),
(129, 47, 'REMOTE TIVI SAMSUNG', 100000, 'REMOTE_SAMSUNG', 'REMOTE TIVI SAMSUNG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:27', '2021-05-03 03:04:27', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036266/qnf28fncahrn05dcp0rx.jpg'),
(130, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:44', '2021-05-03 03:04:44', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036283/p73y4regvu9ipoxgouv8.jpg'),
(131, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:47', '2021-05-03 03:04:47', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036286/uxvxu8ffepjfdgnr0tmo.jpg'),
(132, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:50', '2021-05-03 03:04:50', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036289/qefvccmljepaw6ik1jx0.jpg'),
(133, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:53', '2021-05-03 03:04:53', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036292/qrikieme5t77dkffykoz.jpg'),
(134, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:55', '2021-05-03 03:04:55', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036294/xjwx0bbvflzlp5kgcjlq.jpg'),
(135, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:04:58', '2021-05-03 03:04:58', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036298/fstwses34vlnpbyaatnx.jpg'),
(136, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:05:01', '2021-05-03 03:05:01', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036300/w3wjwn8eo8hrbbuuqcws.jpg'),
(137, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:05:04', '2021-05-03 03:05:04', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036303/gnigaqkptopggmznlz0c.jpg'),
(138, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:05:08', '2021-05-03 03:05:08', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036307/tvi7gklj1vlxlhf6zpnl.jpg'),
(139, 47, 'REMOTE TIVI LG', 100000, 'REMOTE_LG', 'REMOTE TIVI LG', 'In Stock', 0, 'Viet Nam', '2021-05-03 03:05:12', '2021-05-03 03:05:12', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036312/puleiqcisupxkdh2bg6y.jpg'),
(140, 47, 'AMPLY-PA-506N', 4000000, 'AMPLY', 'AMPLY-PA-506N', 'In Stock', 0, 'Usa', '2021-05-03 03:10:40', '2021-05-03 03:10:40', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036640/n5jyekhtwo4bn5vyvktk.jpg'),
(141, 47, 'AMPLY-PA-203N', 4000000, 'AMPLY', 'AMPLY-PA-203N', 'In Stock', 0, 'Usa', '2021-05-03 03:10:50', '2021-05-03 03:10:50', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036649/nnqstqylcaanshbhfpph.jpg'),
(142, 47, 'AMPLY-PA-601A', 4000000, 'AMPLY', 'AMPLY-PA-601A', 'In Stock', 0, 'Usa', '2021-05-03 03:11:06', '2021-05-03 03:11:06', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036665/dnrewei76udws0eqiexa.jpg'),
(143, 47, 'AMPLY-BLUTOOTH', 4000000, 'AMPLY', 'AMPLY-BLUTOOTH', 'In Stock', 0, 'Usa', '2021-05-03 03:11:26', '2021-05-03 03:11:26', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036686/oluf5jzm1mehvkiwtl87.jpg'),
(144, 47, 'AMPLY-DH1', 4000000, 'AMPLY', 'AMPLY-DH1', 'In Stock', 0, 'Usa', '2021-05-03 03:11:41', '2021-05-03 03:11:41', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036700/r9fpscajdoltehitmr5z.jpg'),
(145, 47, 'AMPLY-PA-6060', 4000000, 'AMPLY', 'AMPLY-PA-6060', 'In Stock', 0, 'Usa', '2021-05-03 03:11:58', '2021-05-03 03:11:58', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036717/ha8yyxsgmcc5awjvkc8a.jpg'),
(146, 47, 'AMPLY', 4000000, 'AMPLY', 'AMPLY', 'In Stock', 0, 'Usa', '2021-05-03 03:12:09', '2021-05-03 03:12:09', NULL, 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036728/yxsyyd7zyqyajpeuewub.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_cart`
--

CREATE TABLE `table_cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `prd_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_cart`
--

INSERT INTO `table_cart` (`id`, `user_id`, `name`, `description`, `avatar`, `deleted_at`, `created_at`, `updated_at`, `quantity`, `prd_id`, `price`, `stock_status`, `discount`) VALUES
(69, 11, 'AMPLY-DH1', 'AMPLY-DH1', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036700/r9fpscajdoltehitmr5z.jpg', NULL, '2021-05-04 00:53:15', '2021-05-04 00:53:15', 1, 144, '4000000', 'In Stock', '0'),
(70, 11, 'AMPLY-BLUTOOTH', 'AMPLY-BLUTOOTH', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036686/oluf5jzm1mehvkiwtl87.jpg', NULL, '2021-05-04 00:53:37', '2021-05-04 00:53:37', 1, 143, '4000000', 'In Stock', '0'),
(115, 19, 'TV SONY 65in', 'TIVI SONY', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034866/onivvtfuzr6yir8ag2hk.jpg', NULL, '2021-05-05 01:24:44', '2021-05-07 00:55:29', 2, 65, '3000000', 'In Stock', '0'),
(117, 19, 'TV SONY 49in-OLED', 'TIVI SONY', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034796/klrm8jbfmgzbmhzy95tb.jpg', NULL, '2021-05-05 01:24:49', '2021-05-05 01:24:49', 1, 61, '3000000', 'In Stock', '0'),
(121, 11, 'TV SONY 51in', 'TIVI SONY', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034905/xkjpejwpfhsqnqhyenql.jpg', NULL, '2021-05-06 21:33:44', '2021-05-06 21:33:44', 1, 68, '3000000', 'In Stock', '0'),
(122, 11, 'TV SONY 32in', 'TIVI SONY', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034895/tmzfcf9rptgagbb41wo1.jpg', NULL, '2021-05-06 21:33:47', '2021-05-06 21:33:47', 1, 67, '3000000', 'In Stock', '0'),
(123, 11, 'TV SONY ANDROID', 'TIVI SONY', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620034882/oxqaflajnjnsv6w8dmpb.png', NULL, '2021-05-06 21:33:49', '2021-05-06 21:33:49', 1, 66, '3000000', 'In Stock', '0'),
(124, 19, 'AMPLY-PA-6060', 'AMPLY-PA-6060', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620036717/ha8yyxsgmcc5awjvkc8a.jpg', NULL, '2021-05-07 00:55:33', '2021-05-07 00:55:33', 1, 145, '4000000', 'In Stock', '0'),
(125, 19, 'TV LG 65in', 'TIVI LG', 'http://res.cloudinary.com/hieu-kun/image/upload/v1620035256/fxpd11xxll6vucaoazqj.jpg', NULL, '2021-05-07 00:55:37', '2021-05-07 00:55:37', 1, 98, '3000000', 'In Stock', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_product`
--

CREATE TABLE `table_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_product`
--

INSERT INTO `table_product` (`id`, `name`, `description`, `avatar`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '132213', '132213', 'http://localhost:3000/static/media/2.e8fc36e7.jpg', '2021-03-25 20:20:08', '2021-03-25 20:20:08', NULL),
(15, 'Dell P2719H UltraShap2', '3', 'http://localhost:3000/static/media/2.e8fc36e7.jpg', '2021-03-26 19:02:13', '2021-03-30 02:34:44', NULL),
(16, 'Dell P2719H Ultra', '2', 'http://localhost:3000/static/media/2.e8fc36e7.jpg', '2021-03-28 18:48:00', '2021-03-28 18:48:00', NULL),
(17, 'Dell P2719H Ultra122', '1', 'http://localhost:3000/static/media/3.1a1a991d.jpg', '2021-03-28 18:48:06', '2021-03-28 18:48:06', NULL),
(18, 'Tran nhan hieu', '4', 'http://localhost:3000/static/media/2.e8fc36e7.jpg', '2021-03-30 02:30:27', '2021-03-30 02:30:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `roles` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `address`, `phone`, `gender`, `dob`, `avatar`, `deleted_at`, `roles`) VALUES
(11, 'hieu', 'hieu@gmail.com', NULL, '$2y$10$17LQT8fnosS55IvqBK7yQewIZpE0ZGEpIndPZRbC1Z0ZifOiKMwWm', NULL, '2021-03-23 19:53:51', '2021-03-23 19:53:51', NULL, 973564984, '', '2021-04-15', NULL, NULL, 2),
(18, 'Hieu Kun', 'hieu4@gmail.com', NULL, '$2y$10$RTF4QR8qarOkHcfx3Wx89u1iS12yoNq3Lf1.ASG/8o3bh2h2r0I4m', NULL, '2021-04-02 03:02:49', '2021-04-03 01:03:49', 'Hue', 973737377, '1', '2021-04-02', '1373568089.IMG_0369.JPG,76771549.IMG_0369.JPG,2043209187.IMG_0369.JPG,', NULL, 2),
(19, 'Hieu Kun', 'hieu3@gmail.com', NULL, '$2y$10$dqcC2Dtq832La69pyKr2EufZyiQt03ZF8pZ5BTZZ5tYPE3dP2XQ.a', NULL, '2021-04-02 20:53:12', '2021-04-03 00:59:49', 'Hue', 12223483434, '0', '2021-04-03', '1002445567.IMG_0344.jpeg,1606960170.IMG_0344.jpeg,', NULL, 2),
(47, 'Tran Nhan Hieu', 'hieutn290120@gmail.com', NULL, '$2y$10$7xxghsdmrlAoqxlBmtBQwueF65knXxpWO0vENQk6P1KeRW2FStGnC', NULL, '2021-04-15 00:27:52', '2021-05-08 01:14:43', 'Hue', 973564984, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vote_rate`
--

CREATE TABLE `vote_rate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `prd_id` bigint(20) UNSIGNED NOT NULL,
  `count_rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contacus`
--
ALTER TABLE `contacus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `table_cart`
--
ALTER TABLE `table_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `table_cart_ibfk_2` (`prd_id`);

--
-- Chỉ mục cho bảng `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `roles` (`roles`);

--
-- Chỉ mục cho bảng `vote_rate`
--
ALTER TABLE `vote_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `vote_rate_ibfk_1` (`prd_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contacus`
--
ALTER TABLE `contacus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `table_cart`
--
ALTER TABLE `table_cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `table_product`
--
ALTER TABLE `table_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `vote_rate`
--
ALTER TABLE `vote_rate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contacus`
--
ALTER TABLE `contacus`
  ADD CONSTRAINT `contacus_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `product_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `table_cart`
--
ALTER TABLE `table_cart`
  ADD CONSTRAINT `table_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `table_cart_ibfk_2` FOREIGN KEY (`prd_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roles`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `vote_rate`
--
ALTER TABLE `vote_rate`
  ADD CONSTRAINT `vote_rate_ibfk_1` FOREIGN KEY (`prd_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `vote_rate_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
