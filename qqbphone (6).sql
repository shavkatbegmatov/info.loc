-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 14 2023 г., 13:19
-- Версия сервера: 5.5.62
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `qqbphone`
--

-- --------------------------------------------------------

--
-- Структура таблицы `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('01','02','03','04','05') COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `branch`
--

INSERT INTO `branch` (`id`, `code`, `name`, `type`, `parent`, `created_at`, `updated_at`) VALUES
(24, '00001', 'Bosh bank', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '00010', 'Qoraqalpog\'iston res.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '00020', 'Andijon vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '00030', 'Buxoro vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '00040', 'Jizzax vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '00050', 'Qashqadaryo vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '00060', 'Navoiy vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '00070', 'Namangan vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '00080', 'Samarqand vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '00090', 'Surxondaryo vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '00100', 'Sirdaryo vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '00110', 'Farg\'ona vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '00120', 'Xorazm vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '00130', 'Toshkent vil.', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '00140', 'Toshkent shahri', '03', '01037', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '11237', 'Guliston BXO', '04', '00100', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '10891', 'Buxoro BXO', '04', '00030', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '11111', 'Qarshi BXO', '04', '00050', '0000-00-00 00:00:00', '2023-06-09 15:45:29'),
(48, '10392', 'Batosh BXKM', '04', '00050', '0000-00-00 00:00:00', '2023-06-12 04:37:22'),
(49, '5305', 'Test Batosh bo\'lim', '05', '10392', '0000-00-00 00:00:00', '2023-06-12 04:39:13'),
(50, '11238', 'Yangiyer BXO', '04', '00100', '0000-00-00 00:00:00', '2023-06-12 04:50:42'),
(51, '10890', 'Navoiy BXO', '04', '00060', '0000-00-00 00:00:00', '2023-06-12 05:14:28'),
(52, '7717', 'Kredit bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 05:32:22'),
(53, '11167', 'Raxbariyat', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 07:14:40'),
(54, '6824', 'Boshligi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 07:39:29'),
(55, '13264', 'Yuridik bo\'lim', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 09:03:28'),
(56, '9300', 'Xodimlar bilan ishlash bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 09:43:20'),
(57, '10657', 'Jismoniy va yuridik shaxslar murojaatlari bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 09:49:31'),
(58, '11774', 'Bank xavfsizligi va mehnat muhofazasi bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 09:54:48'),
(59, '5764', 'Axborotlashtirish bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 09:59:07'),
(60, '9568', 'Omonat bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 10:17:11'),
(61, '8072', 'Yuridik shaxslarga unversal xizmat ko\'rsatish bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 10:29:44'),
(62, '14707', 'Kreditlarni monitoringi va shartnomaviy nazorat bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 10:48:49'),
(63, '5736', 'Yakuniy nazorat bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-12 13:08:44'),
(64, '9582', 'Jismoniy shaxslarga universal xizmat ko\'rsatish bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-13 04:05:09'),
(65, '10042', 'Rahbariyat', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:42:04'),
(66, '8210', 'Xodimlar bilan ishlash bo\'yicha', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:42:51'),
(67, '7540', 'Yuridik bo\'lim', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:43:11'),
(68, '6142', 'Xaridlar bilan ishlash bo\'yicha', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:43:41'),
(69, '10913', 'Ish yuritish va ijrochilik nazorat bo\'yicha', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:44:09'),
(70, '8585', 'Invistetsiya loyihalarini moliyalashtirish markazi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:45:01'),
(71, '5199', 'Kreditlarni monirotingi va shartnomaviy nazorat bo\'limi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:46:49'),
(72, '5795', 'Kredit administratsiyasi bo\'limi ', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:48:10'),
(73, '12433', 'Naqd pul muomalasini tashkil etish bo\'limi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:55:51'),
(74, '5576', 'Yakuniy nazorat bo;yicha', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 05:56:45'),
(76, '89000', 'Navoiy viloyat hududiy boshqarmasi', '04', '00060', '0000-00-00 00:00:00', '2023-06-13 05:59:11'),
(77, '11599', 'Xaridlar bilan ishlash bo\'yicha', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 05:59:34'),
(78, '8161', 'Yuridik bo\'lim', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 05:59:47'),
(79, '8650', 'Xodimlar bilan ishlash bo\'yicha', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 06:00:05'),
(80, '11369', 'Ish yuritish va ijrochilik nazorat bo\'yicha', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 06:00:23'),
(81, '8385', 'Investitsiya loyihalarini moliyalashtirish markazi', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 06:00:50'),
(82, '7523', 'Kreditlarni monirotingi va shartnomaviy nazorat bo\'limi', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 06:01:14'),
(83, '8305', 'Kredit administratsiyasi bo\'limi ', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:02:14'),
(84, '14091', 'Naqd pul muomalasini tashkil etish bo\'limi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:02:27'),
(85, '11780', 'Naqd pul muomalasini tashkil etish bo\'limi', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 06:02:52'),
(86, '14043', 'Yakuniy nazorat bo;yicha', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 06:03:04'),
(87, '12520', 'Jismoniy shaxslarga universal xizmat ko\'rsatish bo\'limi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:04:25'),
(88, '12005', 'Ipoteka kredit ajratish shubasi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:05:02'),
(89, '12197', 'Yuridik shaxslarga universal xizmat ko\'rsatish bo\'limi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:06:06'),
(90, '5098', 'Kassa ishlari bo\'limi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:06:23'),
(91, '5224', 'Ipoteka krediti ajratish sho\'basi', '05', '11111', '0000-00-00 00:00:00', '2023-06-13 06:06:59'),
(92, '8834', 'Chakana amaliyotlar kassasi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:07:03'),
(93, '8337', 'Bank xavfsizligi va axborot texnologiyalari bo\'yicha', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:07:54'),
(94, '5487', 'Umumiy ishlar shubasi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:08:38'),
(95, '8452', 'Yuksalish BXKM', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:09:21'),
(96, '6966', 'Zarafshon BXKM', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:09:48'),
(97, '5092', 'Qiziltepa BXKM', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:10:14'),
(98, '5930', 'Taraqqiyot BXKM', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:10:39'),
(99, '7673', 'Chutqara BXKM', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:10:56'),
(100, '6558', 'Konimex BXKM', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:11:12'),
(101, '10932', 'Bunyodkor BXKM', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:12:14'),
(102, '6376', '2 - sonli Chakana amaliyotlar kassasi', '05', '10890', '0000-00-00 00:00:00', '2023-06-13 06:12:52'),
(103, '12318', 'Rahbariyat', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 06:39:51'),
(105, '10883', '', '04', '00110', '0000-00-00 00:00:00', '2023-06-13 09:26:56'),
(106, '11206', 'Sergeli BXO', '04', '00140', '0000-00-00 00:00:00', '2023-06-13 10:13:09'),
(107, '12740', 'Raxbariyat', '05', '11206', '0000-00-00 00:00:00', '2023-06-13 10:14:23'),
(108, '90800', 'Xorazm BXO', '04', '00120', '0000-00-00 00:00:00', '2023-06-13 10:43:09'),
(109, '5004', 'Yuridik shaxslarga universal xizmat ko\'rsatish bo\'limi', '05', '90800', '0000-00-00 00:00:00', '2023-06-13 10:44:17'),
(110, '12094', 'Rahbariyat', '05', '10883', '0000-00-00 00:00:00', '2023-06-13 10:48:00'),
(111, '12172', 'Jismoniy shaxslarga universal xizmat ko\'rsatish bo\'limi', '05', '90800', '0000-00-00 00:00:00', '2023-06-13 11:03:57'),
(112, '90900', 'Xonqa BXO', '04', '00120', '0000-00-00 00:00:00', '2023-06-13 11:16:55'),
(113, '13319', 'Raxbariyat', '05', '90900', '0000-00-00 00:00:00', '2023-06-13 11:19:02'),
(115, '91000', 'Xiva BXO', '04', '00120', '0000-00-00 00:00:00', '2023-06-13 11:25:00'),
(116, '6698', 'Jismoniy shaxslarga universal xizmat kursatish bolimi', '05', '91000', '0000-00-00 00:00:00', '2023-06-13 11:28:35'),
(117, '13331', 'Kredit administratsiyasi bo\'limi ', '05', '89000', '0000-00-00 00:00:00', '2023-06-13 11:37:43'),
(118, '14344', 'Naqd pul muomalasini tashkil etish bo\'limi ', '05', '11111', '0000-00-00 00:00:00', '2023-06-13 11:46:11'),
(119, '7898', 'Boshqaruvchi', '05', '91000', '0000-00-00 00:00:00', '2023-06-13 11:48:34'),
(121, '11948', 'Raxbariyat', '05', '91000', '0000-00-00 00:00:00', '2023-06-13 12:00:42'),
(122, '11694', 'Investitsiya loyihalarini moliyalashtirish markazi ( Bo\'li maqomida )', '05', '11111', '0000-00-00 00:00:00', '2023-06-13 12:43:55'),
(123, '8138', 'Investitsiya loyihalarini moliyalashtirish markazi ( Bo\'lim maqomida )', '05', '11111', '0000-00-00 00:00:00', '2023-06-13 12:45:27'),
(124, '10346', 'Kassa ishlari bo\'limi ', '05', '11111', '0000-00-00 00:00:00', '2023-06-13 12:49:59'),
(125, '11586', 'Yuridik shaxslarga universal xizmat ko‘rsatish bo‘limi', '05', '91000', '0000-00-00 00:00:00', '2023-06-14 04:08:36'),
(126, '11233', 'Nukus BXO', '04', '00010', '0000-00-00 00:00:00', '2023-06-14 04:49:29'),
(127, '10383', 'Aydın jol BXKM', '04', '00010', '0000-00-00 00:00:00', '2023-06-14 05:01:17'),
(128, '10783', 'Amudaryo BXKM', '04', '00010', '0000-00-00 00:00:00', '2023-06-14 05:02:34'),
(129, '12189', 'Касса ишлар бўлими', '05', '91000', '0000-00-00 00:00:00', '2023-06-14 05:05:44'),
(130, '11234', 'Chimboy BXO', '04', '00010', '0000-00-00 00:00:00', '2023-06-14 05:05:55'),
(131, '11235', 'Beruniy BXO', '04', '00010', '0000-00-00 00:00:00', '2023-06-14 05:06:12'),
(132, '5729', 'Ipoteka krediti ajratish sho\'basi', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 05:07:58'),
(133, '10443', 'Kassa ishlari bo\'limi', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 05:08:19'),
(134, '10958', 'Chakana amaliyotlar kassasi', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 05:09:08'),
(135, '5545', 'Bank xavfsizligi va axborot texnologiyalari bo\'yicha', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 05:09:54'),
(136, '14589', 'Umumiy ishlar sho\'basi', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 05:11:37'),
(137, '10284', 'Bo\'g\'ot BXKM', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 05:12:24'),
(138, '11412', 'Gurlan BXKM', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 05:12:36'),
(139, '14054', 'CHakana amaliyotlar bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-14 05:15:34'),
(140, 'J0553', 'Xorazm viloyat hududiy boshqarmasi', '04', '00120', '0000-00-00 00:00:00', '2023-06-14 05:22:14'),
(141, '8473', 'Rahbariyat', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 05:30:40'),
(142, '13233', 'Rahbariyat', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:31:12'),
(143, '9159', 'Yuridik bo\'lim', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:31:33'),
(144, '6517', 'Xodimlar bilan ishlash bo\'yicha', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:31:56'),
(145, '5839', 'Ish yuritish va ijrochilik nazorati bo\'yicha', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:33:04'),
(146, '13613', 'Umumiy ishlar sho\'basi', '05', '11111', '0000-00-00 00:00:00', '2023-06-14 05:33:05'),
(147, '5293', 'Jismoniy va yuridik shaxslar murojaatlari bo\'yicha ', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:34:07'),
(148, '8085', 'Bank xavfsizligi va mexnat muhofazasi bo\'yicha', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:34:46'),
(149, '5700', 'Investitsiya loyixalarini moliyalashtirish markazi (bo‘lim maqomida)', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:36:34'),
(150, '12903', 'Kreditlarni monitoringi va sharnomaviy nazorat bo‘limi', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:37:18'),
(151, '5564', 'Kredit administratsiyasi bo‘limi', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:38:11'),
(152, '7458', 'Naqd pul muomalasini tashkil etish bo‘limi', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:38:43'),
(153, '12291', 'Yakuniy nazorat bo‘yicha', '05', 'J0553', '0000-00-00 00:00:00', '2023-06-14 05:40:01'),
(154, '10664', 'Tórtkól BXKM', '04', '00010', '0000-00-00 00:00:00', '2023-06-14 05:46:18'),
(155, '11108', 'Bóston BXKM', '04', '00010', '0000-00-00 00:00:00', '2023-06-14 05:46:58'),
(156, '11236', 'Qóngirot BXO', '04', '00010', '0000-00-00 00:00:00', '2023-06-14 05:47:44'),
(157, '9911', 'Bank xavfsizligi va axborot texnologiyalari bo‘yicha', '05', '91000', '0000-00-00 00:00:00', '2023-06-14 05:48:19'),
(158, '6753', 'Ichki nazorat bo\'limi', '05', '11111', '0000-00-00 00:00:00', '2023-06-14 05:50:27'),
(159, '5355', 'Xodimlar bilan ishlash, ish yuritish va ijrochilik nazorati bo‘yicha', '05', '91000', '0000-00-00 00:00:00', '2023-06-14 05:51:29'),
(160, '11423', 'Raxbariyat', '05', '10392', '0000-00-00 00:00:00', '2023-06-14 05:54:49'),
(161, '14909', 'CHakana amaliyotlar kassasi', '05', '10392', '0000-00-00 00:00:00', '2023-06-14 05:56:34'),
(165, '6984', 'Xodimlar bilan ishlash, ish yuritish va ijrochilik nazorati bo\'yicha', '05', '90800', '0000-00-00 00:00:00', '2023-06-14 06:35:41'),
(168, '50100', 'Xodimlar bilan ishlash, ish yuritish va ijrochilik nazorati bo\'yicha', '05', '90900', '0000-00-00 00:00:00', '2023-06-14 06:45:43'),
(169, '21700', 'Samarqand viloyati hududiy boshqarmasi', '04', '00080', '0000-00-00 00:00:00', '2023-06-14 07:16:38'),
(171, '8935', 'Rahbariyat', '05', '11233', '0000-00-00 00:00:00', '2023-06-14 07:43:23'),
(172, '12232', 'Jismoniy shaxslarga universal xizmat ko‘rsatish bo‘limi', '05', '11233', '0000-00-00 00:00:00', '2023-06-14 07:43:45'),
(174, '7439', 'Ipoteka krediti ajratish sho‘basi', '05', '11233', '0000-00-00 00:00:00', '2023-06-14 07:44:17'),
(175, '9032', 'Ipoteka krediti ajratish sho\'basi', '05', '90900', '0000-00-00 00:00:00', '2023-06-14 09:06:44'),
(176, '12199', 'Jismoniy shaxslarga universal xizmat ko\'rsatish bo\'limi', '05', '90900', '0000-00-00 00:00:00', '2023-06-14 09:07:02'),
(177, '6712', 'Chakana amaliyotlar kassasi', '05', '91000', '0000-00-00 00:00:00', '2023-06-14 09:12:57'),
(178, '14269', 'Bank xavfsizligi va axborot texnologiyalari', '05', '11235', '0000-00-00 00:00:00', '2023-06-14 09:13:05'),
(179, '6125', 'Bank xavfsizligi va axborot texnologiyalari', '05', '11235', '0000-00-00 00:00:00', '2023-06-14 09:16:28'),
(181, '13571', 'Chakana amaliyotlari kassasi', '05', '11233', '0000-00-00 00:00:00', '2023-06-14 09:20:28'),
(182, '8535', 'Yuridik shaxslarga universal xizmat ko\'rsatish bo\'limi', '05', '90900', '0000-00-00 00:00:00', '2023-06-14 09:20:31'),
(183, '5520', 'Yuridik shaxslarga universal xizmat ko‘rsatish bo‘limi', '05', '11233', '0000-00-00 00:00:00', '2023-06-14 09:20:51'),
(185, '10904', 'Andijon BXO', '04', '00020', '0000-00-00 00:00:00', '2023-06-14 09:37:59');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_corp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `middle_name`, `last_name`, `parent`, `position`, `tel_in`, `tel_corp`, `tel_out`, `created_at`, `updated_at`) VALUES
(2, 'Furqat', 'Begmatovich', 'Muratov', '11167', 'Boshqaruvchi', '-', '1801', '-', '0000-00-00 00:00:00', '2023-06-12 07:32:56'),
(3, 'Dilshod', 'Keldiyorovich', 'Хujayorov', '6824', 'Boshqaruvchi', '', '1803', '', '0000-00-00 00:00:00', '2023-06-12 07:41:17'),
(4, 'G\'olib', 'Jo\'raevich', 'Toshmurodov', '11167', 'Boshqaruvchi o\'rinbosari', '78 771-04-04', '-', '-', '0000-00-00 00:00:00', '2023-06-12 07:55:32'),
(5, 'SHerzod', 'Ismoilovich', 'Maxmudov', '13264', 'Bo\'lim boshlig\'', '78 771-04-02', '-', '-', '0000-00-00 00:00:00', '2023-06-12 09:37:11'),
(6, 'Zafar', 'Marifovich', 'Aliyev', '13264', 'Bosh yuriskonsulti', '-', '1854', '-', '0000-00-00 00:00:00', '2023-06-12 09:41:35'),
(7, 'SHohruh', 'Suyar o\'g\'li', 'Yusupov', '9300', 'Bosh mutaxassis', '78 771-04-27', '1809', '-', '0000-00-00 00:00:00', '2023-06-12 09:45:35'),
(8, 'Akrom ', 'Bo\'tayevich', 'SHukurov', '10657', 'Bosh mutaxassis', '78 771-04-09', '1861', '-', '0000-00-00 00:00:00', '2023-06-12 09:53:06'),
(9, 'Jo\'rabek ', 'Ergashevich', 'Haydarov', '11774', 'Yetakchi mutaxassis', '78 771-04-30', '1859', '-', '0000-00-00 00:00:00', '2023-06-12 09:57:21'),
(10, 'Aziza', 'Izatilloyevna', 'Zokirova', '5764', 'Bosh mutaxassis', '-', '1810', '-', '0000-00-00 00:00:00', '2023-06-12 10:12:07'),
(11, 'Adham', 'G\'aniyevich', 'Jumayev', '9568', 'Bosh mutaxassis', '-', '1813', '-', '0000-00-00 00:00:00', '2023-06-12 10:18:20'),
(12, 'Farrux', 'SHuxratovich', 'Qo\'ziyev', '8072', 'Bo\'lim boshlig\'i', '-', '1807', '-', '0000-00-00 00:00:00', '2023-06-12 10:38:21'),
(13, 'Raximjon', 'Erkinovich', 'Pirmatov', '14707', 'Bosh mutaxassis', '78 771-04-01', '-', '93 587-22-33	', '0000-00-00 00:00:00', '2023-06-12 10:51:32'),
(14, 'Suhrob', 'To\'lqinovich', 'Xo\'janazarov', '14707', 'Bosh mutaxassis', '78 771-04-01', '1853', '-', '0000-00-00 00:00:00', '2023-06-12 11:31:22'),
(15, 'Maqsud ', 'Xudoynazarovich', 'Nazarov', '14707', 'Yetakchi mutaxassis', '78 771-04-01', '1853', '91 642-44-42	', '0000-00-00 00:00:00', '2023-06-12 11:33:35'),
(16, 'Baxodir', 'Baxtiyor o\'g\'li', 'Begmatov', '14707', 'Yetakchi mutaxassis', '78 771-04-01', '-', '99 059-10-08	', '0000-00-00 00:00:00', '2023-06-12 12:45:02'),
(17, 'Akbar', 'Baxromovich', 'Normurodov', '14707', 'Yetakchi mutaxassis', '78 771-04-01', '-', '90 951-52-12	90 951-52-12', '0000-00-00 00:00:00', '2023-06-12 12:48:06'),
(18, 'Marg\'uba', 'Nasrullayevna', 'Qodirova', '14707', 'Yetakchi mutaxassis', '78 771-04-01', '-', '99 215-05-73', '0000-00-00 00:00:00', '2023-06-12 12:53:05'),
(19, 'Asliddin', 'Fahriddinovich', 'Muhammadiyev', '5736', 'Bosh mutaxassis', '78 771-04-13', '1862', '97 200-57-17	', '0000-00-00 00:00:00', '2023-06-12 13:15:34'),
(20, 'Farrux', 'Toshtemirovich', 'To\'rayev', '9582', 'Bo\'lim boshlig\'i', '78 771-04-25', '1805', '-', '0000-00-00 00:00:00', '2023-06-13 04:07:47'),
(21, 'Muzaffar', 'Narzullayevich', 'CHuxmarov', '9582', 'Bosh mutaxassis', '78 771-04-28', '-', '-', '0000-00-00 00:00:00', '2023-06-13 04:10:53'),
(22, 'Nodirbek', 'Qodir o\'g\'li', 'Xudoyberdiyev', '9582', 'Mutaxassis', '78 771-04-11', '-', '91 222-77-33	', '0000-00-00 00:00:00', '2023-06-13 06:03:43'),
(23, 'Fazliddin', 'Tuymurod o\'g\'li', 'Primov ', '5224', 'Bosh mutaxassis', '78 771-04-25', '-', '97 585-85-38	', '0000-00-00 00:00:00', '2023-06-13 06:09:09'),
(24, 'SHodmon', 'Sulaymonovich', 'Jalolov', '5224', 'Bosh mutaxassis', '78 771-04-28', '-', '90 288-10-03	', '0000-00-00 00:00:00', '2023-06-13 06:12:32'),
(25, 'Furqat', 'Muxtorovich', 'Niyozmamatov', '5224', 'Bosh mutaxassis', '78 771-04-28', '1828', '-', '0000-00-00 00:00:00', '2023-06-13 06:25:34'),
(26, 'Islombek ', 'Farmonovich', 'Saidov ', '12318', 'Boshqaruvchi', '2100', '787702795', '998987001401', '0000-00-00 00:00:00', '2023-06-13 06:54:45'),
(27, 'Sherali ', 'Shavkat o\'g\'li', 'Salomov ', '12318', 'Boshqaruvchi o\'rinbosari', '2102', '787702788', '998913300104', '0000-00-00 00:00:00', '2023-06-13 07:05:42'),
(28, 'Хushnud ', 'Bayot o\'g\'li', 'Хosilov ', '11599', 'Yitakchi mutaxassis ', '2122', '787702786', '998901740093', '0000-00-00 00:00:00', '2023-06-13 07:09:01'),
(29, 'Behzod', 'Ravshanovich', 'Artikov', '10042', 'Hududiy boshqarma boshlig`i', '1100', '78-150-79-10', '+998998123201', '0000-00-00 00:00:00', '2023-06-13 07:11:45'),
(30, 'Furqat ', 'Ravshanovich ', 'Djumaniyozov ', '8161', 'Bosh yuriskonsult', '2131', '78 770-29-81', '998919860686', '0000-00-00 00:00:00', '2023-06-13 07:13:59'),
(31, 'Zayniddin', 'Ergashevich', 'Mardonov', '11167', 'Boshqaruvchi', '20-00', '78 770-00-80', '998933831227', '0000-00-00 00:00:00', '2023-06-13 10:23:20'),
(32, 'Aziz ', 'Murtazoevich ', 'Sadirov ', '8161', 'Yitakchi yuriskonsult', '2131', '78 770-29-81', '912510011', '0000-00-00 00:00:00', '2023-06-13 10:30:14'),
(33, 'Tolmas', 'Yuldoshovich', 'Tojiyev', '8072', 'Bosh mutaxassis', '-', '78 771-04-50', '91 217-20-22	', '0000-00-00 00:00:00', '2023-06-13 10:30:50'),
(34, 'Nargiza ', 'Abduraimovna', 'Хalimova ', '8650', 'Yitakchi mutaxassis ', '2109', '78 770-27-92', '998913394555', '0000-00-00 00:00:00', '2023-06-13 10:43:16'),
(35, 'Ollaqulov', 'Olimovich', 'Po\'lat', '5004', 'bo\'lim boshlig\'i', '2204', '787704376', '914243031', '0000-00-00 00:00:00', '2023-06-13 10:46:07'),
(36, 'Go\'zal ', 'Furqat qizi ', 'Shokirova ', '11369', 'Yitakchi mutaxassis ', '-', '-', '998917880701', '0000-00-00 00:00:00', '2023-06-13 10:50:10'),
(37, 'Abdullo', 'Xusanovich', 'Ergashev', '8072', 'Bosh mutaxassis', '1804', '78 771-04-29', '91 640-77-79	', '0000-00-00 00:00:00', '2023-06-13 10:53:07'),
(38, 'Manzura', 'Maxmadaliyevna', 'Yuldasheva', '8072', 'Bosh mutaxassis', '1804', '78 771-04-29', '94 334-00-89	', '0000-00-00 00:00:00', '2023-06-13 10:55:38'),
(39, 'Shoxista ', 'Baxtiyorovna', 'Abrarova ', '12520', '1-toifali mutaxassis', '2125', '78 770-27-99', '998933181504', '0000-00-00 00:00:00', '2023-06-13 10:58:49'),
(40, 'Shukur ', 'Farxodovich ', 'Salimov ', '8385', 'Bosh mutaxassis', '2107', '78 770-29-77', '998905016111', '0000-00-00 00:00:00', '2023-06-13 11:03:08'),
(41, 'Abdixakim', 'Xolmo\'min o\'g\'li', ' Norboboyev', '8072', 'Bosh mutaxassis', '1804', '78 771-04-29', '97 313-17-93	', '0000-00-00 00:00:00', '2023-06-13 11:03:41'),
(42, 'Jamshid', 'Raxmonqulovich', 'Temirov', '8072', '1-toifali mutaxassis', '1804', '78 771-04-29', '90 042-24-22	', '0000-00-00 00:00:00', '2023-06-13 11:07:07'),
(43, 'O\'ktam ', 'Tursunovich ', 'Muzaffarov ', '7523', 'Bo\'lim boshlig\'i', '2108', '78 770-27-91', '998939503530', '0000-00-00 00:00:00', '2023-06-13 11:16:51'),
(44, 'Farxod', 'Rustamovich', 'Abdullaev', '13319', 'Boshqaruvchi', '2220', '787704383', '884517444', '0000-00-00 00:00:00', '2023-06-13 11:21:12'),
(45, 'Zafar', 'Xusanovich', 'Omonov', '11167', 'Bosh mutaxassis ( xaridlar bilan ishlash bo\'yicha )', '1804', '78 771-04-29', '91 462-44-59	', '0000-00-00 00:00:00', '2023-06-13 11:36:57'),
(46, 'O\'ktam ', 'Tursunovich ', 'Muzaffarov ', '7523', 'Bo\'lim boshlig\'i', '2108', '78 770-27-91', '998939503530', '0000-00-00 00:00:00', '2023-06-13 11:37:13'),
(47, 'Sardor ', 'Raxmonovich', 'Хamidov ', '13331', 'Bosh mutaxassis ', '2108', '78 770-27-91', '998908087073', '0000-00-00 00:00:00', '2023-06-13 11:39:09'),
(48, 'Otabek ', 'Ismoilovich ', 'Shamsiddinov ', '13331', 'Bosh mutaxassis', '2108', '78 770-27-91', '998973681802', '0000-00-00 00:00:00', '2023-06-13 11:40:17'),
(49, 'Sardor', 'Yusufovich', 'Saxatov', '14707', 'Bosh mutaxassis', '1853', '78 771-04-01', '88 113-83-88	', '0000-00-00 00:00:00', '2023-06-13 11:41:04'),
(50, 'Amriddin ', 'Burxoniddinovich', 'Toerov ', '13331', '1-toifali mutaxassis', '2108', '78 770-27-91', '', '0000-00-00 00:00:00', '2023-06-13 11:41:22'),
(51, 'SHarofiddin', 'Abduvayitovich', 'O\'ralov', '14707', '1-toifali mutaxassis', '1853', '78 771-04-01', '93 907-00-97	', '0000-00-00 00:00:00', '2023-06-13 11:44:43'),
(52, 'Xursandbek', 'Iskandar o‘g‘li', 'Otabaev', '6698', 'Bo‘lim boshlig‘i', '2242', '78 770 43 89', '99 501 63 61 ', '0000-00-00 00:00:00', '2023-06-13 11:45:34'),
(53, 'O\'ktam', 'Rustamovich', 'G\'oziyev', '14344', 'Bo\'lim boshlig\'i', '1806', '78 771-04-26', '93 907-85-11	', '0000-00-00 00:00:00', '2023-06-13 11:48:17'),
(54, 'Yo\'ldoshev', 'No\'monovich', 'Jamshid', '11167', 'BXO boshqaruvchisi ', '+998972710222', '1502', '+998782297082', '0000-00-00 00:00:00', '2023-06-13 11:49:01'),
(55, 'Xusanboy', 'Komiljonovich ', 'Abdurahimov ', '11167', 'Farg\'ona viloyati Hududiy boshqarmasi boshqaruvchisi ', '+998782297081', '1500', '+998975956665', '0000-00-00 00:00:00', '2023-06-13 11:50:52'),
(56, 'Ilyos', 'SHokir o\'g\'li', 'Abdullayev', '11167', 'Bosh buxgalter', '1813', '78 771-04-12', '98 777-72-67	', '0000-00-00 00:00:00', '2023-06-13 11:52:37'),
(57, 'Sardorbek', 'Nazirbaevich', 'Qadamov', '7898', 'Boshqaruvchi', '2240', '78 770 43 93', '88 514 57 77', '0000-00-00 00:00:00', '2023-06-13 11:56:20'),
(58, 'Jamshid', 'Ibadullaevich', 'Sabirov ', '11948', 'Bosh buxgalter', '2244', '78 770 43 99', '93 756 88 81', '0000-00-00 00:00:00', '2023-06-13 12:03:19'),
(59, 'G\'ayratjon ', 'Ganiyevich ', 'Saydaliyev', '11167', 'Farg\'ona viloyati Hududiy boshqarmasi boshqaruvchi o\'rinbosari ', '+998782297085', '1506', '+998941380800', '0000-00-00 00:00:00', '2023-06-13 12:04:30'),
(60, 'Mamasiddiq', 'Ma\'mirovich ', 'Mamatov ', '11167', 'Farg\'ona viloyati Hududiy boshqarmasi boshqaruvchi o\'rinbosari ', '+998782297083', '1503', '+998904097056', '0000-00-00 00:00:00', '2023-06-13 12:06:38'),
(61, 'Ma\'rufjon', 'Ganiyevich ', 'Tojiddinov ', '6142', 'Bosh mutaxassis ', '', '', '+998975575010', '0000-00-00 00:00:00', '2023-06-13 12:13:58'),
(62, 'Nozimaxon ', 'Ismoiljonovna', 'Madaminova ', '13264', 'Bosh yuristkonsult', '', '', '+998904055591', '0000-00-00 00:00:00', '2023-06-13 12:15:12'),
(63, 'Umida ', '', '', '11167', '', '', '', '', '0000-00-00 00:00:00', '2023-06-13 12:15:22'),
(64, 'Abdulaziz ', 'Yulbarsxonovich ', 'Vaxidov ', '13264', 'Bosh yuristkonsult', '', '', '+998933740555', '0000-00-00 00:00:00', '2023-06-13 12:16:14'),
(65, 'Umida ', 'O\'ktamovna', 'Safarova', '11167', 'Bosh buxgalter o\'rinbosari', '1813', '78 771-04-12', '91 957-07-70	', '0000-00-00 00:00:00', '2023-06-13 12:17:02'),
(66, 'Olimdjon ', 'Atadjanovich ', 'Sattarov ', '11774', 'Bosh mutaxassis ', '', '', '+998973368406', '0000-00-00 00:00:00', '2023-06-13 12:17:19'),
(67, 'Nizomiddin', 'Nodir o\'g\'li', 'SHodiyev', '11167', 'Bosh mutaxassis ( Bank qurilmalariga xizmat ko\'rsatish bo\'yicha )', '1807', '78 771-04-32', '93 692-00-77	', '0000-00-00 00:00:00', '2023-06-13 12:20:24'),
(68, 'Feruza', 'O\'ktamovna', 'Akbarova', '11167', '1-toifali mutaxassis ( Axborot markazi )', '1814', '78 771-04-51', '90 876-19-87	', '0000-00-00 00:00:00', '2023-06-13 12:22:45'),
(69, 'Maxfirat', 'Uzoqovna', 'Jumayeva', '9582', 'Bosh mutaxassis', '1805', '78 771-04-25', '93-423-76-76	', '0000-00-00 00:00:00', '2023-06-13 12:28:57'),
(70, 'Mashxura', 'Djalilovna', 'Ochilova', '9582', 'Yetakchi mutaxassis', '1805', '78 771-04-25', '90 427-89-78	', '0000-00-00 00:00:00', '2023-06-13 12:30:55'),
(71, 'SHaxlo', 'SHamsiddinovna', 'Begimqulova', '9582', 'Yetakchi mutaxassis', '1805', '78 771-04-25', '97 801-14-10	', '0000-00-00 00:00:00', '2023-06-13 12:33:06'),
(72, 'Muxayyo ', 'Maxmudovna', 'Hakimova ', '7523', '1', '', '', '', '0000-00-00 00:00:00', '2023-06-13 12:34:14'),
(73, 'G\'affar', 'Norbutayevich', 'Raxmonov', '9582', 'Bosh mutaxassis ', '1805', '78 771-04-25', '91 951-81-11	', '0000-00-00 00:00:00', '2023-06-13 12:34:55'),
(74, 'Muxayyo', 'Maxmudovna', 'Hakimova ', '7523', '1-toifali mutaxassis', '2108', '78 770-27-91', '998973681842', '0000-00-00 00:00:00', '2023-06-13 12:35:23'),
(75, 'Nodira ', 'Raximovna', 'Nuriddinova ', '7523', 'Bosh mutaxassis', '2108', '78 770-27-91', '998973681829', '0000-00-00 00:00:00', '2023-06-13 12:36:24'),
(76, 'Baxodirjon', 'Nosirjon o\'g\'li', 'Qorayev', '9582', 'Yetakchi mutaxassis', '1805', '78 771-04-25', '93 690-43-23	', '0000-00-00 00:00:00', '2023-06-13 12:36:39'),
(77, 'Ma\'ruf ', 'Farmonqul o\'g\'li', 'Raxmatilloev ', '7523', 'Mutaxassis', '2108', '78 770-27-91', '998990928283', '0000-00-00 00:00:00', '2023-06-13 12:38:02'),
(78, 'Sunatillo', 'Asqarovich', 'Egamov', '9582', '1-toifali mutaxassis', '1805', '78 771-04-25', '90 427-95-59	', '0000-00-00 00:00:00', '2023-06-13 12:38:58'),
(79, 'Javohir', 'Tolibovich', 'Raxmanov', '9582', 'Yetakchi mutaxassis', '1805', '78 771-04-25			', '97 585-21-03	', '0000-00-00 00:00:00', '2023-06-13 12:41:36'),
(80, 'Mexrangiz ', 'Mirzonabi qizi ', 'Ramazanova ', '12197', 'Mutaxassis', '2122', '78 770-27-86', '998992782210', '0000-00-00 00:00:00', '2023-06-13 12:41:50'),
(81, 'Lochin ', 'Baxriddinovich', 'Avezov ', '7523', 'Mutaxassis', '2108', '78 770-27-91', '998933116103', '0000-00-00 00:00:00', '2023-06-13 12:43:17'),
(82, 'Umedjon ', 'Usmonovich ', 'Sunnatov ', '13331', 'Yitakchi mutaxassis ', '2108', '78 770-27-91', '998993601835', '0000-00-00 00:00:00', '2023-06-13 12:44:28'),
(83, 'Javohir', 'Tolibovich', 'Raxmanov', '9582', 'Yetakchi mutaxassis', '1805', '78 771-04-25			', '97 585-21-03	', '0000-00-00 00:00:00', '2023-06-13 12:44:33'),
(84, 'Oxunjon ', 'Olimjonovich ', 'Хomidov ', '11780', 'Bosh mutaxassis', '2106', '78 770-27-89', '998906472020', '0000-00-00 00:00:00', '2023-06-13 12:46:45'),
(85, 'Nurulla', 'Kenjayevich', 'Normurodov', '8138', 'Bo\'lm boshlig\'i', '1811', '78 771-04-28', '90 666-59-99	', '0000-00-00 00:00:00', '2023-06-13 12:47:29'),
(86, 'Kamola ', 'Komiljonovna ', 'Djumaeva  ', '14043', 'Yitakchi mutaxassis ', '2106', '78 770-27-89', '998913342220', '0000-00-00 00:00:00', '2023-06-13 12:48:31'),
(87, 'Elyor', 'Qurbonovich', 'Qurbonov', '8138', 'Yetakchi mutaxassis', '1811', '78 771-04-28', '91 957-10-01	', '0000-00-00 00:00:00', '2023-06-13 12:49:08'),
(88, 'Nigora', 'SHaropovna', 'Bozorova', '10346', 'Kassa mudiri', '-', '75 223-01-72', '91 474-55-54	', '0000-00-00 00:00:00', '2023-06-13 12:51:17'),
(89, 'Feruz ', 'Ziyodullaevich', 'Bafoev ', '10042', 'Boshqaruvchi', '2103', '78 770-27-90', '998973681828', '0000-00-00 00:00:00', '2023-06-13 12:52:17'),
(90, 'Sumbula ', 'Axtamovna', 'Arabova', '10346', 'Nazoratchi', '-', '75 223-01-72', '90 427-84-74	', '0000-00-00 00:00:00', '2023-06-13 12:52:53'),
(91, 'Zumrad', 'Sobirovna', 'Ro\'ziqulova ', '10346', 'Katta kassir', '-', '75 223-01-72', '99 677-19-22	', '0000-00-00 00:00:00', '2023-06-13 12:54:38'),
(92, 'Mohichexra', 'Zokirjon qizi', 'Mirzayeva', '10346', 'Kassir', '-', '75 223-01-72', '91 466-55-60	', '0000-00-00 00:00:00', '2023-06-13 12:56:43'),
(93, 'Fotima', 'Karimovna', 'Abduraxmonova', '10346', 'Kassir', '-', '75 223-01-72', '95 377-01-21	', '0000-00-00 00:00:00', '2023-06-14 03:52:31'),
(94, 'Zairjon', 'Baxtiyarovich', 'Jumaniyazov', '11586', 'Bo‘lim boshlig‘i', '2252', '78 770 43 90', '88 037 11 11', '0000-00-00 00:00:00', '2023-06-14 04:10:37'),
(95, 'Fayoza', 'Akbar qizi', 'Yangiyeva', '10346', 'Kassir', '-', '75 223-01-72', '90 674-23-07	', '0000-00-00 00:00:00', '2023-06-14 04:45:48'),
(96, 'Feruza', 'Safaraliyevna', 'Majitova', '10346', 'Kassir', '-', '75 223-01-72', '97 229-10-23	', '0000-00-00 00:00:00', '2023-06-14 04:48:37'),
(97, 'Oydin', 'Zayniddinovna', 'Karimova', '11167', '1-toifali mutaxassis', '1801', '78 771-04-24', '90 720-90-00	', '0000-00-00 00:00:00', '2023-06-14 05:04:58'),
(98, 'Zarafshon', 'Ismailovna', 'Kuryazova', '12189', 'Kassa mudiri', '22 45', '78 770 43 94', '97 458 41 41', '0000-00-00 00:00:00', '2023-06-14 05:08:44'),
(99, 'Javohir', 'Anvar o\'g\'li', 'Jo\'raboyev', '8072', 'Mutaxassis', '-', '-', '99 779-11-15', '0000-00-00 00:00:00', '2023-06-14 05:11:22'),
(100, 'Moxinur', 'Ixtiyor qizi ', 'Tursunova', '14054', 'Katta nazoratchi-kassir', '-', '78 771-04-96', '88 124-99-97	', '0000-00-00 00:00:00', '2023-06-14 05:17:40'),
(101, 'Yorqinoy', 'SHarofiddinovna', 'Xudoyberdiyeva', '14054', 'Nazoratchi-kassir', '-', '78 771-04-96', '94 333-33-12	', '0000-00-00 00:00:00', '2023-06-14 05:19:10'),
(102, 'Nilufar', 'Xamza qizi', 'Norova', '14054', 'Nazoratchi-kassir', '-', '78 771-04-96', '97 678-22-02	', '0000-00-00 00:00:00', '2023-06-14 05:20:31'),
(103, 'SHaxnoza', 'Abbosovna', 'Omonova', '14054', 'Nazoratchi-kassir', '-', '78 771-04-96', '91 459-84-87	', '0000-00-00 00:00:00', '2023-06-14 05:28:38'),
(104, 'Dilobar', 'Jamshid qizi', 'Jabborova', '14054', 'Nazoratchi-kassir', '-', '78 771-04-96', '90 877-92-01	', '0000-00-00 00:00:00', '2023-06-14 05:29:48'),
(105, 'SHaxnoza', 'Ilyosovna', 'Berdiyeva', '14054', 'Nazoratchi-kassir', '-', '78 771-04-96', '99 059-17-30	', '0000-00-00 00:00:00', '2023-06-14 05:30:50'),
(106, 'Xurshida', 'Muxiddin qizi', 'Saidova', '14054', 'Nazoratchi-kassir', '-', '78 771-04-96', '99 661-29-39	', '0000-00-00 00:00:00', '2023-06-14 05:32:14'),
(107, 'Oydin', 'Zayniddinovna', 'Karimova', '13613', 'Arxivchi', '1801', '78 771-04-24', '90 720-90-00	', '0000-00-00 00:00:00', '2023-06-14 05:34:34'),
(108, 'Jamshid', 'Bozorovich', 'Suyunov', '8072', 'Mutaxassis', '1807', '78 771-04-32', '88 980-90-99', '0000-00-00 00:00:00', '2023-06-14 05:39:53'),
(109, 'Xusniddin', 'Davlatyorovich', 'Bekchanov', '9911', 'Bosh mutaxassis', '2250', '78 770 43 91', '99 509 78 62', '0000-00-00 00:00:00', '2023-06-14 05:49:35'),
(110, 'Vohid', 'Axmadovich', 'Raxmonov', '6753', 'Bosh mutaxassis', '1860', '78 771-04-08', '-', '0000-00-00 00:00:00', '2023-06-14 05:53:06'),
(111, 'Bobur', 'Yuldashovich', 'Matyakubov', '5355', 'Mutaxassis', '2249', '78 770 43 95', '90 713 47 37', '0000-00-00 00:00:00', '2023-06-14 05:53:37'),
(112, 'Oygul', 'Odilovna', 'Nazarova', '11423', 'Markaz boshlig\'i', '-', '95 506-01-55', '99 106-01-83	', '0000-00-00 00:00:00', '2023-06-14 05:55:51'),
(113, 'Farrux', 'Farxodovich', 'Suleymanov', '', 'Boshqaruvchi', '12-02', '78 221-00-63', '94 350-70-35', '0000-00-00 00:00:00', '2023-06-14 05:59:01'),
(114, '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '2023-06-14 05:59:04'),
(115, 'Surayyo', 'Zokirovna', 'Daminova', '14909', 'Nazoratchi-kassir', '-', '95 506-01-55', '97 317-07-21	', '0000-00-00 00:00:00', '2023-06-14 05:59:44'),
(116, 'Nargiza', 'Boymurodovna', 'Xolmurodova', '14909', 'Nazoratchi-kassir', '-', '95 506-01-55', '90 863-32-20	', '0000-00-00 00:00:00', '2023-06-14 06:02:08'),
(117, 'Dilshodbek', 'Shazadevch', 'Atajonov', '13233', 'Boshqaruvchi', '2200', '787704380', '993304378', '0000-00-00 00:00:00', '2023-06-14 06:16:06'),
(118, 'Farrux', 'Farxodovich', 'Suleymanov', '', 'Boshqaruvchi', '12-02', '78-221-00-63', '94 350-70-35', '0000-00-00 00:00:00', '2023-06-14 06:18:56'),
(119, 'Anvar', 'Ruzmatovich', 'Bekchonov', '13233', 'Boshqaruvchi o\'rinbosari', '2201', '787704380', '973623377', '0000-00-00 00:00:00', '2023-06-14 06:23:51'),
(120, 'Sherzod', 'Karimberdievich', 'Xajiev', '13319', 'Bohsqaruvchi o\'rinbosari', '', '', '974594114', '0000-00-00 00:00:00', '2023-06-14 06:25:23'),
(121, 'Baxrom', 'Boxodirovich', 'Yuldashev', '13319', 'Bosh buxgalter', '2224', '787704382', '977907090', '0000-00-00 00:00:00', '2023-06-14 06:28:45'),
(122, 'Xursandbek', 'Saburovich', 'Begjanov', '13233', 'Boshqaruvchi o\'rinbosari', '2201', '787704380', '972117877', '0000-00-00 00:00:00', '2023-06-14 06:28:46'),
(123, 'Moxira', 'Ulug\'bekovna', 'Zaripova', '13319', 'Bosh buxgalter o\'rinbosari', '2224', '787704382', '973603839', '0000-00-00 00:00:00', '2023-06-14 06:30:40'),
(124, 'Latofat', 'Mammatsalaevna', 'Yusupova', '13319', 'Yetakchi mutaxassis (Axborot markazi)', '227', '787704384', '975253242', '0000-00-00 00:00:00', '2023-06-14 06:32:19'),
(125, 'Jur’atbek', 'Oltiboevich', 'Yakubov', '11948', 'Boshqaruvchisi o‘rinbosari', '2248', '78 770 43 98', '95 777 01 29', '0000-00-00 00:00:00', '2023-06-14 06:32:47'),
(126, 'O\'tkir', 'Sadullaevich', 'Djabbarov', '13319', '1-toifali mutaxassis(Bank qurilmalariga xizmat ko\'rsatish bo\'yicha)', '2221', '787704371', '974573111', '0000-00-00 00:00:00', '2023-06-14 06:33:52'),
(127, 'Farxod', 'Atabayevich', 'Bobajanov', '13233', 'Xaridlar bilan ishlash bo\'yicha', '2200', '787704380', '905585005', '0000-00-00 00:00:00', '2023-06-14 06:34:25'),
(128, 'Malika', 'Ismail qizi', 'Abdukarimova', '11948', 'Yetakchi mutaxassis (Axborot xizmati)', '2246', '78 770 43 96', '93 285 57 24', '0000-00-00 00:00:00', '2023-06-14 06:36:02'),
(129, 'Maxliyo', 'Omongaldievna', 'Rajabova', '11948', 'Mutaxassis (Bank qurilmalariga xizmat ko‘rsatish bo‘yicha)', '2246', '78 770 43 96', '91 433 39 13', '0000-00-00 00:00:00', '2023-06-14 06:39:44'),
(130, 'Mavjuda', 'Taxir qizi', 'Ro\'zmetova', '9300', 'Yetakchi mutaxassis ', '', '', '995145191', '0000-00-00 00:00:00', '2023-06-14 06:40:25'),
(131, 'Amirbek', 'G\'ayratboyevich', 'Xasanov', '9159', 'Bosh yurisqansult', '2203', '787704379', '904388008', '0000-00-00 00:00:00', '2023-06-14 06:41:59'),
(132, 'Xudoshukur', 'Ro‘zmatovich', 'Matchonov', '11948', 'Bosh buxgalter o‘rinbosari', '2244', '78 770 43 99', '97 130 32 42', '0000-00-00 00:00:00', '2023-06-14 06:44:38'),
(133, 'Mansurbek', 'Raximberganovich', 'Yusupov', '9159', 'Yetakchi yurisqansult', '2203', '787704379', '942312424', '0000-00-00 00:00:00', '2023-06-14 06:47:07'),
(134, 'Suxrob', 'Ravshanbekovich', 'Ruzmetov', '6698', 'Bosh  mutaxassis', '2242', '78 770 43 89', '91 430 30 66', '0000-00-00 00:00:00', '2023-06-14 06:49:28'),
(135, 'Jo‘shkin ', 'Ro‘ziboevich', 'Matkarimov', '6698', '1-toifali mutaxassis     ', '2242', '78 770 43 89', '99 064 57 57', '0000-00-00 00:00:00', '2023-06-14 06:51:02'),
(136, 'Abdulla', 'Arslon o\'g\'li', 'Matnazarov', '6517', 'Bosh mutaxasis', '2203', '787704379', '914365577', '0000-00-00 00:00:00', '2023-06-14 06:52:44'),
(137, 'Umrbek', 'Jumaniyoz o‘g‘li', 'Jumaniyozov', '6698', 'mutaxassis', '2242', '78 770 43 89', '88 459 22 02', '0000-00-00 00:00:00', '2023-06-14 06:53:25'),
(138, 'Abror', 'Sardorbek o‘g‘li', 'Atanazarov', '11586', 'Bosh  mutaxassis', '2252', '78 770 43 90', '91 422 04 04', '0000-00-00 00:00:00', '2023-06-14 06:55:31'),
(139, 'Sevara', 'Rajabboyevna', 'Latipova', '5839', '1-toifali mutaxasis ', '2203', '787704379', '914324414', '0000-00-00 00:00:00', '2023-06-14 06:58:40'),
(140, 'Umrbek', 'Farxodovich', 'Abdullaev', '11586', 'Bosh  mutaxassis', '2252', '78 770 43 90', '99 960 56 36', '0000-00-00 00:00:00', '2023-06-14 06:58:50'),
(141, 'Ismoiljon', 'Jumanazarovich', 'Kalandarov', '11586', 'Bosh  mutaxassis', '2252', '78 770 43 90', '97 526 00 97', '0000-00-00 00:00:00', '2023-06-14 07:00:40'),
(142, 'Intizor', 'Marimbayevna', 'Bekchanova', '5293', 'Yetakchi mutaxasis', '2203', '787704380', '907379500', '0000-00-00 00:00:00', '2023-06-14 07:03:47'),
(143, 'Axmatjon', 'Fazliddinovich', 'Soxibov', '11193', 'Boshqaruvchisi', '78210-02-47', '', '', '0000-00-00 00:00:00', '2023-06-14 07:06:25'),
(144, 'Sarvar', 'Sardorbek o‘g‘li', 'Farxodov', '11586', 'mutaxassis', '2252', '78 770 43 90', '90 947 94 14', '0000-00-00 00:00:00', '2023-06-14 07:06:48'),
(145, 'Nazokat', 'Kamiljonovna', 'Salaeva', '12189', 'Katta kassir', '2245', '78 770 43 94', '91 571 03 88', '0000-00-00 00:00:00', '2023-06-14 07:09:16'),
(146, 'Iskandar', 'Quranbayevich', 'Niyozmetov', '8085', 'Bosh mutaxasis', '2203', '787704380', '912771111', '0000-00-00 00:00:00', '2023-06-14 07:10:30'),
(147, 'Gulnoza', 'Xushnudovna', 'Kilichova', '12189', 'Назоратчи', '2245', '78 770 43 94', '91 275 70 08', '0000-00-00 00:00:00', '2023-06-14 07:11:09'),
(148, 'Nodira', 'Aminovna', 'Madrimova', '12189', 'Kassir', '2245', '78 770 43 94', '97 178 81 81', '0000-00-00 00:00:00', '2023-06-14 07:13:49'),
(149, 'Alisher', 'Zokir o\'g\'li', 'Qalandarov', '5700', 'Yetakchi mutaxasis', '2206', '787704373', '909793535', '0000-00-00 00:00:00', '2023-06-14 07:14:03'),
(150, 'Moxinur', 'Ergashovna', 'Sabirova', '12189', 'Kassir', '2245', '78 770 43 94', '99 557 47 09', '0000-00-00 00:00:00', '2023-06-14 07:16:13'),
(151, 'Dilnavoz', 'Jumanazarovna', 'Kutlieva', '12189', 'Kassir', '2245', '78 770 43 94', '91 423 55 65', '0000-00-00 00:00:00', '2023-06-14 07:20:35'),
(152, 'Feroza', 'Qadambaevna', 'Nurmetova', '12189', 'Kassir', '2245', '78 770 73 94', '97 453 99 79', '0000-00-00 00:00:00', '2023-06-14 07:21:34'),
(153, 'Mansur', 'Jumanyozovich', 'Satimov', '12903', 'Bo\'lim boshlig\'i', '2205', '787704373', '941174777', '0000-00-00 00:00:00', '2023-06-14 07:21:43'),
(154, 'Oybek', 'Achilbayyevich', 'Otajonov', '12903', 'Bosh mutaxasis', '2205', '787704373', '905790208', '0000-00-00 00:00:00', '2023-06-14 07:25:00'),
(155, 'Salomat', 'Anvarovna', 'Satiboldiyeva', '12903', 'Bosh mutaxasis', '2205', '787704373', '973641217', '0000-00-00 00:00:00', '2023-06-14 07:28:49'),
(156, 'Nazokat', 'Mammatsalayevna', 'Yusupova', '12903', 'Yetakchi mutaxasis', '2205', '787704373', '919147412', '0000-00-00 00:00:00', '2023-06-14 07:32:40'),
(157, 'Rustamboy', 'Abdullayevich', 'Xudayberganov', '12903', 'Bosh mutaxasis', '2205', '787704373', '912755371', '0000-00-00 00:00:00', '2023-06-14 07:35:51'),
(158, 'Zumrad', 'Farxod qizi', 'Rajabova', '12903', 'Yetakchi mutaxasis', '2205', '787704373', '993470517', '0000-00-00 00:00:00', '2023-06-14 07:38:30'),
(159, 'Oxunjon', 'Islomovich', 'Axmedov', '12903', 'Yetakchi mutaxasis', '2205', '787704373', '995002122', '0000-00-00 00:00:00', '2023-06-14 07:40:55'),
(160, 'Alisher', 'Muratbaevich', 'Bekbaltaev', '8935', 'boshqaruvchisi', '-', '2302', '787706173', '0000-00-00 00:00:00', '2023-06-14 07:45:31'),
(161, 'Elshod', 'Sherzod o\'g\'li', 'Nazirbayev', '12903', 'Mutaxasis', '2205', '787704373', '', '0000-00-00 00:00:00', '2023-06-14 07:45:43'),
(162, 'Elshod', 'Sherzod o\'g\'li', 'Nazirbayev', '12903', 'Mutaxasis', '2205', '787704373', '', '0000-00-00 00:00:00', '2023-06-14 08:00:54'),
(163, 'Elshod', 'Sherzod o\'g\'li', 'Nazirbayev', '12903', 'Mutaxasis', '2205', '787704373', '', '0000-00-00 00:00:00', '2023-06-14 08:03:29'),
(164, 'Jasur', 'Munisovich', 'Xudayberganov', '12903', 'Bosh mutaxasis', '2205', '787704373', '975120405', '0000-00-00 00:00:00', '2023-06-14 08:05:25'),
(165, 'Sardor', 'Samandarovich', 'Xakimov', '12903', 'Bosh mutaxasis', '2205', '787704373', '975128785', '0000-00-00 00:00:00', '2023-06-14 08:07:20'),
(166, 'Xabibjon', 'Rasulovich', 'Qilichov', '12903', 'Mutaxasis', '2205', '787704373', '946155538', '0000-00-00 00:00:00', '2023-06-14 08:09:59'),
(167, 'Maxmudjon', 'Vladimirovich', 'Xudayberganov', '12903', 'Bosh mutaxasis', '2205', '787704373', '914333343', '0000-00-00 00:00:00', '2023-06-14 08:12:25'),
(168, 'Mavjuda', 'Taxir qizi', 'Ro\'zmetova', '50100', 'Yetakchi mutaxassis ', '', '', '995145191', '0000-00-00 00:00:00', '2023-06-14 09:05:22'),
(169, ' Jo\'rabek', 'Baxodirovich', 'Rajabov', '9032', 'Bosh mutaxassis', '', '787704383', '972113636', '0000-00-00 00:00:00', '2023-06-14 09:09:34'),
(170, 'Bobur', 'Oybek o\'g\'li', 'Erkinov', '9032', '1-toifali mutaxassis', '', '787704384', '970903619', '0000-00-00 00:00:00', '2023-06-14 09:12:02'),
(171, 'Alisher', 'Nuraddinovich', 'Xidirbayev', '14269', 'Bosh mutaxassis', '2330', '78-770-61-78', '97-788-99-98', '0000-00-00 00:00:00', '2023-06-14 09:14:14'),
(172, 'Diyor', 'Erkinovich', 'Qalandarov', '12199', 'Bo\'lim boshlig\'i', '2221', '787704371', '999699654', '0000-00-00 00:00:00', '2023-06-14 09:14:54'),
(173, 'Maloxat', 'Meylibaevna', 'Iskandarova', '6712', 'Назоратчи-кассир', '2242', '78 770 43 89', '99 949 32 72', '0000-00-00 00:00:00', '2023-06-14 09:16:04'),
(174, 'Avazmuxammad', 'Shavkatovich', 'Aminov', '12199', 'Bosh mutaxassis', '2221', '787704371', '974537676', '0000-00-00 00:00:00', '2023-06-14 09:16:33'),
(175, 'Dilshod', 'Kodirovich ', 'Yuldashev', '12199', 'Bosh mutaxassis', '2221', '787704371', '974566226', '0000-00-00 00:00:00', '2023-06-14 09:17:48'),
(176, 'Soliyajon', 'G‘aripovna', 'Sharipova', '6712', 'Nazoratchi-kassir', '2242', '78 770 43 89', '99 573 93 96', '0000-00-00 00:00:00', '2023-06-14 09:18:07'),
(177, 'Napesov', 'Sheripbaevich', 'Shakir', '14269', 'etakchi mutaxassisi', '23-30', '78-770-61-78', '99-525-73-36', '0000-00-00 00:00:00', '2023-06-14 09:19:07'),
(178, 'Guloy', 'Baxramovna', 'Matyaqubova', '6712', 'Nazoratchi-kassir', '2242', '78 770 43 89', '99 063 18 28', '0000-00-00 00:00:00', '2023-06-14 09:19:18'),
(179, 'Sherzod', 'Baxtiyor o\'g\'li', 'Yusupov', '12199', 'Mutaxassis', '2221', '787704371', '973606757', '0000-00-00 00:00:00', '2023-06-14 09:19:28'),
(180, 'Go‘zal ', 'Baxtiyarovna', 'Karimova ', '6712', 'Nazoratchi-kassir', '2242', '78 770 43 89', '99 456 3151', '0000-00-00 00:00:00', '2023-06-14 09:20:48'),
(181, 'Elyor', 'Baxodirovich', 'Matkarimov', '8535', 'Bo\'lim boshlig\'i', '2226', '787704386', '973647737', '0000-00-00 00:00:00', '2023-06-14 09:22:32'),
(182, 'Jamoladdin', 'Kamoladdin o\'g\'li', 'Qalandarov', '8535', 'Bosh mutaxassis', '2213', '787704337', '972217761', '0000-00-00 00:00:00', '2023-06-14 09:24:12'),
(183, 'Suxrob ', 'Muxamad o\'g\'li', 'Raxmatov', '10042', 'Boshqaruvchi o\'rinbosari', '-', '-', '998973681834', '0000-00-00 00:00:00', '2023-06-14 09:24:18'),
(184, 'Islamjon', 'Komilovich', 'Avezmetov', '8535', 'Yetakchi mutaxassis ', '2214', '787704338', '977918282', '0000-00-00 00:00:00', '2023-06-14 09:25:25'),
(185, 'Rustam ', 'Olimjonovich ', 'Хudoyberdiev ', '10042', 'Bosh Buxgalter', '2104', '78 770-27-87', '998973681868', '0000-00-00 00:00:00', '2023-06-14 09:26:12'),
(186, 'Karimova', 'Salavatovna', 'Raya', '8935', 'bosh buxgalter', '-', '2304', '787706167', '0000-00-00 00:00:00', '2023-06-14 09:26:16'),
(187, 'Dilfuza', 'Shokir qizi', 'Jumaniyozova', '8535', 'Yetakchi mutaxassis ', '2214', '787704338', '974519377', '0000-00-00 00:00:00', '2023-06-14 09:27:02'),
(188, 'Bobur', 'Ravshan o\'g\'li', 'Iskandarov', '8535', 'Mutaxassis', '2214', '787704338', '999619763', '0000-00-00 00:00:00', '2023-06-14 09:28:36'),
(189, 'Murat', 'Abatovich', 'Matenov', '8935', 'Boshqaruvchi o‘rinbosari', '-', '2304', '612240923', '0000-00-00 00:00:00', '2023-06-14 09:29:12'),
(190, 'Maqsudjon ', 'Mansurovich ', 'Inoyatov ', '10042', 'Bosh Buxgalter o\'rinbosari', '2122', '78 770-27-86', '998973681865', '0000-00-00 00:00:00', '2023-06-14 09:32:09'),
(191, 'Muratbek', 'Jumabekovich', 'Yusupov', '8935', 'Bosh buxgalter o‘rinbosari', '-', '2304', '97 359 69 66', '0000-00-00 00:00:00', '2023-06-14 09:34:12'),
(192, 'Sohib', 'Saidovich', 'O\'roqov', '10042', 'Yitakchi mutaxassis (Bank qurilmalariga xizmat ko\'rsatish bo\'yicha)', '2110', '78 770-30-90', '998934370020', '0000-00-00 00:00:00', '2023-06-14 09:34:20'),
(193, 'Nilufar ', 'Zokirovna', 'Ishpulatova ', '10042', 'Mutaxassis (Axborot markazi)', '-', '79 224-98-01', '998906650994', '0000-00-00 00:00:00', '2023-06-14 09:35:49'),
(194, 'Elvira', 'Maxataevna', 'Asaubekova', '8935', 'Bosh buxgalter o‘rinbosari', '-', '2304', '78 770 61 67', '0000-00-00 00:00:00', '2023-06-14 09:36:46'),
(195, 'Dildor ', 'Kaimovna ', 'Axmat-Oxunova ', '12520', 'Mutaxassis', '2125', '78 770-27-99', '998973681845', '0000-00-00 00:00:00', '2023-06-14 09:42:52'),
(196, 'G\'iyos  ', 'Uroqovich', 'Nosirov  ', '12520', 'Mutaxassis', '2110', '78 770-30-90', '998913388000', '0000-00-00 00:00:00', '2023-06-14 09:44:49'),
(197, 'Husen ', 'Alisher o\'g\'li', 'Хudoyberdiev ', '12005', 'Mutaxassis', '2125', '78 770-27-99', '998913333540', '0000-00-00 00:00:00', '2023-06-14 09:52:28'),
(198, 'Gulsara', 'Omirbay kizi', 'Turdыeva', '8935', 'mutaxassis (axborot markazi)', '-', '-', '91 304 18 68', '0000-00-00 00:00:00', '2023-06-14 09:55:01'),
(199, 'Eleonora ', 'Temirpulatovna', 'Aminova ', '12197', 'Bo\'lim boshlig\'i', '2122', '78 770-27-86', '998973681809', '0000-00-00 00:00:00', '2023-06-14 09:55:43'),
(200, 'Islam', 'Omirzakovich', 'Koshjanov', '8935', 'mutaxassis (Bank qurilmalariga xizmat ko‘rsatish bo‘yicha)', '-', '-', '999501100', '0000-00-00 00:00:00', '2023-06-14 09:57:18'),
(201, 'Sharofiddin ', 'Abduraxmonovich ', 'Raxmatullaev ', '12197', 'Bosh mutaxassis', '2122', '78 770-27-86', '998900897700', '0000-00-00 00:00:00', '2023-06-14 09:58:50'),
(202, 'Yerpolat', 'Kıtaybekovich', 'Kallıxanov', '12232', 'Bo‘lim boshlig‘i', '-', '2382', '78 770 62 35', '0000-00-00 00:00:00', '2023-06-14 10:05:17'),
(203, 'Venera', 'Pirimbetovna', 'Kurbanova', '12232', 'bosh mutaxassis', '-', '2382', '78 770 62 35', '0000-00-00 00:00:00', '2023-06-14 10:06:16'),
(204, 'Feruza', 'Artıkovna', 'Seytimbetova', '12232', '1-toifali mutaxassis', '-', '2382', '78 770 62 35', '0000-00-00 00:00:00', '2023-06-14 10:07:42'),
(205, 'Dauletbek', 'Axmetovich', 'Madreymov', '12232', 'mutaxassis', '-', '2382', '78 770 62 35', '0000-00-00 00:00:00', '2023-06-14 10:08:38'),
(206, 'Dauletbek', 'Axmetovich', 'Madreymov', '12232', 'mutaxassis', '-', '2382', '78 770 62 35', '0000-00-00 00:00:00', '2023-06-14 10:08:43'),
(207, 'Dauranbek', 'Onalbaevich', 'Jaksımbaev', '6805', '1-toifali mutaxassis', '-', '2304', '78 770 61 67', '0000-00-00 00:00:00', '2023-06-14 10:11:10'),
(208, 'Baxodir ', 'Normurodovich ', 'Raxmatov ', '12197', 'Bosh mutaxassis', '2122', '78 770-27-86', '998970860007', '0000-00-00 00:00:00', '2023-06-14 10:14:35'),
(209, 'Kibriyo ', 'Abdugafurovna,', 'Shodmonova ', '12197', 'Bosh mutaxassis', '2122', '78 770-27-86', '998973681872', '0000-00-00 00:00:00', '2023-06-14 10:15:47'),
(210, 'Gauxar', 'Joldasbaevna', 'Bakirova', '7439', '1-toifali mutaxassis', '-', '2382', '78 770 62 35', '0000-00-00 00:00:00', '2023-06-14 10:17:50'),
(211, 'Indira', 'Nizamatdinovna', 'Smaylova', '13571', 'Katta nazoratchi - kassir', '-', '-', '91 300 83 73', '0000-00-00 00:00:00', '2023-06-14 10:19:26');

-- --------------------------------------------------------

--
-- Структура таблицы `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','moderator') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `member`
--

INSERT INTO `member` (`id`, `login`, `password`, `branch`, `role`, `created_at`, `updated_at`) VALUES
(11, 'headbank', 'f3300955#F', '01037', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'headbank', 'f3300955#F', '01037', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'boshbank', 'qazwsx1', '00001', 'moderator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'sirdaryo', 'sdf123+', '00100', 'moderator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'buxoro', 'rty123+', '00030', 'moderator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'qashqadaryo', '8i6g46', '00050', 'moderator', '0000-00-00 00:00:00', '2023-06-09 15:43:22'),
(18, 'navoiy', 'zxc123+', '00060', 'moderator', '0000-00-00 00:00:00', '2023-06-12 04:44:38'),
(19, 'jizzax', 'rty123+', '00040', 'moderator', '0000-00-00 00:00:00', '2023-06-13 06:58:42'),
(20, 'toshkentvil', 'WSX123+', '00001', 'moderator', '0000-00-00 00:00:00', '2023-06-13 07:00:50'),
(21, 'fargona', 'bnm123+', '00110', 'moderator', '0000-00-00 00:00:00', '2023-06-13 09:23:37'),
(22, 'toshkentshah', 'bnm123+', '00140', 'moderator', '0000-00-00 00:00:00', '2023-06-13 10:09:58'),
(23, 'namangan', 'fgh123+', '00070', 'moderator', '0000-00-00 00:00:00', '2023-06-13 10:37:16'),
(24, 'xorazm', 'ert123+', '00120', 'moderator', '0000-00-00 00:00:00', '2023-06-13 10:40:17'),
(25, 'samarqand', 'sdf123+', '00080', 'moderator', '0000-00-00 00:00:00', '2023-06-14 04:16:36'),
(26, 'nukus', 'vbn123+', '00010', 'moderator', '0000-00-00 00:00:00', '2023-06-14 04:42:03'),
(27, 'termiz', 'dfg123+', '00090', 'moderator', '0000-00-00 00:00:00', '2023-06-14 07:06:49'),
(28, 'andijon', 'ert123+', '00020', 'moderator', '0000-00-00 00:00:00', '2023-06-14 09:29:39'),
(30, 'beruniy', 'vbn123+', '00010', 'moderator', '0000-00-00 00:00:00', '2023-06-14 09:48:33');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT для таблицы `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
