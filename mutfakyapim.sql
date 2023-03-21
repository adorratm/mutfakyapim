-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2023 at 08:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mutfakyapim`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `seo_url` longtext DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `img_url`, `content`, `category_id`, `lang`, `rank`, `isActive`, `seo_url`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 'Yazı Deneme', '522ba2be4c5ed824b8c0a76857a78898.webp', 'test', 1, 'tr', 1, 1, 'yazi-deneme', '2022-11-21 12:42:55', '2023-02-20 13:49:45', '2022-11-21 12:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `seo_url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `seo_url`, `img_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'Blog Yazıları', 'blog-yazilari', NULL, 'tr', 1, 1, '2022-11-21 12:42:35', '2022-11-21 12:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `dial_code` int(11) DEFAULT NULL,
  `currency_name` varchar(20) DEFAULT NULL,
  `currency_symbol` varchar(20) DEFAULT NULL,
  `currency_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`ID`, `code`, `name`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'AF', 'Afghanistan', 93, 'Afghan afghani', 'Ø‹', 'AFN'),
(2, 'AL', 'Albania', 355, 'Albanian lek', 'L', 'ALL'),
(3, 'DZ', 'Algeria', 213, 'Algerian dinar', 'Ø¯.Ø¬', 'DZD'),
(4, 'AS', 'American Samoa', 1684, '', '', ''),
(5, 'AD', 'Andorra', 376, 'Euro', 'â‚¬', 'EUR'),
(6, 'AO', 'Angola', 244, 'Angolan kwanza', 'Kz', 'AOA'),
(7, 'AI', 'Anguilla', 1264, 'East Caribbean dolla', '$', 'XCD'),
(8, 'AQ', 'Antarctica', 0, '', '', ''),
(9, 'AG', 'Antigua And Barbuda', 1268, 'East Caribbean dolla', '$', 'XCD'),
(10, 'AR', 'Argentina', 54, 'Argentine peso', '$', 'ARS'),
(11, 'AM', 'Armenia', 374, 'Armenian dram', '', 'AMD'),
(12, 'AW', 'Aruba', 297, 'Aruban florin', 'Æ’', 'AWG'),
(13, 'AU', 'Australia', 61, 'Australian dollar', '$', 'AUD'),
(14, 'AT', 'Austria', 43, 'Euro', 'â‚¬', 'EUR'),
(15, 'AZ', 'Azerbaijan', 994, 'Azerbaijani manat', '', 'AZN'),
(16, 'BS', 'Bahamas The', 1242, '', '', ''),
(17, 'BH', 'Bahrain', 973, 'Bahraini dinar', '.Ø¯.Ø¨', 'BHD'),
(18, 'BD', 'Bangladesh', 880, 'Bangladeshi taka', 'à§³', 'BDT'),
(19, 'BB', 'Barbados', 1246, 'Barbadian dollar', '$', 'BBD'),
(20, 'BY', 'Belarus', 375, 'Belarusian ruble', 'Br', 'BYR'),
(21, 'BE', 'Belgium', 32, 'Euro', 'â‚¬', 'EUR'),
(22, 'BZ', 'Belize', 501, 'Belize dollar', '$', 'BZD'),
(23, 'BJ', 'Benin', 229, 'West African CFA fra', 'Fr', 'XOF'),
(24, 'BM', 'Bermuda', 1441, 'Bermudian dollar', '$', 'BMD'),
(25, 'BT', 'Bhutan', 975, 'Bhutanese ngultrum', 'Nu.', 'BTN'),
(26, 'BO', 'Bolivia', 591, 'Bolivian boliviano', 'Bs.', 'BOB'),
(27, 'BA', 'Bosnia and Herzegovina', 387, 'Bosnia and Herzegovi', 'KM or ÐšÐœ', 'BAM'),
(28, 'BW', 'Botswana', 267, 'Botswana pula', 'P', 'BWP'),
(29, 'BV', 'Bouvet Island', 0, '', '', ''),
(30, 'BR', 'Brazil', 55, 'Brazilian real', 'R$', 'BRL'),
(31, 'IO', 'British Indian Ocean Territory', 246, 'United States dollar', '$', 'USD'),
(32, 'BN', 'Brunei', 673, 'Brunei dollar', '$', 'BND'),
(33, 'BG', 'Bulgaria', 359, 'Bulgarian lev', 'Ð»Ð²', 'BGN'),
(34, 'BF', 'Burkina Faso', 226, 'West African CFA fra', 'Fr', 'XOF'),
(35, 'BI', 'Burundi', 257, 'Burundian franc', 'Fr', 'BIF'),
(36, 'KH', 'Cambodia', 855, 'Cambodian riel', 'áŸ›', 'KHR'),
(37, 'CM', 'Cameroon', 237, 'Central African CFA ', 'Fr', 'XAF'),
(38, 'CA', 'Canada', 1, 'Canadian dollar', '$', 'CAD'),
(39, 'CV', 'Cape Verde', 238, 'Cape Verdean escudo', 'Esc or $', 'CVE'),
(40, 'KY', 'Cayman Islands', 1345, 'Cayman Islands dolla', '$', 'KYD'),
(41, 'CF', 'Central African Republic', 236, 'Central African CFA ', 'Fr', 'XAF'),
(42, 'TD', 'Chad', 235, 'Central African CFA ', 'Fr', 'XAF'),
(43, 'CL', 'Chile', 56, 'Chilean peso', '$', 'CLP'),
(44, 'CN', 'China', 86, 'Chinese yuan', 'Â¥ or å…ƒ', 'CNY'),
(45, 'CX', 'Christmas Island', 61, '', '', ''),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 'Australian dollar', '$', 'AUD'),
(47, 'CO', 'Colombia', 57, 'Colombian peso', '$', 'COP'),
(48, 'KM', 'Comoros', 269, 'Comorian franc', 'Fr', 'KMF'),
(49, 'CG', 'Congo', 242, '', '', ''),
(50, 'CD', 'Congo The Democratic Republic Of The', 242, '', '', ''),
(51, 'CK', 'Cook Islands', 682, 'New Zealand dollar', '$', 'NZD'),
(52, 'CR', 'Costa Rica', 506, 'Costa Rican colÃ³n', 'â‚¡', 'CRC'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, '', '', ''),
(54, 'HR', 'Croatia (Hrvatska)', 385, '', '', ''),
(55, 'CU', 'Cuba', 53, 'Cuban convertible pe', '$', 'CUC'),
(56, 'CY', 'Cyprus', 357, 'Euro', 'â‚¬', 'EUR'),
(57, 'CZ', 'Czech Republic', 420, 'Czech koruna', 'KÄ', 'CZK'),
(58, 'DK', 'Denmark', 45, 'Danish krone', 'kr', 'DKK'),
(59, 'DJ', 'Djibouti', 253, 'Djiboutian franc', 'Fr', 'DJF'),
(60, 'DM', 'Dominica', 1767, 'East Caribbean dolla', '$', 'XCD'),
(61, 'DO', 'Dominican Republic', 1809, 'Dominican peso', '$', 'DOP'),
(62, 'TP', 'East Timor', 670, 'United States dollar', '$', 'USD'),
(63, 'EC', 'Ecuador', 593, 'United States dollar', '$', 'USD'),
(64, 'EG', 'Egypt', 20, 'Egyptian pound', 'Â£ or Ø¬.Ù…', 'EGP'),
(65, 'SV', 'El Salvador', 503, 'United States dollar', '$', 'USD'),
(66, 'GQ', 'Equatorial Guinea', 240, 'Central African CFA ', 'Fr', 'XAF'),
(67, 'ER', 'Eritrea', 291, 'Eritrean nakfa', 'Nfk', 'ERN'),
(68, 'EE', 'Estonia', 372, 'Euro', 'â‚¬', 'EUR'),
(69, 'ET', 'Ethiopia', 251, 'Ethiopian birr', 'Br', 'ETB'),
(70, 'XA', 'External Territories of Australia', 61, '', '', ''),
(71, 'FK', 'Falkland Islands', 500, 'Falkland Islands pou', 'Â£', 'FKP'),
(72, 'FO', 'Faroe Islands', 298, 'Danish krone', 'kr', 'DKK'),
(73, 'FJ', 'Fiji Islands', 679, '', '', ''),
(74, 'FI', 'Finland', 358, 'Euro', 'â‚¬', 'EUR'),
(75, 'FR', 'France', 33, 'Euro', 'â‚¬', 'EUR'),
(76, 'GF', 'French Guiana', 594, '', '', ''),
(77, 'PF', 'French Polynesia', 689, 'CFP franc', 'Fr', 'XPF'),
(78, 'TF', 'French Southern Territories', 0, '', '', ''),
(79, 'GA', 'Gabon', 241, 'Central African CFA ', 'Fr', 'XAF'),
(80, 'GM', 'Gambia The', 220, '', '', ''),
(81, 'GE', 'Georgia', 995, 'Georgian lari', 'áƒš', 'GEL'),
(82, 'DE', 'Germany', 49, 'Euro', 'â‚¬', 'EUR'),
(83, 'GH', 'Ghana', 233, 'Ghana cedi', 'â‚µ', 'GHS'),
(84, 'GI', 'Gibraltar', 350, 'Gibraltar pound', 'Â£', 'GIP'),
(85, 'GR', 'Greece', 30, 'Euro', 'â‚¬', 'EUR'),
(86, 'GL', 'Greenland', 299, '', '', ''),
(87, 'GD', 'Grenada', 1473, 'East Caribbean dolla', '$', 'XCD'),
(88, 'GP', 'Guadeloupe', 590, '', '', ''),
(89, 'GU', 'Guam', 1671, '', '', ''),
(90, 'GT', 'Guatemala', 502, 'Guatemalan quetzal', 'Q', 'GTQ'),
(91, 'XU', 'Guernsey and Alderney', 44, '', '', ''),
(92, 'GN', 'Guinea', 224, 'Guinean franc', 'Fr', 'GNF'),
(93, 'GW', 'Guinea-Bissau', 245, 'West African CFA fra', 'Fr', 'XOF'),
(94, 'GY', 'Guyana', 592, 'Guyanese dollar', '$', 'GYD'),
(95, 'HT', 'Haiti', 509, 'Haitian gourde', 'G', 'HTG'),
(96, 'HM', 'Heard and McDonald Islands', 0, '', '', ''),
(97, 'HN', 'Honduras', 504, 'Honduran lempira', 'L', 'HNL'),
(98, 'HK', 'Hong Kong S.A.R.', 852, '', '', ''),
(99, 'HU', 'Hungary', 36, 'Hungarian forint', 'Ft', 'HUF'),
(100, 'IS', 'Iceland', 354, 'Icelandic krÃ³na', 'kr', 'ISK'),
(101, 'IN', 'India', 91, 'Indian rupee', 'â‚¹', 'INR'),
(102, 'ID', 'Indonesia', 62, 'Indonesian rupiah', 'Rp', 'IDR'),
(103, 'IR', 'Iran', 98, 'Iranian rial', 'ï·¼', 'IRR'),
(104, 'IQ', 'Iraq', 964, 'Iraqi dinar', 'Ø¹.Ø¯', 'IQD'),
(105, 'IE', 'Ireland', 353, 'Euro', 'â‚¬', 'EUR'),
(106, 'IL', 'Israel', 972, 'Israeli new shekel', 'â‚ª', 'ILS'),
(107, 'IT', 'Italy', 39, 'Euro', 'â‚¬', 'EUR'),
(108, 'JM', 'Jamaica', 1876, 'Jamaican dollar', '$', 'JMD'),
(109, 'JP', 'Japan', 81, 'Japanese yen', 'Â¥', 'JPY'),
(110, 'XJ', 'Jersey', 44, 'British pound', 'Â£', 'GBP'),
(111, 'JO', 'Jordan', 962, 'Jordanian dinar', 'Ø¯.Ø§', 'JOD'),
(112, 'KZ', 'Kazakhstan', 7, 'Kazakhstani tenge', '', 'KZT'),
(113, 'KE', 'Kenya', 254, 'Kenyan shilling', 'Sh', 'KES'),
(114, 'KI', 'Kiribati', 686, 'Australian dollar', '$', 'AUD'),
(115, 'KP', 'Korea North', 850, '', '', ''),
(116, 'KR', 'Korea South', 82, '', '', ''),
(117, 'KW', 'Kuwait', 965, 'Kuwaiti dinar', 'Ø¯.Ùƒ', 'KWD'),
(118, 'KG', 'Kyrgyzstan', 996, 'Kyrgyzstani som', 'Ð»Ð²', 'KGS'),
(119, 'LA', 'Laos', 856, 'Lao kip', 'â‚­', 'LAK'),
(120, 'LV', 'Latvia', 371, 'Euro', 'â‚¬', 'EUR'),
(121, 'LB', 'Lebanon', 961, 'Lebanese pound', 'Ù„.Ù„', 'LBP'),
(122, 'LS', 'Lesotho', 266, 'Lesotho loti', 'L', 'LSL'),
(123, 'LR', 'Liberia', 231, 'Liberian dollar', '$', 'LRD'),
(124, 'LY', 'Libya', 218, 'Libyan dinar', 'Ù„.Ø¯', 'LYD'),
(125, 'LI', 'Liechtenstein', 423, 'Swiss franc', 'Fr', 'CHF'),
(126, 'LT', 'Lithuania', 370, 'Euro', 'â‚¬', 'EUR'),
(127, 'LU', 'Luxembourg', 352, 'Euro', 'â‚¬', 'EUR'),
(128, 'MO', 'Macau S.A.R.', 853, '', '', ''),
(129, 'MK', 'Macedonia', 389, '', '', ''),
(130, 'MG', 'Madagascar', 261, 'Malagasy ariary', 'Ar', 'MGA'),
(131, 'MW', 'Malawi', 265, 'Malawian kwacha', 'MK', 'MWK'),
(132, 'MY', 'Malaysia', 60, 'Malaysian ringgit', 'RM', 'MYR'),
(133, 'MV', 'Maldives', 960, 'Maldivian rufiyaa', '.Þƒ', 'MVR'),
(134, 'ML', 'Mali', 223, 'West African CFA fra', 'Fr', 'XOF'),
(135, 'MT', 'Malta', 356, 'Euro', 'â‚¬', 'EUR'),
(136, 'XM', 'Man (Isle of)', 44, '', '', ''),
(137, 'MH', 'Marshall Islands', 692, 'United States dollar', '$', 'USD'),
(138, 'MQ', 'Martinique', 596, '', '', ''),
(139, 'MR', 'Mauritania', 222, 'Mauritanian ouguiya', 'UM', 'MRO'),
(140, 'MU', 'Mauritius', 230, 'Mauritian rupee', 'â‚¨', 'MUR'),
(141, 'YT', 'Mayotte', 269, '', '', ''),
(142, 'MX', 'Mexico', 52, 'Mexican peso', '$', 'MXN'),
(143, 'FM', 'Micronesia', 691, 'Micronesian dollar', '$', ''),
(144, 'MD', 'Moldova', 373, 'Moldovan leu', 'L', 'MDL'),
(145, 'MC', 'Monaco', 377, 'Euro', 'â‚¬', 'EUR'),
(146, 'MN', 'Mongolia', 976, 'Mongolian tÃ¶grÃ¶g', 'â‚®', 'MNT'),
(147, 'MS', 'Montserrat', 1664, 'East Caribbean dolla', '$', 'XCD'),
(148, 'MA', 'Morocco', 212, 'Moroccan dirham', 'Ø¯.Ù….', 'MAD'),
(149, 'MZ', 'Mozambique', 258, 'Mozambican metical', 'MT', 'MZN'),
(150, 'MM', 'Myanmar', 95, 'Burmese kyat', 'Ks', 'MMK'),
(151, 'NA', 'Namibia', 264, 'Namibian dollar', '$', 'NAD'),
(152, 'NR', 'Nauru', 674, 'Australian dollar', '$', 'AUD'),
(153, 'NP', 'Nepal', 977, 'Nepalese rupee', 'â‚¨', 'NPR'),
(154, 'AN', 'Netherlands Antilles', 599, '', '', ''),
(155, 'NL', 'Netherlands The', 31, '', '', ''),
(156, 'NC', 'New Caledonia', 687, 'CFP franc', 'Fr', 'XPF'),
(157, 'NZ', 'New Zealand', 64, 'New Zealand dollar', '$', 'NZD'),
(158, 'NI', 'Nicaragua', 505, 'Nicaraguan cÃ³rdoba', 'C$', 'NIO'),
(159, 'NE', 'Niger', 227, 'West African CFA fra', 'Fr', 'XOF'),
(160, 'NG', 'Nigeria', 234, 'Nigerian naira', 'â‚¦', 'NGN'),
(161, 'NU', 'Niue', 683, 'New Zealand dollar', '$', 'NZD'),
(162, 'NF', 'Norfolk Island', 672, '', '', ''),
(163, 'MP', 'Northern Mariana Islands', 1670, '', '', ''),
(164, 'NO', 'Norway', 47, 'Norwegian krone', 'kr', 'NOK'),
(165, 'OM', 'Oman', 968, 'Omani rial', 'Ø±.Ø¹.', 'OMR'),
(166, 'PK', 'Pakistan', 92, 'Pakistani rupee', 'â‚¨', 'PKR'),
(167, 'PW', 'Palau', 680, 'Palauan dollar', '$', ''),
(168, 'PS', 'Palestinian Territory Occupied', 970, '', '', ''),
(169, 'PA', 'Panama', 507, 'Panamanian balboa', 'B/.', 'PAB'),
(170, 'PG', 'Papua new Guinea', 675, 'Papua New Guinean ki', 'K', 'PGK'),
(171, 'PY', 'Paraguay', 595, 'Paraguayan guaranÃ­', 'â‚²', 'PYG'),
(172, 'PE', 'Peru', 51, 'Peruvian nuevo sol', 'S/.', 'PEN'),
(173, 'PH', 'Philippines', 63, 'Philippine peso', 'â‚±', 'PHP'),
(174, 'PN', 'Pitcairn Island', 0, '', '', ''),
(175, 'PL', 'Poland', 48, 'Polish zÅ‚oty', 'zÅ‚', 'PLN'),
(176, 'PT', 'Portugal', 351, 'Euro', 'â‚¬', 'EUR'),
(177, 'PR', 'Puerto Rico', 1787, '', '', ''),
(178, 'QA', 'Qatar', 974, 'Qatari riyal', 'Ø±.Ù‚', 'QAR'),
(179, 'RE', 'Reunion', 262, '', '', ''),
(180, 'RO', 'Romania', 40, 'Romanian leu', 'lei', 'RON'),
(181, 'RU', 'Russia', 70, 'Russian ruble', '', 'RUB'),
(182, 'RW', 'Rwanda', 250, 'Rwandan franc', 'Fr', 'RWF'),
(183, 'SH', 'Saint Helena', 290, 'Saint Helena pound', 'Â£', 'SHP'),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 'East Caribbean dolla', '$', 'XCD'),
(185, 'LC', 'Saint Lucia', 1758, 'East Caribbean dolla', '$', 'XCD'),
(186, 'PM', 'Saint Pierre and Miquelon', 508, '', '', ''),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 'East Caribbean dolla', '$', 'XCD'),
(188, 'WS', 'Samoa', 684, 'Samoan tÄlÄ', 'T', 'WST'),
(189, 'SM', 'San Marino', 378, 'Euro', 'â‚¬', 'EUR'),
(190, 'ST', 'Sao Tome and Principe', 239, 'SÃ£o TomÃ© and PrÃ­n', 'Db', 'STD'),
(191, 'SA', 'Saudi Arabia', 966, 'Saudi riyal', 'Ø±.Ø³', 'SAR'),
(192, 'SN', 'Senegal', 221, 'West African CFA fra', 'Fr', 'XOF'),
(193, 'RS', 'Serbia', 381, 'Serbian dinar', 'Ð´Ð¸Ð½. or din.', 'RSD'),
(194, 'SC', 'Seychelles', 248, 'Seychellois rupee', 'â‚¨', 'SCR'),
(195, 'SL', 'Sierra Leone', 232, 'Sierra Leonean leone', 'Le', 'SLL'),
(196, 'SG', 'Singapore', 65, 'Brunei dollar', '$', 'BND'),
(197, 'SK', 'Slovakia', 421, 'Euro', 'â‚¬', 'EUR'),
(198, 'SI', 'Slovenia', 386, 'Euro', 'â‚¬', 'EUR'),
(199, 'XG', 'Smaller Territories of the UK', 44, '', '', ''),
(200, 'SB', 'Solomon Islands', 677, 'Solomon Islands doll', '$', 'SBD'),
(201, 'SO', 'Somalia', 252, 'Somali shilling', 'Sh', 'SOS'),
(202, 'ZA', 'South Africa', 27, 'South African rand', 'R', 'ZAR'),
(203, 'GS', 'South Georgia', 0, '', '', ''),
(204, 'SS', 'South Sudan', 211, 'South Sudanese pound', 'Â£', 'SSP'),
(205, 'ES', 'Spain', 34, 'Euro', 'â‚¬', 'EUR'),
(206, 'LK', 'Sri Lanka', 94, 'Sri Lankan rupee', 'Rs or à¶»à·”', 'LKR'),
(207, 'SD', 'Sudan', 249, 'Sudanese pound', 'Ø¬.Ø³.', 'SDG'),
(208, 'SR', 'Suriname', 597, 'Surinamese dollar', '$', 'SRD'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, '', '', ''),
(210, 'SZ', 'Swaziland', 268, 'Swazi lilangeni', 'L', 'SZL'),
(211, 'SE', 'Sweden', 46, 'Swedish krona', 'kr', 'SEK'),
(212, 'CH', 'Switzerland', 41, 'Swiss franc', 'Fr', 'CHF'),
(213, 'SY', 'Syria', 963, 'Syrian pound', 'Â£ or Ù„.Ø³', 'SYP'),
(214, 'TW', 'Taiwan', 886, 'New Taiwan dollar', '$', 'TWD'),
(215, 'TJ', 'Tajikistan', 992, 'Tajikistani somoni', 'Ð…Ðœ', 'TJS'),
(216, 'TZ', 'Tanzania', 255, 'Tanzanian shilling', 'Sh', 'TZS'),
(217, 'TH', 'Thailand', 66, 'Thai baht', 'à¸¿', 'THB'),
(218, 'TG', 'Togo', 228, 'West African CFA fra', 'Fr', 'XOF'),
(219, 'TK', 'Tokelau', 690, '', '', ''),
(220, 'TO', 'Tonga', 676, 'Tongan paÊ»anga', 'T$', 'TOP'),
(221, 'TT', 'Trinidad And Tobago', 1868, 'Trinidad and Tobago ', '$', 'TTD'),
(222, 'TN', 'Tunisia', 216, 'Tunisian dinar', 'Ø¯.Øª', 'TND'),
(223, 'TR', 'Turkey', 90, 'Turkish lira', '', 'TRY'),
(224, 'TM', 'Turkmenistan', 7370, 'Turkmenistan manat', 'm', 'TMT'),
(225, 'TC', 'Turks And Caicos Islands', 1649, 'United States dollar', '$', 'USD'),
(226, 'TV', 'Tuvalu', 688, 'Australian dollar', '$', 'AUD'),
(227, 'UG', 'Uganda', 256, 'Ugandan shilling', 'Sh', 'UGX'),
(228, 'UA', 'Ukraine', 380, 'Ukrainian hryvnia', 'â‚´', 'UAH'),
(229, 'AE', 'United Arab Emirates', 971, 'United Arab Emirates', 'Ø¯.Ø¥', 'AED'),
(230, 'GB', 'United Kingdom', 44, 'British pound', 'Â£', 'GBP'),
(231, 'US', 'United States', 1, 'United States dollar', '$', 'USD'),
(232, 'UM', 'United States Minor Outlying Islands', 1, '', '', ''),
(233, 'UY', 'Uruguay', 598, 'Uruguayan peso', '$', 'UYU'),
(234, 'UZ', 'Uzbekistan', 998, 'Uzbekistani som', '', 'UZS'),
(235, 'VU', 'Vanuatu', 678, 'Vanuatu vatu', 'Vt', 'VUV'),
(236, 'VA', 'Vatican City State (Holy See)', 39, '', '', ''),
(237, 'VE', 'Venezuela', 58, 'Venezuelan bolÃ­var', 'Bs F', 'VEF'),
(238, 'VN', 'Vietnam', 84, 'Vietnamese Ä‘á»“ng', 'â‚«', 'VND'),
(239, 'VG', 'Virgin Islands (British)', 1284, '', '', ''),
(240, 'VI', 'Virgin Islands (US)', 1340, '', '', ''),
(241, 'WF', 'Wallis And Futuna Islands', 681, '', '', ''),
(242, 'EH', 'Western Sahara', 212, '', '', ''),
(243, 'YE', 'Yemen', 967, 'Yemeni rial', 'ï·¼', 'YER'),
(244, 'YU', 'Yugoslavia', 38, '', '', ''),
(245, 'ZM', 'Zambia', 260, 'Zambian kwacha', 'ZK', 'ZMW'),
(246, 'ZW', 'Zimbabwe', 263, 'Botswana pula', 'P', 'BWP');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `isActive` int(11) DEFAULT 0,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `isActive`, `rank`, `createdAt`, `updatedAt`) VALUES
(1, 'Sosyal Medya', 1, 1, '2023-03-21 07:16:43', '2023-03-21 07:16:43'),
(2, 'Dijital Pazarlama', 1, 2, '2023-03-21 07:16:51', '2023-03-21 07:16:51'),
(3, 'Video Kurgu', 1, 3, '2023-03-21 07:16:58', '2023-03-21 07:16:58'),
(4, 'Grafik Tasarım', 1, 4, '2023-03-21 07:17:05', '2023-03-21 07:17:05'),
(5, 'Yazılım', 1, 5, '2023-03-21 07:17:11', '2023-03-21 07:17:11'),
(6, 'Metin Yazarı', 1, 6, '2023-03-21 07:17:16', '2023-03-21 07:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(11) NOT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `isActive` tinyint(1) DEFAULT 1,
  `rank` bigint(20) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `lang`, `isActive`, `rank`, `createdAt`, `updatedAt`) VALUES
(1, 'ssl', 'smtp.yandex.com.tr', 465, 'site@mutfakyapim.com', 'My124578', 'site@mutfakyapim.com', 'iletisim@mutfakyapim.com', 'Site İletişim Formu Mesajı | Mutfak Yapım', 'tr', 1, 1, '2021-01-08 00:08:59', '2023-03-20 10:55:05'),
(2, 'ssl', 'smtp.yandex.com.tr', 465, 'site@mutfakyapim.com', 'My124578', 'site@mutfakyapim.com', 'kariyer@mutfakyapim.com', 'Yeni Bir İş Başvurusu Var! | Mutfak Yapım Dijital Reklam Ajansı', 'tr', 1, 1, '2023-03-20 10:33:18', '2023-03-20 10:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `gallery_type` varchar(50) DEFAULT NULL,
  `folder_name` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `isActive` tinyint(1) DEFAULT 1,
  `isCover` tinyint(1) DEFAULT 0,
  `rank` bigint(20) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `url`, `img_url`, `title`, `gallery_type`, `folder_name`, `content`, `lang`, `isActive`, `isCover`, `rank`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(2, 'resim-galerisi', 'cdd45a785d878036949732976f533763.webp', 'Resim Galerisi', 'images', 'resim-galerisi', NULL, 'tr', 1, 0, 2, '2022-11-23 08:57:12', '2022-11-23 08:57:12', '2022-11-23 08:57:01'),
(3, 'video-galerisi', '60cb46ba27341bf2ed98fddeb35d3e2d.webp', 'Video Galerisi', 'video_urls', 'video-galerisi', NULL, 'tr', 1, 0, 3, '2022-11-23 09:14:36', '2022-11-23 09:14:36', '2022-11-23 09:14:23'),
(4, 'sertifikalarimiz', NULL, 'Sertifikalarimiz', 'images', 'sertifikalarimiz', NULL, 'tr', 1, 0, 3, '2022-12-16 13:12:46', '2022-12-16 13:14:51', '2022-12-16 13:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `home_items`
--

CREATE TABLE `home_items` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(1) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL,
  `type` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_items`
--

INSERT INTO `home_items` (`id`, `title`, `content`, `img_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`, `type`) VALUES
(1, 'Angelique Arnauld', '<p>Mükemmellik olağanüstü şeyler yapmakla değil, sıradan şeyleri olağanüstü iyi yapmakla elde edilir.</p>', NULL, 'tr', 1, 1, '2022-03-05 21:32:07', '2023-03-20 19:30:47', '2022-03-05 21:31:19', 1),
(2, 'Leo Burnett', '<p>Kendinizi müşterinin yerine koyamıyorsanız, büyük ihtimalle siz reklamcılık işinde olmamalısınız.</p>', NULL, 'tr', 2, 1, '2022-03-05 21:34:05', '2023-03-20 19:31:08', '2022-03-05 21:33:42', 1),
(3, 'Bernard Shaw', '<p>Dünyaya ilham veren kişiler, istedikleri şartları arayan, bulamazlarsa da kolları sıvayıp kendisi yaratanlardır.</p>', NULL, 'tr', 3, 1, '2022-03-05 21:34:21', '2023-03-20 14:18:43', '2022-03-05 21:34:07', 1),
(4, 'Hayal Et', '<p>Sizin için hayal ediyoruz.</p>', NULL, 'tr', 4, 1, '2023-03-20 19:29:24', '2023-03-20 19:33:06', '2023-03-20 19:29:00', 2),
(5, 'Geliştir', '<p>Projelendirip geliştiriyoruz.</p>', NULL, 'tr', 5, 1, '2023-03-20 19:29:57', '2023-03-20 19:33:05', '2023-03-20 19:29:26', 2),
(6, 'Tasarla', '<p>Tasarlayıp kullanımınıza sunuyoruz.</p>', NULL, 'tr', 6, 1, '2023-03-20 19:31:32', '2023-03-20 19:33:02', '2023-03-20 19:31:20', 2),
(7, 'Kullanıcı Dostu', '<p>İşe müşterilerinizin gözünden bakmakla başlıyoruz.</p>', NULL, 'tr', 7, 1, '2023-03-20 19:20:09', '2023-03-20 19:33:00', '2023-03-20 19:18:47', 3),
(8, 'Yenilikçi', '<p>Yarının teknolojisini bugün kullanımınıza sunuyoruz.</p>', NULL, 'tr', 8, 1, '2023-03-20 19:20:57', '2023-03-20 19:32:58', '2023-03-20 19:20:23', 3),
(9, 'Zamanında', '<p>İşimizi söz verdiğimiz zamanda bitiriyoruz.</p>', NULL, 'tr', 9, 1, '2023-03-20 19:21:29', '2023-03-20 19:32:57', '2023-03-20 19:21:15', 3),
(10, 'Esneklik', '<p>Alışkanlıklarınıza saygı duyuyoruz.</p>', NULL, 'tr', 10, 1, '2023-03-20 19:21:51', '2023-03-20 19:32:54', '2023-03-20 19:21:36', 3),
(11, 'Ekonomik', '<p>Optimal fiyatlarımızı sizinle paylaşıyoruz.</p>', NULL, 'tr', 11, 1, '2023-03-20 19:22:13', '2023-03-20 19:32:52', '2023-03-20 19:21:58', 3),
(12, 'Memnuniyet', '<p>Müşteri memnuniyetimizle gurur duyuyoruz.</p>', NULL, 'tr', 12, 1, '2023-03-20 19:22:36', '2023-03-20 19:32:50', '2023-03-20 19:22:21', 3);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `url`, `img_url`, `title`, `description`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 2, 'fde18fc013852d3a66a72024f372819a.webp', NULL, NULL, NULL, 'tr', 1, 1, '2023-02-20 13:48:12', '2023-02-20 13:49:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instagram_posts`
--

CREATE TABLE `instagram_posts` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instagram_posts`
--

INSERT INTO `instagram_posts` (`id`, `img_url`, `link`) VALUES
(1, 'v-t51.2885-15-335999605_766634034820128_585109624218227738_n.jpg', 'https://www.instagram.com/p/Cp5mpBWqH72/'),
(2, 'v-t51.2885-15-302365117_124708610311765_8108434737953359234_n.jpg', 'https://www.instagram.com/p/Ch9r0rtq5AN/'),
(3, 'v-t51.2885-15-315302598_856021512091289_1481614104374750673_n.jpg', 'https://www.instagram.com/p/Ck76IPaJLoZ/'),
(4, 'v-t39.30808-6-329043810_519490523646420_1078196891191828114_n.jpg', 'https://www.instagram.com/p/CoesDI5KAke/'),
(5, 'v-t51.2885-15-326107895_988559265459876_9022493964213889174_n.jpg', 'https://www.instagram.com/p/CnljN1mqE4Y/'),
(6, 'v-t51.2885-15-324889692_477538571207165_644469838641325026_n.jpg', 'https://www.instagram.com/p/CnZGYZ6qkqG/'),
(7, 'v-t51.2885-15-307992940_804474117342354_3552997603266295610_n.webp', 'https://www.instagram.com/p/Ci2TVQHKuLq/'),
(8, 'v-t51.2885-15-297391981_620087146110268_4434001131186599895_n.jpg', 'https://www.instagram.com/p/Cg3oQXWKsv2/'),
(9, 'v-t51.2885-15-290358597_347369410809395_5702714673730373797_n.jpg', 'https://www.instagram.com/p/CfV_EI6okvr/'),
(10, 'v-t51.2885-15-288978295_758736868489991_7707620466232393504_n.jpg', 'https://www.instagram.com/p/CfDu1Czqa5E/'),
(11, 'v-t51.2885-15-287746554_893537131602389_5735126127072297297_n.jpg', 'https://www.instagram.com/p/Ce1Aci0qDvC/'),
(12, 'v-t51.2885-15-286911835_593254325303432_2131169809656108699_n.jpg', 'https://www.instagram.com/p/CelmvIFKmjS/');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) NOT NULL,
  `name` char(49) DEFAULT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`) VALUES
(1, 'English', 'en'),
(2, 'Afar', 'aa'),
(3, 'Abkhazian', 'ab'),
(4, 'Afrikaans', 'af'),
(5, 'Amharic', 'am'),
(6, 'Arabic', 'ar'),
(7, 'Assamese', 'as'),
(8, 'Aymara', 'ay'),
(9, 'Azerbaijani', 'az'),
(10, 'Bashkir', 'ba'),
(11, 'Belarusian', 'be'),
(12, 'Bulgarian', 'bg'),
(13, 'Bihari', 'bh'),
(14, 'Bislama', 'bi'),
(15, 'Bengali/Bangla', 'bn'),
(16, 'Tibetan', 'bo'),
(17, 'Breton', 'br'),
(18, 'Catalan', 'ca'),
(19, 'Corsican', 'co'),
(20, 'Czech', 'cs'),
(21, 'Welsh', 'cy'),
(22, 'Danish', 'da'),
(23, 'German', 'de'),
(24, 'Bhutani', 'dz'),
(25, 'Greek', 'el'),
(26, 'Esperanto', 'eo'),
(27, 'Spanish', 'es'),
(28, 'Estonian', 'et'),
(29, 'Basque', 'eu'),
(30, 'Persian', 'fa'),
(31, 'Finnish', 'fi'),
(32, 'Fiji', 'fj'),
(33, 'Faeroese', 'fo'),
(34, 'French', 'fr'),
(35, 'Frisian', 'fy'),
(36, 'Irish', 'ga'),
(37, 'Scots/Gaelic', 'gd'),
(38, 'Galician', 'gl'),
(39, 'Guarani', 'gn'),
(40, 'Gujarati', 'gu'),
(41, 'Hausa', 'ha'),
(42, 'Hindi', 'hi'),
(43, 'Croatian', 'hr'),
(44, 'Hungarian', 'hu'),
(45, 'Armenian', 'hy'),
(46, 'Interlingua', 'ia'),
(47, 'Interlingue', 'ie'),
(48, 'Inupiak', 'ik'),
(49, 'Indonesian', 'in'),
(50, 'Icelandic', 'is'),
(51, 'Italian', 'it'),
(52, 'Hebrew', 'iw'),
(53, 'Japanese', 'ja'),
(54, 'Yiddish', 'ji'),
(55, 'Javanese', 'jw'),
(56, 'Georgian', 'ka'),
(57, 'Kazakh', 'kk'),
(58, 'Greenlandic', 'kl'),
(59, 'Cambodian', 'km'),
(60, 'Kannada', 'kn'),
(61, 'Korean', 'ko'),
(62, 'Kashmiri', 'ks'),
(63, 'Kurdish', 'ku'),
(64, 'Kirghiz', 'ky'),
(65, 'Latin', 'la'),
(66, 'Lingala', 'ln'),
(67, 'Laothian', 'lo'),
(68, 'Lithuanian', 'lt'),
(69, 'Latvian/Lettish', 'lv'),
(70, 'Malagasy', 'mg'),
(71, 'Maori', 'mi'),
(72, 'Macedonian', 'mk'),
(73, 'Malayalam', 'ml'),
(74, 'Mongolian', 'mn'),
(75, 'Moldavian', 'mo'),
(76, 'Marathi', 'mr'),
(77, 'Malay', 'ms'),
(78, 'Maltese', 'mt'),
(79, 'Burmese', 'my'),
(80, 'Nauru', 'na'),
(81, 'Nepali', 'ne'),
(82, 'Dutch', 'nl'),
(83, 'Norwegian', 'no'),
(84, 'Occitan', 'oc'),
(85, '(Afan)/Oromoor/Oriya', 'om'),
(86, 'Punjabi', 'pa'),
(87, 'Polish', 'pl'),
(88, 'Pashto/Pushto', 'ps'),
(89, 'Portuguese', 'pt'),
(90, 'Quechua', 'qu'),
(91, 'Rhaeto-Romance', 'rm'),
(92, 'Kirundi', 'rn'),
(93, 'Romanian', 'ro'),
(94, 'Russian', 'ru'),
(95, 'Kinyarwanda', 'rw'),
(96, 'Sanskrit', 'sa'),
(97, 'Sindhi', 'sd'),
(98, 'Sangro', 'sg'),
(99, 'Serbo-Croatian', 'sh'),
(100, 'Singhalese', 'si'),
(101, 'Slovak', 'sk'),
(102, 'Slovenian', 'sl'),
(103, 'Samoan', 'sm'),
(104, 'Shona', 'sn'),
(105, 'Somali', 'so'),
(106, 'Albanian', 'sq'),
(107, 'Serbian', 'sr'),
(108, 'Siswati', 'ss'),
(109, 'Sesotho', 'st'),
(110, 'Sundanese', 'su'),
(111, 'Swedish', 'sv'),
(112, 'Swahili', 'sw'),
(113, 'Tamil', 'ta'),
(114, 'Telugu', 'te'),
(115, 'Tajik', 'tg'),
(116, 'Thai', 'th'),
(117, 'Tigrinya', 'ti'),
(118, 'Turkmen', 'tk'),
(119, 'Tagalog', 'tl'),
(120, 'Setswana', 'tn'),
(121, 'Tonga', 'to'),
(122, 'Turkish', 'tr'),
(123, 'Tsonga', 'ts'),
(124, 'Tatar', 'tt'),
(125, 'Twi', 'tw'),
(126, 'Ukrainian', 'uk'),
(127, 'Urdu', 'ur'),
(128, 'Uzbek', 'uz'),
(129, 'Vietnamese', 'vi'),
(130, 'Volapuk', 'vo'),
(131, 'Wolof', 'wo'),
(132, 'Xhosa', 'xh'),
(133, 'Yoruba', 'yo'),
(134, 'Chinese', 'zh'),
(135, 'Zulu', 'zu');

-- --------------------------------------------------------

--
-- Table structure for table `linguo_languages`
--

CREATE TABLE `linguo_languages` (
  `language_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `description` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `is_master` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linguo_language_files`
--

CREATE TABLE `linguo_language_files` (
  `file_id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `description` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linguo_language_strings`
--

CREATE TABLE `linguo_language_strings` (
  `string_id` int(11) UNSIGNED NOT NULL,
  `file_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT 0,
  `top_id` int(11) NOT NULL DEFAULT 0,
  `position` enum('HEADER','HEADER_RIGHT','MOBILE','FOOTER','FOOTER2','FOOTER3') DEFAULT 'HEADER',
  `target` enum('_blank','_self','_parent','_top') DEFAULT '_self',
  `title` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `showCategories` tinyint(4) DEFAULT 0,
  `showSectors` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `page_id`, `top_id`, `position`, `target`, `title`, `url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `showCategories`, `showSectors`) VALUES
(1, 0, 0, 'HEADER', '_self', 'Anasayfa', '/', 'tr', 1, 1, '2021-12-28 14:17:07', '2021-12-28 14:51:47', 0, 0),
(2, 1, 0, 'HEADER', '_self', 'Biz Kimiz?', NULL, 'tr', 2, 1, '2022-01-14 12:40:58', '2023-03-16 20:17:23', 0, 0),
(3, 0, 0, 'HEADER', '_self', 'Neler Yapıyoruz?', '/hizmetlerimiz', 'tr', 3, 1, '2022-11-14 14:15:06', '2023-03-20 13:38:45', 1, 0),
(4, 0, 0, 'HEADER', '_self', 'Çalışmalarımız', '/calismalarimiz', 'tr', 4, 1, '2023-03-20 11:06:16', '2023-03-20 13:38:49', 0, 0),
(5, 2, 0, 'HEADER', '_self', 'Kariyer', NULL, 'tr', 5, 1, '2023-03-16 20:18:27', '2023-03-20 13:40:11', 0, 0),
(6, 0, 0, 'HEADER', '_self', 'Online Ödeme', '/online-odeme', 'tr', 6, 1, '2023-03-20 20:49:37', '2023-03-20 21:06:58', 0, 0),
(7, 0, 0, 'HEADER', '_self', 'İletişim', '/iletisim', 'tr', 7, 1, '2022-01-03 07:52:56', '2023-03-20 21:07:27', 0, 0),
(8, 1, 0, 'FOOTER', '_self', 'Biz Kimiz?', NULL, 'tr', 8, 1, '2022-03-05 11:46:13', '2023-03-20 21:07:33', 0, 0),
(9, 0, 0, 'FOOTER', '_self', 'Neler Yapıyoruz?', '/hizmetlerimiz', 'tr', 9, 1, '2023-03-20 12:46:11', '2023-03-20 21:07:35', 0, 0),
(10, 0, 0, 'FOOTER', '_self', 'Çalışmalarımız', '/calismalarimiz', 'tr', 10, 1, '2023-03-20 12:49:55', '2023-03-20 21:07:40', 0, 0),
(11, 5, 0, 'FOOTER', '_self', 'Kariyer', NULL, 'tr', 11, 1, '2023-03-20 12:50:09', '2023-03-20 21:07:42', 0, 0),
(12, 0, 0, 'FOOTER', '_self', 'İletişim', '/iletisim', 'tr', 12, 1, '2022-03-05 14:31:32', '2023-03-20 21:07:44', 0, 0),
(13, 9, 0, 'FOOTER', '_self', 'KVKK', NULL, 'tr', 13, 1, '2022-03-05 22:02:08', '2023-03-20 21:07:45', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `our_works`
--

CREATE TABLE `our_works` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(1) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `our_works`
--

INSERT INTO `our_works` (`id`, `title`, `content`, `img_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'test', '', NULL, 'tr', 1, 1, '2023-03-20 11:15:55', '2023-03-20 11:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `banner_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL,
  `type` enum('SIMPLE','CAREER','ABOUT','KVKK','CONTENT') DEFAULT 'SIMPLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `url`, `title`, `content`, `img_url`, `banner_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`, `type`) VALUES
(1, 'biz-kimiz', 'Biz Kimiz?', '<p>Mutfak Yapım olarak dijital medya ve prodüksiyon alanlarında faaliyet gösteren İzmir merkezli bir reklam şirketiyiz. Güçlü teknik kadromuzla yenilikçi, dinamik, verimli güvenilir bir takım ruhu anlayışında; kalite, zamanındalık ve müşteri memnuniyetinden taviz vermeden ticari bir firmanın ticari gelişimi, kendisini ve ürünlerini duyurması için gerekli tüm hizmetleri bünyemizde barındırarak optimal fiyatlarla hizmet vermekteyiz.<br><br>Müşteri memnuniyetini arttırmaya yönelik, müşterilerimizin mevcut ve gelecekteki beklentilerini karşılayacak biçimde, tüm çalışanlarımızın aktif görev aldığı bir takım ruhu ile teknolojik gelişmelere göre kendimizi yeniliyor ve siz değerli müşterilerimizin gelişimi için durmaksızın yaratıcı projeler üretmeye çalışıyoruz.<br><br>Kısacası medyanın tüm alanlarında doğabilecek her ihtiyacınıza yanıt vermek, sizi anlamak ve doğru bir şekilde anlatmak için buradayız.</p>', 'faf33ff56e3765966bde2bd9c3acfdab.webp', '438bee4ce2d55e501355992a6875bd86.webp', 'tr', 1, 1, '2022-02-23 06:24:54', '2023-03-20 13:41:16', '2022-02-23 06:24:26', 'SIMPLE'),
(2, 'kariyer', 'Kariyer', '<p class=\"text-med black-text margin-five\">\"Dünyaya ilham veren kişiler, istedikleri şartları arayan, bulamazlarsa da kolları sıvayıp kendisi yaratanlardır.\"<br><br>Bernard Shaw</p>\r\n<p>Sen de <strong>“Geniş bir hayal dünyam var ve üretmeyi seviyorum.”</strong> diyenlerden misin? O zaman bir kahve içmeye bekliyoruz. :)<br><br>Dilersen aşağıdaki formu doldurabilir dilersen de <strong>kariyer@mutfakyapim.com</strong> adresine özgeçmişinle beraber çalışmalarını gönderebilirsin.</p>', '3c4f3d313f0732b67ebf22908e22a972.webp', NULL, 'tr', 5, 1, '2022-03-01 08:33:59', '2023-03-20 13:40:15', '2022-03-01 08:32:51', 'CAREER'),
(3, 'sirket-gizlilik-politikasi', 'Şirket Gizlilik Politikası', '<p>AKIN HADDECİLİK LTD.ŞTİ., paydaşlarından <strong>Kişisel Verilerle İlgili Genel Aydınlatma Metni</strong>’nde ve <strong>Personel İçin Aydınlatma Metni</strong>’nde açıklanan yollarla toplanan kişisel verilerin, gizliliğinin korunması için azami özen ilkesi çerçevesinde, gereken tüm idari ve teknik önlemleri almakta ve bu verileri, önlemlere uygun şekilde fiziksel ve/veya elektronik ortamda saklamaktadır.</p>\r\n<p>AKIN HADDECİLİK LTD.ŞTİ., topladığı tüm kişisel verileri, ilgili mevzuata ve şirket politikalarına uygun olarak ve yukarıda adı geçen aydınlatma metinlerinde belirtilen şartlarda işler, saklar veya paylaşır. AKIN HADDECİLİK LTD.ŞTİ., iş birliği içinde olduğu kurum veya kuruluşlarla bilgi paylaşması halinde, bu şirketlerin AKIN HADDECİLİK LTD.ŞTİ.’nın gizlilik standartlarına ve şartlarına uymalarını sağlamak için gerekli önlemleri alır.</p>\r\n<p>AKIN HADDECİLİK LTD.ŞTİ., tüm çalışanlarının da gizlilik politikasına uygun davranmaları ve bu konuda gereken hassasiyeti göstermesini sağlamak için gerekli önlemleri almaktadır. Çalışanlarımız eğitimler yoluyla hem kendi kişisel verileri hem de paydaşlara ait kişisel verilerin korunması hakkında bilgilendirilmektedir.</p>\r\n<p>Bu politikada yer verilen taahhütler AKIN HADDECİLİK LTD.ŞTİ.’nin web sitesi ve diğer kanalları aracılığıyla paylaşılan bilgiler için geçerlidir. Bu sitede veya diğer kanallarda, başka web sitelerine link verilmesi halinde, link verilen web sitelerinin gizlilik ilkeleri ve kullanım şartları geçerli olup ilgili web sitelerinin ziyaret edilmesi nedeniyle uğranabilecek zarardan AKIN HADDECİLİK LTD.ŞTİ. sorumlu değildir.</p>\r\n<p>AKIN HADDECİLİK LTD.ŞTİ., gizlilik politikasına yönelik prensiplerin, güncel tutulması ve başta ilgili mevzuata ve şirket politikalarına uygun hale getirilmesi için bu politikada düzenlenen hususları önceden haber vermeksizin değiştirme hakkını saklı tutar.<br /><br /></p>\r\n<ol>\r\n<li><strong> </strong><strong>Çerez Nedir:</strong> Çerez veya bilinen ismiyle “cookie”, mobil ve masaüstü cihazlar kullanarak sitelerimizi (<a href=\"http://www.akinhadde.com.tr\">akinhadde.com.tr</a> ) ziyaret ettiğinizde bilgisayarınız veya mobil cihazınıza (akıllı telefon, tablet gibi) kaydedilen küçük metin dosyası veya bilgilerdir. Çerezler genellikle geldikleri internet site isimlerini, kullanım ömürlerini (cihazınızda ne kadar süre ile kalacağını) ve rastgele verilen sayılardan oluşan değerler içerir.</li>\r\n<li><strong> </strong><strong>Ne için Kullanıyoruz</strong>: Çerezleri, sitelerimizin daha kolay kullanılması, sizin ilgi ve ihtiyaçlarınıza göre ayarlanması ve kullanıcılarımıza akıllı reklam gösterimi için kişiselleştirme amacıyla kullanıyoruz. İnternet siteleri bu çerez dosyaları okuyup yazabiliyorlar ve bu sayede tanınmanız ve size daha uygun bir internet sitesi sunulması amacıyla sizinle ilgili önemli bilgilerin hatırlanması sağlanıyor (tercih ayarlarınızın hatırlanması gibi). Çerezler ayrıca, sitelerimiz üzerinde gelecekteki hareketlerinizin hızlanmasına da yardımcı olur. Bunlara ek olarak, ziyaretçilerin sitelerimizi nasıl kullandığını anlamak ve sitelerimizin tasarımı ile kullanışlılığını geliştirmek amacıyla çerezleri sitelerimizin kullanımı hakkında istatistiksel bilgiler toplamak için de kullanabiliriz.</li>\r\n<li><strong> </strong><strong>Hangi Türlerini Kullanıyoruz</strong>: Oturum çerezleri (session cookies) ve kalıcı çerezler (persistent cookies) olmak üzere sitelerimiz genelinde iki tür çerez kullanmaktayız. Oturum çerezleri geçici çerezler olup sadece tarayıcınızı kapatıncaya kadar geçerlidirler. Kalıcı çerezler siz silinceye veya süreleri doluncaya (bu şekilde çerezlerin cihazında ne kadar kalacağı, çerezlerin “kullanım ömürlerine” bağlı olacaktır) kadar sabit diskinizde kalırlar.</li>\r\n</ol>\r\n<p><strong><u>Üçüncü Parti Çerezleri (3th Party Cookies)</u></strong></p>\r\n<p>İş ortaklarımız, reklam platformları, sosyal medya platformları ile analitik bilgileri toplama hizmeti veren, sitemiz genelinde kullanılan bu servis sağlayıcılar hizmetlerini sunabilmeleri için sitelerimizi ziyaret ettiğinizde, bizim yerimize cihazlarınıza çerez kaydetmelerine izin verebiliriz. Bu çerezler hakkında daha fazla bilgi edinmek ve bu çerezlerin nasıl kontrol edileceğine ilişkin ayrıntılı bilgi için, lütfen bu üçüncü parti kurum ve kuruluşların gizlilik politikalarını veya çerez politikalarını inceleyiniz.<br /><br /></p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td width=\"121\">\r\n<p><strong>Kullanılan Çerez</strong></p>\r\n</td>\r\n<td width=\"246\">\r\n<p><strong>Ne İşe Yarar</strong></p>\r\n</td>\r\n<td width=\"170\">\r\n<p><strong>Kullanım Ömrü</strong></p>\r\n</td>\r\n<td width=\"132\">\r\n<p><strong>Ayrıntılar</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"121\">\r\n<p>İzleme/Analiz</p>\r\n</td>\r\n<td width=\"246\">\r\n<p><a href=\"http://www.elteksmak.com.tr\">www.akinhadde.com.tr</a>   sitesi içerisinde nerelerde gezindiğiniz ve neler yaptığınız hakkında isimsiz (anonim) toplu veriler sağlar</p>\r\n</td>\r\n<td width=\"170\">\r\n<p>Kalıcı, oturum ve 3. parti</p>\r\n</td>\r\n<td width=\"132\">\r\n<p>Google Analytics<br />YouTube İzlenmesi<br />Gemius<br />Comscore</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"121\">\r\n<p>Sosyal Medya / Paylaşım</p>\r\n</td>\r\n<td width=\"246\">\r\n<p>Yorumları, sayfaları, yer imlerini paylaşmanızı sağlar ve sosyal ağlar ile sosyal araçlara daha kolay erişim sunmaya yardımcı olur.</p>\r\n</td>\r\n<td width=\"170\">\r\n<p>3. parti</p>\r\n</td>\r\n<td width=\"132\">\r\n<p>Facebook<br />Twitter<br />YouTube</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"121\">\r\n<p>Siteler arası izleme</p>\r\n</td>\r\n<td width=\"246\">\r\n<p>Kullanıcının IP adresi sayesinde yaklaşık adresinin (şehir, ilçe, posta kodu) belirlenmesini ve kullanıcının içerik ve reklam tercihlerine göre en uygun olanlarını kullanıcıya sunulmasını sağlar.</p>\r\n</td>\r\n<td width=\"170\">\r\n<p>Oturum, 3.parti</p>\r\n</td>\r\n<td width=\"132\">\r\n<p>Mobil Reklam platformları</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"121\">\r\n<p>Google Analitikleri</p>\r\n</td>\r\n<td width=\"246\">\r\n<p>Bu tür çerezler tüm istatistiksel verilerin toplanmasını bu şekilde Sitenin sunumunun ve kullanımının geliştirilmesini sağlar. Google, bu istatistiklere toplumsal istatistikler ve ilgilere ilişkin veriler eklemek suretiyle, kullanıcıları daha iyi anlamamızı sağlar.</p>\r\n</td>\r\n<td width=\"170\">\r\n<p>Kalıcı, oturum ve 3.part</p>\r\n</td>\r\n<td width=\"132\">\r\n<p>Google Analytics</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<ol>\r\n<li><strong> </strong><strong>Çerezleri nasıl kontrol edebilir veya silebilirsiniz: </strong>Birçok internet tarayıcısı, varsayılan olarak çerezleri otomatik olarak kabul etmeye ayarlıdır. Bu ayarları, çerezleri engelleyecek veya cihazınıza çerez gönderildiğinde uyarı verecek şekilde değiştirebilirsiniz. Çerezleri yönetmenin birkaç yolu bulunmaktadır. Tarayıcı ayarlarınızı nasıl düzenleyeceğiniz hakkında ayrıntılı bilgi almak için lütfen tarayıcınızın talimat veya yardım ekranına başvurun. Eğer kullandığımız çerezleri devre dışı bırakırsanız, bu eylem şirketimizin web sitesindeki kullanıcı deneyiminizi etkileyebilir; örneğin sitenin belirli bölümlerini görüntüleyemeyebilir veya tekrar ziyaret ettiğinizde sizin için özelleştirilmiş olan bilgilere ulaşamayabilirsiniz. Siteyi görüntülemek için farklı cihazlar kullanıyorsanız (ör. bilgisayar, akıllı telefon, tablet vb.), bu cihazların her birindeki her tarayıcının çerez tercihlerinize uygun şekilde ayarlanmış olduğundan emin olmanız gerekir.</li>\r\n</ol>', NULL, '1bf7af771f49dfa5b0ec95e56ca9c6e3.webp', 'tr', 6, 1, '2022-03-05 22:01:49', '2023-03-20 13:40:20', '2022-03-05 21:58:23', 'KVKK'),
(4, 'sosyal-medya-kullanimi-politikasi', 'Sosyal Medya Kullanımı Politikası', '<p>AKIN HADDECİLİK LTD.ŞTİ., politikanın yayınlandığı tarihte kullanmakta olduğu bir sosyal medya platformu bulunmamaktadır. Olması halinde, ilgili sosyal medya platformunun adı (Facebook, Instagram vb), politikaya eklenecek ve ilan edilecektir.  </p>\r\n<p>Sayfaların açılması ve yönetim yetkisi, Genel Müdür’ün sorumluluğundadır. Bunun dışında açılan hesaplar ve sayfalar şirketimizle ilgili değildir. Tespiti halinde, AKIN HADDECİLİK LTD.ŞTİ. yasal yollara başvurabilir. Sayfalarda, şirket faaliyetleri (Fabrika geneli, üretim faaliyeti, fuar vb etkinlikler, sosyal faaliyetler vb) sırasında çekilen fotoğraf ve videolar paylaşılmaktadır. Bunun dışında milli ve dini bayramlara ait kutlama / anma mesajları yayınlanabilmektedir.</p>\r\n<p>Sosyal medya sayfalarında, gerekli parametre ve gizlilik ayarları Genel Müdür tarafından yapılır.</p>\r\n<p>Fotoğraf ve videolarda yer alan çalışanlarımızın görüntüleri ancak açık rızaları alınmışsa yayınlanabilir, bunun dışında müşterilerimizin, tedarikçilerimizin, ziyaretçilerimizin görüntülerine, izinleri alınmadığı takdirde yer verilmez. Paylaşımlarda, çalışanlarımızın adları etiketlenmez, hiçbir kişisel verisi izni olmaksızın paylaşılmaz.</p>\r\n<p>Bunun dışında, çalışanlarımızın, sosyal medya kullanımında dikkat etmesi kurallar aşağıda açıklanmıştır:</p>\r\n<ol>\r\n<li>Sosyal ağlarda, AKIN HADDECİLİK LTD.ŞTİ. veya sektörle ilgili bir konuda fikir beyan ediliyorsa, kişisel düşünceniz olduğu belirtmek zorundadır.</li>\r\n<li>Şirket, çalışma arkadaşları ve kendi itibarını korumak zorundadır. İtibar zedeleyici herhangi bir yorum yapılmaktan kaçınılacaktır.</li>\r\n<li>Müşteriler, rakipler, tedarikçiler, kamu veya özel kurum ve kuruluşlar hakkında itibar zedeleyici herhangi bir yorum yapılmayacaktır.</li>\r\n<li>AKIN HADDECİLİK LTD.ŞTİ. çalışanlarına, müşterilerine, tedarikçilerine ve diğer paydaşlara ait hiçbir bilgi paylaşılmayacaktır.</li>\r\n<li>Sosyal ağlarda, onay alınmadıkça diğer kişilerin fotoğraflarını paylaşmamalı ve adlarını etiketlememelidir.</li>\r\n<li>Ayrımcı, tacizci, ırkçı, dini veya cinsel içerikli, saldırgan ve rahatsız edici tarzda yorumlar yazılmayacaktır.</li>\r\n<li>Şirketin sosyal medya sayfalarında, hiçbir ticari ürünün reklamı, hiçbir siyasi partinin propagandası yapılmayacaktır.</li>\r\n<li>Şirket bünyesindeki kişi, ofis, toplantı, çalışma içeriğine ait detaylar, mekanlar vb sosyal medyada etiketlenmeyecektir. Şirket içerisinde çekilen fotoğraflar, şirket adı etiketlenerek paylaşılmayacaktır.</li>\r\n<li>Paylaşılması düşünülen bir içerik hakkında şüpheye düşülmüşse, İnsan Kaynakları Sorumlusu’na danışılacaktır.</li>\r\n<li>Sosyal medya platformlarına herhangi bir içerik (metin, resim, video vb.) yüklemesi yaparken dikkatli olmak gerekir. Farkında olmadan marka ya da telif hakları ihlal edilebilir.</li>\r\n<li>Çalışanlar sosyal medyada paylaştıkları ve yayınladıkları içeriklerden kişisel olarak sorumludur.</li>\r\n<li>Sosyal medyada yazılı mesajların yanlış anlaşılma ihtimaline karşı, yazım kurallarına uygun davranılacaktır.</li>\r\n<li>Yetki verilmemiş kişiler asla kendini firmanın resmi sözcüsü olarak tanıtmamalıdır.</li>\r\n<li>Şirketle ilgili başkaları tarafından yazılmış olumsuz mesajlara karşı olumsuz mesaj yazılmayacak, sağduyulu ve nazik yaklaşılacaktır.</li>\r\n<li>İnternette paylaşılanların, kaldırılsa veya silinse bile tamamen kaldırılamayacağının farkında olunacak.</li>\r\n</ol>\r\n<p>Çalışanlarımız, kişisel sosyal medya sayfalarındaki parametre ve gizlilik ayarları konusunda, İnsan Kaynakları Sorumlusu’na danışabilirler.</p>', NULL, '76bd5d10a82e5517795fe63a88a2c40f.webp', 'tr', 7, 1, '2022-12-26 08:36:58', '2023-03-20 13:40:22', '2022-12-26 08:34:59', 'KVKK'),
(5, 'kisisel-veri-saklama-ve-imha-politikasi', 'Kişisel Veri Saklama ve İmha Politikası', '<p><strong>POLİTİKA AMACI:</strong></p>\r\n<p>Bu politika, şirketimizin aldığı ve işlediği kişisel verilerin saklanması ve imha işlemlerinin yönetilmesine dair yaklaşımını tanımlamak amacıyla, Kişisel Verilerin Silinmesi, Yok Edilmesi Veya Anonim Hale Getirilmesi Hakkında Yönetmelik baz alınarak hazırlanmıştır.</p>\r\n<p><strong>TANIMLAR:</strong></p>\r\n<p><strong>İmha</strong>: Kişisel verilerin silinmesi, yok edilmesi veya anonim hale getirilmesini</p>\r\n<p><strong>Kayıt ortamı</strong>: Tamamen veya kısmen otomatik olan ya da herhangi bir veri kayıt sisteminin parçası olmak kaydıyla otomatik olmayan yollarla işlenen kişisel verilerin bulunduğu her türlü ortamı</p>\r\n<p><strong>Periyodik imha:</strong> Kanunda yer alan kişisel verilerin işlenme şartlarının tamamının ortadan kalkması durumunda kişisel verileri saklama ve imha politikasında belirtilen ve tekrar eden aralıklarla resen gerçekleştirilecek silme, yok etme veya anonim hale getirme işlemini</p>\r\n<p><strong>Veri kayıt sistemi</strong>: Kişisel verilerin belirli kriterlere göre yapılandırılarak işlendiği kayıt sistemini ifade eder.</p>\r\n<p><strong>SAKLAMA ve İMHA GEREKÇELERİ, SAKLAMA ve İMHA SÜRELERİ:</strong></p>\r\n<p>Şirketimiz, işlediği kişisel verileri, yasal zorunlu faaliyetlerini ve ticari faaliyetlerini yerine getirebilmek amacıyla, <strong>Kişisel Veri Envanteri</strong> ile belirlenen ve VERBİS (Veri Sorumluları Sicili)’de kamuya açık şekilde ilan edilen saklama süreleri zarfında, fiziksel ve/veya elektronik ortamlarda güvenli bir şekilde saklamaktadır. Kişisel Veri Envanteri’nde, her bir kişisel verinin, hangi ortamlarda işlendiği, saklandığı ve hangi yöntemlerle imha edildiği tanımlanmıştır. Kişisel veriler, başta 6698 Sayılı Kişisel Verileri Koruma Kanunu, 4857 Sayılı İş Kanunu, 6331 Sayılı İş Sağlığı ve Güvenliği Kanunu ve şirket faaliyetlerimizi ilgilendiren tüm mevzuat şartlarına uygun şekilde muhafaza edilmektedir.</p>\r\n<p>Kişisel veri saklama sürelerinin belirlenmesinde, kişisel verinin işlenmesindeki hukuki gerekçe veya işleme amacı dikkate alınır. Kişisel veri, yasal şartlar gereği olarak  toplanan ve işlenen bir veri ise, saklama süresi, ilgili mevzuatta yer alan süre olarak <strong>Kişisel Veri Envanteri</strong>’nde tanımlanır. Diğer veriler için ise, işleme amacına uygun şekilde, ilgili faaliyetlerin yerine getirebilmesini sağlayacak süreler belirlenir ve <strong>Kişisel Veri Envanteri</strong>’nde tanımlanır. Saklama süreleri bazen “ay”, “yıl” gibi tanımlanırken, bazı kişisel veriler için “…. Bitiminde”, “…………yapılana kadar” şeklinde tanımlanabilmektedir. Bu sebeple her bir kişisel veri için, ilgili mevzuatta öngörülen veya işlendikleri amaç için gerekli olan süreye ilişkin farklı bir muhafaza süresi geçerli olabilmektedir.</p>\r\n<p>Kişisel veriler, VERBİS’de kamuya açık şekilde ilan edilen “Veri Güvenliği Tedbirleri” alınarak saklanmaktadır. Çalışanlar için yetki matrisi hazırlanması, eğitimler yapılması, çalışanlarla ve veri işleyenlerle gizlilik sözleşmeleri yapılması gibi idari tedbirlerin yanı sıra, güncel antivirüs sistemleri kullanımı, güvenlik duvarı kullanımı, yedekleme, şifreleme vb teknik veri güvenliği tedbirleri alınmaktadır.</p>\r\n<p>Kişisel verilerin imhasında, seçilen yönteme göre, silme, yok etme, anonim hale getirme işlemi, kişisel verinin tekrar erişilmesi, geri getirilmesi, kullanılması veya veri sahibi ile ilişkilendirilmesini mümkün kılmayacak şekilde hareket edilir.</p>\r\n<p>Saklama süresi dolan kişisel veriler, belirlenmiş olan imha yöntemlerine göre imha edilir ve Veri İmha Tutanağı kullanılarak işlem kayıt altına alınır. Bu kayıtlar en az 3 yıl saklanır.</p>\r\n<p>Kişisel verilerin saklama ve imhasında, “Kişisel Veri Envanteri” ve “Kişisel Veriler İçin Yetki Matrisi ve Yetkilerin Yönetimi Tablosu”yla belirlenen sorumlular görev alır. İmha işlemlerinde görev alanlar, Veri İmha Tutanağı’nda kayıt altına alınır.</p>\r\n<p>Şirketimiz, her 3 ayda bir (Mart, Haziran, Eylül ve Aralık ayları) kişisel verileri gözden geçirerek, saklama süresi dolan verileri tespit eder ve kişisel verileri silme, yok etme veya anonim hale getirme yükümlülüğünün ortaya çıktığı tarihi takip eden ilk periyodik imha işleminde, kişisel verileri siler, yok eder veya anonim hale getirir. Bu süre, altı ayı geçmez.</p>\r\n<p><strong>İLGİLİ KİŞİNİN (VERİ SAHİBİNİN) TALEBİ HALİNDE KİŞİSEL VERİLERİN İMHASI</strong></p>\r\n<p>Kişisel veri sahipleri, Kişisel Verilerle İlgili Genel Aydınlatma Metni’mizde yer alan iletişim yöntemlerini kullanarak verileri hakkında bilgi talep edebilir. Bu talebin, kişisel verisinin silinmesi olması halinde:</p>\r\n<ol>\r\n<li>Kişisel veri işleme şartlarının tamamı ortadan kalkmışsa, talebe konu olan kişisel veriler imha edilir. İlgili kişinin talebi en geç 30 gün içinde sonuçlandırılır ve yazılı olarak / elektronik ortamda bilgilendirilir.</li>\r\n<li>Kişisel veri işleme şartlarının tamamı ortadan kalkmışsa ve talebe konu veriler, veri işleyen taraflara aktarılmışsa, şirketimiz durumu Veri İşleyen’e bildirir ve imha işlemlerinin yapılmasını sağlar.</li>\r\n<li>Kişisel veri işleme şartlarının tamamı ortadan kalkmamışsa, şirketimiz tarafından gerekçesi açıklanarak reddedilir ve en geç 30 gün içinde ret cevabı yazılı olarak / elektronik ortamda bildirilir.</li>\r\n</ol>\r\n<p> </p>\r\n<p> </p>\r\n<p>YÜRÜRLÜK TARİHİ: 11.02/2020 tarihinde yürürlüğe girmiştir. Revizyon no:00</p>\r\n<p>DEĞİŞİKLİKLER:</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\"121\">\r\n<p>Değişiklik No</p>\r\n</td>\r\n<td width=\"142\">\r\n<p>Değişiklik Tarihi</p>\r\n</td>\r\n<td width=\"390\">\r\n<p>Değişikliğe Dair Açıklama</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"121\">\r\n<p> </p>\r\n</td>\r\n<td width=\"142\">\r\n<p> </p>\r\n</td>\r\n<td width=\"390\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"121\">\r\n<p> </p>\r\n</td>\r\n<td width=\"142\">\r\n<p> </p>\r\n</td>\r\n<td width=\"390\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"121\">\r\n<p> </p>\r\n</td>\r\n<td width=\"142\">\r\n<p> </p>\r\n</td>\r\n<td width=\"390\">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, '92ead8694214ce2b5a0032e6d686ba99.webp', 'tr', 8, 1, '2022-12-26 08:46:27', '2023-03-20 13:40:23', '2022-12-26 08:45:02', 'KVKK'),
(6, 'kisisel-verilerle-ilgili-genel-aydinlatma-metni', 'Kişisel Verilerle İlgili Genel Aydınlatma Metni', '<ol>\r\n<li><strong> </strong><strong>Kişisel Verilerin Korunması Kanunu Hakkında:</strong></li>\r\n</ol>\r\n<p>İşbu “Genel Aydınlatma Metni”, AKIN HADDECİLİK Ltd.Şti. (“AKIN HADDECİLİK”) olarak, 6698 sayılı Kişisel Verilerin Korunması Kanunu (“KVKK”) uyarınca, Veri Sorumlusu sıfatıyla, KVKK’da yer alan “Veri Sorumlusunun Aydınlatma Yükümlülüğü” başlıklı 10. ve “İlgili Kişinin Hakları” başlıklı 11. maddesi çerçevesinde; hangi amaçla kişisel verilerinizin işleneceği, işlenen kişisel verilerinizin kimlere ve hangi amaçla aktarılabileceği, kişisel verilerinizin toplanmasının yöntemi ve hukuki sebebi ve KVKK’nın 11. maddesinde sayılan diğer haklarınızla ilgili olarak size bilgi vermek ve aşağıdaki hususlarda onayınızı almak amacıyla sunulmaktadır.</p>\r\n<p>Bize sağladığınız kişisel verilerin gizliliğini ve güvenliğini korumaya önem veriyoruz. Bu doğrultuda, kişisel verilerinizi yetkisiz erişim, zarar, kayıp veya ifşaya karşı korumak için gerekli teknik ve idari güvenlik önlemlerini almaktayız.</p>\r\n<p>Çalışanlarımızın kişisel verileriyle ilgili bilgilendirme <strong>Personel İçin Aydınlatma Metni</strong> ile sağlanmaktadır.</p>\r\n<ol start=\"2\">\r\n<li><strong> </strong><strong>Aldığımız Kişisel Verileriniz ve İşleme Amaçlarımız:</strong></li>\r\n</ol>\r\n<p>AKIN HADDECİLİK, web sitesi (<a href=\"http://www.akinhadde.com.tr\">www.akinhadde.com.tr</a>  )ve bu aydınlatma metninde yer verilen diğer kanallar vasıtasıyla paylaşmış olduğunuz kişisel verilerinizi, yine bu aydınlatma metninde belirtilen amaçlar ile sınırlı olarak işlemektedir. AKIN HADDECİLİK,  açık adresi Akçeşme Mah.2600 Sokak No:5. Merkezefendi / DENİZLİ/ TÜRKİYE ve vergi numarası Gökpınar  Vergi Dairesi - Vergi No: 027 001 0302’dir. KVKK açısından Şirketimiz “Veri Sorumlusu” sıfatıyla faaliyet göstermektedir.</p>\r\n<p>AKIN HADDECİLİK’e ait web sitesini ziyaret ettiğinizde ve/veya AKIN HADDECİLİK ile kişisel verilerinizi bu aydınlatma metninde belirtilen işleme amaçları kapsamında kullanılmak üzere paylaştığınızda, bu aydınlatma metninde ve web sitemizde yer alan gizlilik politikasında yer alan hükümler konusunda bilgilendirilmiş kabul edilirsiniz.</p>\r\n<p>AKIN HADDECİLİK olarak, Veri Sorumlusu sıfatıyla, 6698 sayılı Kişisel Verilerin Korunması Kanunu (“KVKK”), 5237 sayılı Türk Ceza Kanunu, 5651 sayılı İnternet Ortamında Yapılan Yayınların Düzenlenmesi ve Bu Yayınlar Yoluyla İşlenen Suçlarla Mücadele Edilmesi Hakkında Kanun ve ilgili ikincil mevzuat ve bunlarla sınırlı olmaksızın ilgili tüm mevzuattan kaynaklanan yasal yükümlülüklerimiz çerçevesinde ve şirket faaliyetlerimizi sürdürebilmek adına yaptığımız işlemlerde kişisel verileri topluyoruz.</p>\r\n<ol>\r\n<li><strong> </strong><strong>Müşterilerimizden Toplanan Kişisel Veriler</strong>: Adı-soyadı, e-posta adresi, adresi, telefon no, şirketimizi ziyareti halinde güvenlik kamerası görüntüleri, çekilmesi halinde fotoğraf vb veriler.</li>\r\n<li><strong> </strong><strong>Tedarikçilerimizden Topladığımız Kişisel Veriler</strong>: Ürün veya hizmet satın alma sürecinde, tedarikçi yetkilisi ve çalışanlarının adı-soyadı, iletişim bilgileri (Telefon, e-posta), hizmetin niteliğine göre hizmeti sunan tedarikçi personelinin diğer kişisel verileri, şirketimizi ziyareti halinde güvenlik kamerası görüntüleri vb</li>\r\n<li><strong> </strong><strong>İş Başvurusu Yapan Çalışan Adaylarından Topladığımız Kişisel Veriler</strong>: Kimlik, iletişim, mesleki deneyim (Öğrenim, eğitim ve çalışma geçmişi), adli sicil kaydı, referansların kimlik ve iletişim verileri, uyruk, doğum yeri ve tarihi, cinsiyet, medeni durum, askerlik durumu, sağlık / engellilik durumu vb. Aday, kendi ilettiği özgeçmişinde, AKIN HADDECİLİK tarafından talep edilmemiş başka kişisel verilerini de iletmiş olabilir. Bu veriler, AKIN HADDECİLİK tarafından dikkate alınmaz, işlenmez, bir başka kişi, kurum ya da kuruluşa iletilmez.</li>\r\n<li><strong> </strong><strong>Diğer</strong>: İş faaliyetlerinin yürütümü sırasında temas edilen diğer taraflardan alınan adı-soyadı, iletişim bilgileri vb.</li>\r\n</ol>\r\n<p><strong>İşleme Amaçlarımız</strong>: (VERBİS kaydımızda kategorik bazda tümü mevcuttur)</p>\r\n<p>      Aşağıdakilerle sınırlı olmamak kaydıyla, işleme amaçlarımız</p>\r\n<ol>\r\n<li>Mevzuatta düzenlenen hukuki yükümlülüklerimizi yerine getirmek</li>\r\n<li>Müşterilerimizin ihtiyaçlarını anlamak ve doğru teklifi sunabilmek</li>\r\n<li>Müşterilerle iletişimi geliştirmek ve daha etkin ve kaliteli hizmet sunabilmek</li>\r\n<li>Pazarlama ve satış süreçlerini yürütülebilmek</li>\r\n<li>Yetkili kişi, kurum ve kuruluşlara bilgi vermek</li>\r\n<li>Faturalandırma ve tahsilatı yapmak</li>\r\n<li>İşe başvuru süreçlerini yönetmek ve adayı değerlendirmek (İş başvurusu yapan adaylar için)</li>\r\n<li>Satın alma süreçlerini yürütmek (Tedarikçiler için)</li>\r\n<li>İş süreçlerimizi yürütebilmek (Diğer taraflar)</li>\r\n</ol>\r\n<p>Bu kişisel veriler; AKIN HADDECİLİK olarak sunduğumuz hizmetlerden yararlanabilmeniz adına, açık rızanıza istinaden veya tabi olduğumuz yasal mevzuat başta olmak üzere KVKK 5. maddesinin 2. fıkrasında öngörülen diğer hallerde, işbu Kişisel Verilerin Korunması Hakkında Bilgilendirme ile belirlenen amaçlar ve kapsam dışında kullanılmamak kaydı ile gerekli tüm bilgi güvenliği tedbirleri de alınarak işlenecek ve yasal saklama süresince veya işleme amacının gerekli kıldığı süre boyunca saklanacak ve işleme amacının gerekli kıldığı sürenin sonunda imha edilecek veya anonimleştirilerek kullanılacaktır.</p>\r\n<ol start=\"3\">\r\n<li><strong> </strong><strong>Kişisel Verilerinizi Hangi Yollarla Topluyoruz: </strong></li>\r\n</ol>\r\n<p>Kişisel verileriniz, sözlü, yazılı ya da elektronik ortamda, yukarıda yer verilen amaçlar kapsamında ve kanuni yükümlülüklerin ve hizmet şartlarının yerine getirebilmesi amacıyla toplanır.</p>\r\n<p><u>AKIN HADDECİLİK’e doğrudan sizin tarafınızdan sağlanan kişisel veriler</u>: İletmiş olduğunuz tüm bilgi ve belgeler, teklif talepleri, sözleşmeler, siparişler, iş başvuru formu veya özgeçmişler vb.</p>\r\n<p><u>İş süreçlerinin yürütümü sırasında toplanan kişisel veriler</u>:  Yazışmalar, e-posta yazışmaları, telefonla veya yüz yüze görüşmeler vb</p>\r\n<p><u>Fuarlarda toplanan kişisel veriler</u>: Sektörel fuar organizasyonlarındaki görüşmelerde toplanan bilgi ve belgeler</p>\r\n<p><u>(Kullanılması halinde )Çerezler ve benzeri teknolojiler vasıtasıyla topladığımız kişisel veriler</u>: Kişisel verileriniz, Kanun’a uygun olmak kaydıyla <a href=\"http://www.akinhadde.com.tr\">www.akinhadde.com.tr</a>    aracılığı ile otomatik yollarla elektronik ortamda toplanabilmektedir.</p>\r\n<p><u>AKIN HADDECİLİK’e yaptığınız ziyaretlerde toplanan kişisel veriler</u>: Güvenlik girişinden itibaren, güvenlik kamerası işareti bulunan alanlarda, güvenlik kamerası ile çekilen görüntüler kaydedilmektedir.</p>\r\n<ol start=\"4\">\r\n<li><strong> </strong><strong>Kişisel Verilerinizi Kimlerle Paylaşıyoruz:</strong></li>\r\n</ol>\r\n<p>AKIN HADDECİLİK, söz konusu kişisel verilerinizi, açık rızanıza istinaden veya tabi olduğumuz mevzuat başta olmak üzere KVKK md. 5/f.2’de öngörülen diğer hallerde KVKK’da belirtilen güvenlik ve gizlilik esasları çerçevesinde yeterli önlemler alınmak kaydıyla ilgili taraflarla paylaşabilir ve aktarabilir. Bizimle paylaşmış olduğunuz kişisel verileriniz, KVKK’da öngörülen işlenme ve paylaşım amaçları haricinde veya açık rızanız olmadan üçüncü kişilerle paylaşılmaz.</p>\r\n<p>Elektronik ortamda tutulan kişisel verileriniz, şirketimizin sunucu ve veri depolama ünitelerine (yurtiçi) aktarılır.</p>\r\n<p>Çalışan adaylarının iş başvuru formları, web sitemiz aracılığı ile ilettikleri bilgileri veya elden / e-posta ile gönderdikleri özgeçmişleri, açık rızası olmaksızın başka kişi ve kuruluşlara aktarılmaz..</p>\r\n<p>Diğer taraflardan toplanan kişisel veriler, işleme amacı doğrultusunda aktarımı gerekiyorsa, açık rızayı gerektiren hallerde veri sahibinin açık rızasını alarak veya kanuni gereklilik ya da açık rıza dışı işleme şartı gereği olarak yetkili kişi, kurum veya kuruluşlara aktarılabilir.</p>\r\n<ol start=\"5\">\r\n<li><strong> </strong><strong>Veri Sahibinin (İlgili Kişinin) Hakları</strong></li>\r\n</ol>\r\n<p>KVKK gereğince, veri sahibi olarak, kişisel verilerinizin:</p>\r\n<ul>\r\n<li>İşlenip işlenmediğini öğrenme</li>\r\n<li>İşlendiyse bilgi talep etme</li>\r\n<li>İşlenme amacını ve amaca uygun kullanılıp kullanılmadığını öğrenme</li>\r\n<li>Yurtiçi veya dışında aktarıldığı üçüncü tarafları bilme</li>\r\n<li>Eksik ya da yanlış işlenmişse veya değişmişse, düzeltilmesini talep etme</li>\r\n<li>KVKK Madde 7 çerçevesinde, silinmesini veya yok edilmesini isteme</li>\r\n<li>Aktarıldığı üçüncü kişilerden de yapılan işlemlerin bildirilmesini isteme</li>\r\n<li>Münhasıran otomatik sistemlerle analiz edilmesi nedeniyle aleyhte bir sonucun ortaya çıkmasına itiraz etme ve</li>\r\n<li>KVKK’ya aykırı işlenmesi sebebiyle zarara uğraması halinde zararın giderilmesini isteme hakkına sahipsiniz.</li>\r\n</ul>\r\n<p>Bu kapsamda yapacağınız talepler 6698 Kişisel Verileri Koruma Kanunu kapsamında yazılı olmalıdır. Bunun için, kimliğinizi tespit edici belgeler ile birlikte, kullanmak istediğiniz hakkınıza yönelik açıklamalarınızı yazılı olarak, şirketimizin <a href=\"mailto:info@akinhadde.com.tr\">info@akinhadde.com.tr</a> adresine gönderebilir veya başvurunuzu noter kanalıyla göndererek yapabilirsiniz.</p>\r\n<p>Bu amaçlarla yaptığınız başvurunun ek bir maliyet gerektirmesi durumunda, Kişisel Verileri Koruma Kurulu tarafından belirlenecek tarifedeki ücret tutarını ödemeniz gerekebilir. Başvurunuzda yer alan talepleriniz, talebin niteliğine göre en kısa sürede ve en geç 30 (otuz) gün içinde sonuçlandırılacaktır.</p>\r\n<p>Kullanıcı / Kullanıcılar, Şirketimiz web sitesinde işlem yapmadan önce sitede yer alan Şirket Gizlilik Politikası, Kişisel Veri Saklama ve  İmha Politikası ve yukarıda belirtilen Kişisel Verilerle İlgili Genel Aydınlatma Metni’ni okuduklarını, bu metinlerde belirtilen tüm hususlara uyacaklarını, web sitesinde yer alan içeriklerin ve AKIN HADDECİLİK’ye ait tüm elektronik ortam ve bilgisayar kayıtlarının Hukuk Muhakemeleri Kanunu madde 193 uyarınca kesin delil sayılacağını gayrıkabili rücu olarak kabul, beyan ve taahhüt etmişlerdir.</p>\r\n<p><u>Bizimle İletişime Geçin</u>: Genel Aydınlatma Metni veya diğer veri koruma uygulamalarımıza ilişkin herhangi bir soru veya endişenizin bulunması halinde veya bir erişim talebinizin bulunması halinde, bize Akçeşme  Mahallesi 2600 Sokak No:5 Merkezefendi / DENİZLİ adresinden veya 0258 371 31 85 nolu telefondan ulaşabilirsiniz.</p>\r\n<ol start=\"6\">\r\n<li><strong> </strong><strong>Yürürlük ve Değişiklikler</strong></li>\r\n</ol>\r\n<p>Bu aydınlatma metni, 11/02/2020 tarihinden itibaren yürürlüğe girmiştir.</p>\r\n<p>Kanunda veya Kişisel Veri Envanteri’nde değişiklikler olması halinde, revizyon numarası ve tarihi değiştirilerek, paydaşlara yeniden bilgilendirme yapılacaktır.</p>', NULL, 'e911a77b11879293e34362d508e36835.webp', 'tr', 9, 1, '2022-12-26 08:51:41', '2023-03-20 13:40:25', '2022-12-26 08:51:14', 'KVKK');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `seo_url` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `lang` char(2) NOT NULL DEFAULT 'tr',
  `rank` bigint(20) NOT NULL DEFAULT 1,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `seo_url`, `category_id`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'Kurumsal Kimlik Çalışmaları', NULL, 'kurumsal-kimlik-calismalari', 1, 'tr', 1, 1, '2023-03-19 21:47:07', '2023-03-20 08:06:52'),
(2, 'Grafik Tasarım Çalışmaları', NULL, 'grafik-tasarim-calismalari', 1, 'tr', 1, 1, '2023-03-19 21:47:07', '2023-03-20 08:07:03'),
(3, 'Tanıtım Filmleri', NULL, 'tanitim-filmleri', 1, 'tr', 3, 1, '2023-03-20 08:07:15', '2023-03-20 08:07:15'),
(4, 'Post Prodüksiyon Hizmeti', NULL, 'post-produksiyon-hizmeti', 1, 'tr', 4, 1, '2023-03-20 08:07:26', '2023-03-20 08:07:26'),
(5, 'Marka Danışmanlığı', NULL, 'marka-danismanligi', 1, 'tr', 5, 1, '2023-03-20 08:07:34', '2023-03-20 08:07:34'),
(6, 'Sosyal Medya Hesap Yönetimi', NULL, 'sosyal-medya-hesap-yonetimi', 2, 'tr', 6, 1, '2023-03-20 08:07:50', '2023-03-20 08:13:15'),
(7, 'Sosyal Medya Reklam Yönetimi', NULL, 'sosyal-medya-reklam-yonetimi', 2, 'tr', 7, 1, '2023-03-20 08:08:00', '2023-03-20 08:13:28'),
(8, 'Google Ads Reklam Yönetimi', NULL, 'google-ads-reklam-yonetimi', 2, 'tr', 8, 1, '2023-03-20 08:08:21', '2023-03-20 08:08:21'),
(9, 'Haritalara Kayıt Hizmeti', NULL, 'haritalara-kayit-hizmeti', 2, 'tr', 9, 1, '2023-03-20 08:08:34', '2023-03-20 08:08:34'),
(10, 'Seo Hizmeti', NULL, 'seo-hizmeti', 2, 'tr', 10, 1, '2023-03-20 08:08:42', '2023-03-20 08:08:42'),
(11, 'Kurumsal Web Sitesi', NULL, 'kurumsal-web-sitesi', 3, 'tr', 11, 1, '2023-03-20 08:08:54', '2023-03-20 08:09:00'),
(12, 'E-Ticaret Sitesi', NULL, 'e-ticaret-sitesi', 3, 'tr', 12, 1, '2023-03-20 08:09:10', '2023-03-20 08:09:10'),
(13, 'Mobil Uygulama ve Geliştirme', NULL, 'mobil-uygulama-ve-gelistirme', 3, 'tr', 13, 1, '2023-03-20 08:09:24', '2023-03-20 08:09:24'),
(14, 'Alan Adı & Sunucu Yönetimi', NULL, 'alan-adi-sunucu-yonetimi', 3, 'tr', 14, 1, '2023-03-20 08:09:38', '2023-03-20 08:16:04'),
(15, 'TV Programları', NULL, 'tv-programlari', 4, 'tr', 15, 1, '2023-03-20 08:09:50', '2023-03-20 08:09:50'),
(16, 'TV Reklam Çalışmaları', NULL, 'tv-reklam-calismalari', 4, 'tr', 16, 1, '2023-03-20 08:09:59', '2023-03-20 08:09:59'),
(17, 'Radyo Projeleri', NULL, 'radyo-projeleri', 4, 'tr', 17, 1, '2023-03-20 08:10:08', '2023-03-20 08:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `seo_url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `home_url` longtext DEFAULT NULL,
  `banner_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `title`, `seo_url`, `img_url`, `home_url`, `banner_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 'Kurumsal İmaj Çalışmaları', 'kurumsal-imaj-calismalari', NULL, NULL, NULL, 'tr', 1, 1, '2023-02-23 14:46:08', '2023-03-17 09:35:27'),
(2, 'Dijital Medya Çalışmaları', 'dijital-medya-calismalari', NULL, NULL, NULL, 'tr', 2, 1, '2023-02-23 14:46:08', '2023-03-17 09:35:37'),
(3, 'Yazılım Çalışmaları', 'yazilim-calismalari', NULL, NULL, NULL, 'tr', 3, 1, '2023-02-23 14:46:08', '2023-03-17 09:35:44'),
(4, 'İletişim Çalışmaları', 'iletisim-calismalari', NULL, NULL, NULL, 'tr', 4, 1, '2023-02-23 14:46:08', '2023-03-17 09:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `service_images`
--

CREATE TABLE `service_images` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `isCover` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_images`
--

INSERT INTO `service_images` (`id`, `service_id`, `url`, `img_url`, `title`, `description`, `lang`, `rank`, `isActive`, `isCover`, `createdAt`, `updatedAt`) VALUES
(2, 2, '61c1801afca5037b125d417dfd02fe2b.webp', NULL, NULL, NULL, 'tr', 1, 1, 1, '2023-01-09 09:01:02', '2023-01-09 09:20:58'),
(5, 34963, '957d5f3e530f37cb7a9ba4607da25d2c.webp', NULL, NULL, NULL, 'tr', 5, 1, 1, '2023-02-03 14:03:28', '2023-02-03 14:03:29'),
(6, 34964, 'b65249c675f18d6a92e9fa108fe28f4c.webp', NULL, NULL, NULL, 'tr', 6, 1, 1, '2023-02-03 14:03:37', '2023-02-03 14:03:38'),
(7, 34965, '2f5a4909a1abbd855db20a5a624ff255.webp', NULL, NULL, NULL, 'tr', 7, 1, 1, '2023-02-03 14:03:47', '2023-02-03 14:03:48'),
(8, 35835, 'acaba134c32b402eaf34354f3cd76f73.webp', NULL, NULL, NULL, 'tr', 8, 1, 1, '2023-02-03 14:08:07', '2023-02-03 14:08:08'),
(9, 39022, 'a0bb2554e06fdacb8501c6ccc02e3b9f.webp', NULL, NULL, NULL, 'tr', 9, 1, 1, '2023-02-03 14:08:24', '2023-02-03 14:08:26'),
(13, 34952, '3d4ea69143dff6755dc86be1c9270e95.webp', NULL, NULL, NULL, 'tr', 11, 1, 1, '2023-02-09 08:41:26', '2023-02-09 08:41:28'),
(15, 35829, '71e1a0e344e4f77d1defd82d320eb272.webp', NULL, NULL, NULL, 'tr', 11, 1, 1, '2023-02-09 08:41:41', '2023-02-09 08:41:42'),
(16, 34953, '91b62aed010bc7bef7ee11dc99dc2fbf.webp', NULL, NULL, NULL, 'tr', 11, 1, 1, '2023-02-09 08:42:33', '2023-02-09 08:42:34'),
(17, 34952, '1080bbae45735d7c4a7a76bd2e090b9b.webp', NULL, NULL, NULL, 'tr', 11, 1, 0, '2023-02-10 12:31:50', '2023-02-10 12:31:50'),
(18, 35829, '67e4b45828258105d82e71143d3b62de.webp', NULL, NULL, NULL, 'tr', 12, 1, 0, '2023-02-10 12:32:19', '2023-02-10 12:32:19'),
(19, 35829, '4c7a3121605216204114cef79e7def21.webp', NULL, NULL, NULL, 'tr', 13, 1, 0, '2023-02-10 13:10:34', '2023-02-10 13:10:34'),
(20, 35829, '1ef234a090b9338c348877e44927c7e9.webp', NULL, NULL, NULL, 'tr', 14, 1, 0, '2023-02-10 13:10:36', '2023-02-10 13:10:36'),
(21, 35829, 'f7589caae042e7cbdf7dae568bcc0c79.webp', NULL, NULL, NULL, 'tr', 15, 1, 0, '2023-02-10 13:10:38', '2023-02-10 13:10:38'),
(22, 35829, '7e6f12855d681c5ceed6801d1ff92b60.webp', NULL, NULL, NULL, 'tr', 16, 1, 0, '2023-02-10 13:10:40', '2023-02-10 13:10:40'),
(23, 35829, 'b813f66c97237a732dc593da64f91c95.webp', NULL, NULL, NULL, 'tr', 17, 1, 0, '2023-02-10 13:10:42', '2023-02-10 13:10:42'),
(24, 35829, '224bb932bedf91197fac9de18a6be413.webp', NULL, NULL, NULL, 'tr', 18, 1, 0, '2023-02-10 13:10:44', '2023-02-10 13:10:44'),
(25, 35829, '61b9a700d1d3abfea76d8d931a7e5dc1.webp', NULL, NULL, NULL, 'tr', 19, 1, 0, '2023-02-10 13:10:47', '2023-02-10 13:10:47'),
(26, 1, '5277e6044ae1f196d62b7466604ae769.webp', NULL, NULL, NULL, 'tr', 20, 1, 1, '2023-03-20 13:32:30', '2023-03-20 13:34:40'),
(27, 1, 'd3c58f586e48f40525782d56b9d280b5.webp', NULL, NULL, NULL, 'tr', 21, 1, 0, '2023-03-20 13:32:30', '2023-03-20 13:32:30'),
(28, 1, '9ad2d0487bc9937319856db483c50dc0.webp', NULL, NULL, NULL, 'tr', 22, 1, 0, '2023-03-20 13:32:30', '2023-03-20 13:32:30'),
(29, 1, '4fbed45997c994237ce9e3bda9b64d57.webp', NULL, NULL, NULL, 'tr', 23, 1, 0, '2023-03-20 13:32:30', '2023-03-20 13:32:30'),
(30, 1, '4bd02ce930fa37dcdb3b3618b50370c2.webp', NULL, NULL, NULL, 'tr', 24, 1, 0, '2023-03-20 13:32:31', '2023-03-20 13:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `address_title` longtext DEFAULT NULL,
  `map` longtext DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `mobile_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `mobile_logo_2` varchar(255) DEFAULT NULL,
  `blog_logo` varchar(255) DEFAULT NULL,
  `about_logo` varchar(255) DEFAULT NULL,
  `gallery_logo` varchar(255) DEFAULT NULL,
  `contact_logo` varchar(255) DEFAULT NULL,
  `service_logo` varchar(255) DEFAULT NULL,
  `service_detail_logo` varchar(255) DEFAULT NULL,
  `category_logo` varchar(255) DEFAULT NULL,
  `catalog` varchar(255) DEFAULT NULL,
  `sector_logo` varchar(255) DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `fax` longtext DEFAULT NULL,
  `whatsapp` longtext DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL,
  `analytics` longtext DEFAULT NULL,
  `metrica` longtext DEFAULT NULL,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `isActive` tinyint(1) DEFAULT 1,
  `lang` char(2) DEFAULT 'tr',
  `crawler_email` varchar(255) DEFAULT NULL,
  `crawler_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `address`, `address_title`, `map`, `logo`, `mobile_logo`, `favicon`, `mobile_logo_2`, `blog_logo`, `about_logo`, `gallery_logo`, `contact_logo`, `service_logo`, `service_detail_logo`, `category_logo`, `catalog`, `sector_logo`, `phone`, `fax`, `whatsapp`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `medium`, `pinterest`, `meta_description`, `analytics`, `metrica`, `rank`, `createdAt`, `updatedAt`, `isActive`, `lang`, `crawler_email`, `crawler_password`) VALUES
(1, 'Mutfak Yapım Dijital Reklam Ajansı', 'Mutfak Yapım Filmcilik Müzik Organizasyon Sanayi ve Ticaret Limited Şirketi', '[\"Alsancak, Alsancak Mh. 1440 sk. No: 13 D:1, 35220 Konak\\/\\u0130zmir\"]', '[\"\\u0130zmir Ofis\"]', '[\"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m8!1m3!1d25001.90443331817!2d27.143839!3d38.43597!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14bbd8f738f4b3ef%3A0xc16c75aa798b6e48!2sMutfak%20Yap%C4%B1m%20Dijital%20Reklam%20Ajans%C4%B1!5e0!3m2!1sen!2str!4v1679317487693!5m2!1sen!2str&quot; width=&quot;100%&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot; referrerpolicy=&quot;no-referrer-when-downgrade&quot;&gt;&lt;\\/iframe&gt;\"]', '4534c140a4c4b4c23f7b3954263ce535.webp', 'd47d138ed81c0184efa49d293b11940b.webp', 'dceb0fd382c191ec3f09311110ed0e2d.webp', '7085b938fdddf784555ddba1f595bd75.webp', '050cb763a4ced5a07dcd477b35d96269.webp', 'a057b6ccfc75b73a6a05c51ad5f8871e.webp', 'e154feac487508c4eb8ee35ce28d94cc.webp', 'd02f51b77b88c16277900fe53d938c0c.webp', '109d6b03b6d6e5051fe547564639e749.webp', '87f4d6a8e21c7fac6e00bfb64d2d29c0.webp', '4bc1ada79cf9e6f07a0fd96b93465f33.webp', '2ba528197b3ca10368b015fcd8e572c2.pdf', '381518a6421ffe17434e8af15d309367.webp', '[\"+90 232 403 20 02\"]', '[\"\"]', '[\"+90 232 403 20 02\"]', 'iletisim@mutfakyapim.com', 'https://www.facebook.com/mutfakyapim', NULL, 'https://www.instagram.com/mutfak.yapim', 'https://www.linkedin.com/company/mutfakyapim', NULL, NULL, NULL, 'Mutfak Yapım olarak sosyal medya, dijital pazarlama, web tasarım ve prodüksiyon alanlarında faaliyet gösteren İzmir merkezli bir reklam şirketiyiz.', '', '', 1, '2020-07-22 20:57:22', '2023-03-20 13:05:02', 1, 'tr', 'emrekilic@mutfakyapim.com', 'MutfakYapim35?');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `allowButton` tinyint(4) DEFAULT 0,
  `button_url` longtext DEFAULT NULL,
  `target` enum('_self','_blank','_top','_parent') DEFAULT '_self',
  `button_caption` longtext DEFAULT NULL,
  `video_url` longtext DEFAULT NULL,
  `video_caption` longtext DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `img_url`, `allowButton`, `button_url`, `target`, `button_caption`, `video_url`, `video_caption`, `page_id`, `collection_id`, `product_id`, `service_id`, `sector_id`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(1, 'Excellence Halı', '<p>Excellence Halı</p>', 'ac34cca7266710290334467e09d6fd0e.webp', 0, NULL, '_self', 'Kariyerini planlamak için tıkla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 1, 1, '2022-01-03 11:00:17', '2023-02-20 13:22:54', '2022-01-03 10:59:49'),
(2, 'Excellence Halı', '<p>Excellence Halı</p>', '1052d14fa53447e93b9a5a2b0f1d69e0.webp', 0, NULL, '_self', 'Ön Kayıt İçin Tıkla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tr', 2, 1, '2022-01-14 11:27:30', '2023-02-20 13:23:15', '2022-01-14 11:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_number` varchar(11) DEFAULT NULL,
  `tax_administration` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `codes` longtext DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `isActive` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `token` varchar(255) DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `company_name`, `tax_number`, `tax_administration`, `address`, `codes`, `password`, `role_id`, `isActive`, `createdAt`, `updatedAt`, `token`, `lang`) VALUES
(1, 'Mutfak', 'Yapım', 'info@mutfakyapim.com', '05494410121', NULL, NULL, NULL, NULL, NULL, '0a7483867a2442352e2b86d4b4910826', 1, 1, '2021-01-13 05:30:08', '2023-02-22 08:02:07', 'jxFRs9CRUfkyFgqZcegvAH1iyNOEBEU2BqFVJCvQmK04EuPmocO8wo3xFtvs67kZlP8A7RbUYlZqY2GS4jPLbppdH8zloYlmCEuDf5N234KacVkMtJq8PThypV5O6m2Ht0kXJGTsS578WwCDc1zApKbaQxI4Cpu9wyOlN0tV53SzdBGw5qWMGU1GxLW7VTn1eLdaEXXMwHofDesIW6fLainDjRiQIvLKhBYoex79eiIjgQdg1ghtN3IAnzYDrz9', 'tr'),
(2, 'Emre', 'KILIÇ', 'emrekilic@mutfakyapim.com', '05494410120', NULL, NULL, NULL, NULL, NULL, '0a7483867a2442352e2b86d4b4910826', 1, 1, '2021-01-13 05:30:08', '2023-02-23 06:36:59', 'VVro3leUNW68oNqcubiS3K1GWPQDt50HyGaFEWq4OiUJwZzzJsKqHrZHvRM9gkj6gHElstOpc2ym0Akwems8Ac8Rz7BpdR62nI4WXMkQXgyx8CIlLerOKY9Un4GLa3dcCj1TfEJELFTiIld2qQiVDix2oP0k9A5vFPdwwXxJuMaR4Z5SBL5YZogNyOB7CGpv96h11JjQKI4aZhYhdefu5n127bU38EoVxTMlxUBwftB6fem3YWqhjvPSTGrFsNt', 'tr');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `permissions` mediumtext DEFAULT NULL,
  `isActive` int(11) DEFAULT 0,
  `isCover` tinyint(4) DEFAULT 0,
  `rank` int(11) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `title`, `permissions`, `isActive`, `isCover`, `rank`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', '{\"blogs\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"blog_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"dashboard\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"departments\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"emailsettings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"homeitems\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"menus\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"our_works\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"pages\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"services\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"service_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"settings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"slides\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"userop\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"users\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"user_role\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"}}', 1, 1, 1, '2020-07-22 20:58:34', '2023-03-21 07:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_urls`
--

CREATE TABLE `video_urls` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `img_url` longtext DEFAULT NULL,
  `lang` char(2) DEFAULT 'tr',
  `rank` bigint(20) DEFAULT 1,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sharedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `video_urls`
--

INSERT INTO `video_urls` (`id`, `gallery_id`, `title`, `description`, `url`, `img_url`, `lang`, `rank`, `isActive`, `createdAt`, `updatedAt`, `sharedAt`) VALUES
(4, 3, NULL, NULL, '&lt;iframe class=&quot;lazyload&quot; loading=&quot;lazy&quot; width=&quot;100%&quot; height=&quot;450&quot; data-src=&quot;https://www.youtube.com/embed/nMokHYNLKus&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;', NULL, 'tr', 1, 1, '2022-11-23 09:15:52', '2022-11-23 09:15:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_FILEGALLERY` (`gallery_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_items`
--
ALTER TABLE `home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_IMAGEGALLERY` (`gallery_id`);

--
-- Indexes for table `instagram_posts`
--
ALTER TABLE `instagram_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linguo_languages`
--
ALTER TABLE `linguo_languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `linguo_language_files`
--
ALTER TABLE `linguo_language_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `linguo_language_strings`
--
ALTER TABLE `linguo_language_strings`
  ADD PRIMARY KEY (`string_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_works`
--
ALTER TABLE `our_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_images`
--
ALTER TABLE `service_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX_SERVICE_ID` (`service_id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD KEY `FK_ROLEID` (`role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_VIDEOGALLERY` (`gallery_id`);

--
-- Indexes for table `video_urls`
--
ALTER TABLE `video_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_VIDEOURLGALLERY` (`gallery_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_items`
--
ALTER TABLE `home_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `instagram_posts`
--
ALTER TABLE `instagram_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `linguo_languages`
--
ALTER TABLE `linguo_languages`
  MODIFY `language_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linguo_language_files`
--
ALTER TABLE `linguo_language_files`
  MODIFY `file_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linguo_language_strings`
--
ALTER TABLE `linguo_language_strings`
  MODIFY `string_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `our_works`
--
ALTER TABLE `our_works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_images`
--
ALTER TABLE `service_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_urls`
--
ALTER TABLE `video_urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `FK_FILEGALLERY` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FK_IMAGEGALLERY` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_ROLEID` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_VIDEOGALLERY` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `video_urls`
--
ALTER TABLE `video_urls`
  ADD CONSTRAINT `FK_VIDEOURLGALLERY` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
