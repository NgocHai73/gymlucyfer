-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 16, 2023 lúc 05:46 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gymlucifer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `apartment_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `city`, `district`, `ward`, `apartment_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nike', NULL, NULL, NULL),
(2, 'Gucci', NULL, NULL, NULL),
(3, 'Adidas', NULL, NULL, NULL),

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `parent_id`, `slug`) VALUES
(1, 'Phụ Kiện Tập Gym\r\n', NULL, NULL, NULL, 0, 'phu-kien-tap-gym'),
(2, 'Phụ Kiện Võ Thuật', NULL, NULL, NULL, 0, 'ph-kien-vo-thuat'),
;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trắng', NULL, NULL, NULL),
(2, 'Đen', NULL, NULL, NULL),
(3, 'Xám', NULL, NULL, NULL),
(4, 'Đỏ', NULL, NULL, NULL),
(5, 'Vàng', NULL, NULL, NULL),
(6, 'Xanh', NULL, NULL, NULL),
(7, 'Tím', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_06_054552_create_roles_table', 1),
(3, '2023_02_06_093103_create_users_table', 1),
(4, '2023_02_06_093104_create_addresses_table', 1),
(5, '2023_02_09_141232_create_user_verifies_table', 1),
(6, '2023_02_17_101710_create_brands_table', 1),
(7, '2023_03_13_104142_create_colors_table', 1),
(8, '2023_03_13_104200_create_sizes_table', 1),
(9, '2023_03_15_111222_create_categories_table', 1),
(10, '2023_03_16_130121_create_products_table', 1),
(11, '2023_03_16_140642_create_products_color_table', 1),
(12, '2023_03_16_140906_create_products_size_table', 1),
(13, '2023_03_23_091419_create_payments_table', 1),
(14, '2023_03_23_095605_create_orders_table', 1),
(15, '2023_03_27_001440_create_order_details_table', 1),
(16, '2023_03_28_004112_alert_orders_table', 1),
(17, '2023_03_28_004113_alert_orders_table', 1),
(18, '2023_03_28_143413_alert_products_size_table', 1),
(19, '2023_03_28_144341_alert_products_color_table', 1),
(20, '2023_03_28_144345_alert_products_table', 1),
(21, '2023_03_28_144347_alert_orders_table', 1),
(22, '2023_03_28_144348_create_trigger_validate_quantity', 1),
(23, '2023_03_28_144349_create_trigger_group_by_quantity', 1),
(24, '2023_04_11_111222_alter_categories_table', 1),
(25, '2023_04_11_111223_alter_categories_table', 1),
(26, '2023_04_13_114627_create_product_reviews_table', 1),
(27, '2023_04_17_180428_drop_personal_access_tokens_table', 1),
(28, '2023_04_13_114628_alter_products_size_table ', 2),
(29, '2023_04_30_114628_alter_product_table ', 3),
(30, '2023_04_18_180428_create_setting_table', 4),
(31, '2023_04_19_180428_alter_setting_table', 4),
(32, '2023_03_28_144348_create_reduce_quantity_product_trigger', 5),
(33, '2023_05_1_114628_alter_payments_table ', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `total_money` double NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `transport_fee` double NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `total_money`, `order_status`, `created_at`, `updated_at`, `deleted_at`, `transport_fee`, `note`, `payment_status`) VALUES
(1683108014547, 2, 2, 3710500, 3, '2023-05-03 10:00:42', '2023-05-03 10:02:13', NULL, 15500, 'Đơn hàng của bạn đã được xử lý', 0),
(1683109076791, 2, 1, 5779500, 3, '2023-05-02 10:17:56', '2023-05-03 10:19:20', NULL, 15500, 'Đơn hàng của bạn đã được xử lý', 0),
(1683109573486, 2, 1, 3008500, 3, '2023-05-01 10:26:13', '2023-05-03 10:26:33', NULL, 15500, 'Đơn hàng của bạn đã được xử lý', 0),
(1683115093517, 2, 1, 4207500, 3, '2023-05-03 11:58:13', '2023-05-03 11:58:45', NULL, 15500, 'Đơn hàng của bạn đã được xử lý', 0),
(1683162703503, 9, 2, 3034000, 3, '2023-05-04 01:12:05', '2023-05-04 01:12:34', NULL, 44000, 'đơn hàng của bạn đã được xử lý', 0),
(1683163000534, 9, 1, 15044000, 0, '2023-05-04 01:16:40', '2023-05-04 01:16:40', NULL, 44000, NULL, 0),
(1683163430248, 9, 1, 642000, 0, '2023-05-04 01:23:50', '2023-05-04 01:23:50', NULL, 44000, NULL, 0),
(1683181063884, 9, 2, 1644000, 0, '2023-05-04 06:18:38', '2023-05-04 06:18:38', NULL, 44000, NULL, 0),
(1684593283196, 11, 1, 733000, 1, '2023-05-20 14:34:43', '2023-05-20 14:38:05', NULL, 34000, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_size_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_size_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
;

--
-- Bẫy `order_details`
--
DELIMITER $$
CREATE TRIGGER `group_by_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                declare _record int;
                declare _quantity int;
                select count(*) into _record from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                if (_record >= 2) then
                    select sum(quantity) into _quantity from order_details where product_size_id = new.product_size_id and order_id = new.order_id;
                    update order_details set quantity = _quantity where product_size_id = new.product_size_id and order_id = new.order_id;
                    SIGNAL sqlstate "45001" set message_text = "error";
                end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `reduce_quantity_product` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
                    declare _quantity int;
                    select quantity into _quantity from products_size where id = new.product_size_id;
                    if (new.quantity <= 0 || _quantity < new.quantity) then
                        SIGNAL sqlstate "45001" set message_text = "error";
                    else
                        update products_size set quantity = _quantity - new.quantity where id = new.product_size_id;
                    end if;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `validate_quantity` AFTER INSERT ON `order_details` FOR EACH ROW BEGIN
            declare _quantity int;
            select quantity into _quantity from products_size where id = new.product_size_id;
            if (new.quantity <= 0 || _quantity < new.quantity) then
                SIGNAL sqlstate "45001" set message_text = "error";
            end if;
        END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `status`, `img`) VALUES
(1, 'Khi nhận hàng', NULL, NULL, NULL, 1, '1682960154.png'),
(2, 'Ví điện tử Momo', NULL, NULL, NULL, 1, '1682960202.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `price_import` double NOT NULL,
  `price_sell` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price_import`, `price_sell`, `img`, `description`, `status`, `category_id`, `brand_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_color`
--

CREATE TABLE `products_color` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_color`
--

INSERT INTO `products_color` (`id`, `img`, `color_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '1682757811.png', 2, 2, '2023-04-29 08:43:31', '2023-04-29 08:43:31', NULL),
(3, '1682757835.png', 3, 2, '2023-04-29 08:43:55', '2023-04-29 08:43:55', NULL),
(4, '1682757846.png', 6, 2, '2023-04-29 08:44:06', '2023-04-29 08:44:06', NULL),
(5, '1682838127.png', 1, 2, '2023-04-30 07:02:07', '2023-04-30 07:02:07', NULL),
(6, '1683009385.png', 1, 3, '2023-05-02 06:36:25', '2023-05-02 06:36:25', NULL),
(7, '1683009405.png', 6, 3, '2023-05-02 06:36:45', '2023-05-02 06:36:45', NULL),
(8, '1683009413.png', 2, 3, '2023-05-02 06:36:53', '2023-05-02 06:36:53', NULL),
(9, '1683009674.png', 1, 4, '2023-05-02 06:41:14', '2023-05-02 06:41:14', NULL),
(10, '1683009697.png', 2, 4, '2023-05-02 06:41:37', '2023-05-02 06:41:37', NULL),
(11, '1683009705.png', 3, 4, '2023-05-02 06:41:45', '2023-05-02 06:41:45', NULL),
(12, '1683009718.png', 6, 4, '2023-05-02 06:41:58', '2023-05-02 06:41:58', NULL),
(13, '1683010022.png', 4, 5, '2023-05-02 06:47:02', '2023-05-02 06:47:02', NULL),
(14, '1683010040.png', 2, 5, '2023-05-02 06:47:20', '2023-05-02 06:47:20', NULL),
(15, '1683010050.png', 1, 5, '2023-05-02 06:47:30', '2023-05-02 06:47:30', NULL),
(16, '1683010058.png', 6, 5, '2023-05-02 06:47:38', '2023-05-02 06:47:38', NULL),
(17, '1683010740.png', 1, 6, '2023-05-02 06:59:00', '2023-05-02 06:59:00', NULL),
(18, '1683010891.png', 1, 7, '2023-05-02 07:01:31', '2023-05-02 07:01:31', NULL),
(19, '1683010905.png', 3, 7, '2023-05-02 07:01:45', '2023-05-02 07:01:45', NULL),
(20, '1683010915.png', 6, 7, '2023-05-02 07:01:55', '2023-05-02 07:01:55', NULL),
(21, '1683011098.png', 2, 8, '2023-05-02 07:04:58', '2023-05-02 07:04:58', NULL),
(22, '1683011106.png', 3, 8, '2023-05-02 07:05:06', '2023-05-02 07:05:06', NULL),
(23, '1683011117.png', 6, 8, '2023-05-02 07:05:17', '2023-05-02 07:05:17', NULL),
(24, '1683011409.png', 1, 9, '2023-05-02 07:10:09', '2023-05-02 07:10:09', NULL),
(25, '1683011418.png', 2, 9, '2023-05-02 07:10:18', '2023-05-02 07:10:18', NULL),
(26, '1683011428.png', 6, 9, '2023-05-02 07:10:28', '2023-05-02 07:10:28', NULL),
(27, '1683011725.png', 1, 10, '2023-05-02 07:15:25', '2023-05-02 07:15:25', NULL),
(28, '1683011733.png', 2, 10, '2023-05-02 07:15:33', '2023-05-02 07:15:33', NULL),
(29, '1683011741.png', 3, 10, '2023-05-02 07:15:41', '2023-05-02 07:15:41', NULL),
(30, '1683011750.png', 6, 10, '2023-05-02 07:15:50', '2023-05-02 07:15:50', NULL),
(31, '1683011905.png', 4, 11, '2023-05-02 07:18:25', '2023-05-02 07:18:25', NULL),
(32, '1683011914.png', 2, 11, '2023-05-02 07:18:34', '2023-05-02 07:18:34', NULL),
(33, '1683011927.png', 6, 11, '2023-05-02 07:18:47', '2023-05-02 07:18:47', NULL),
(34, '1683012156.png', 3, 12, '2023-05-02 07:22:36', '2023-05-02 07:22:36', NULL),
(35, '1683012164.png', 2, 12, '2023-05-02 07:22:44', '2023-05-02 07:22:44', NULL),
(36, '1683012172.png', 6, 12, '2023-05-02 07:22:52', '2023-05-02 07:22:52', NULL),
(37, '1683012479.png', 4, 13, '2023-05-02 07:27:59', '2023-05-02 07:27:59', NULL),
(38, '1683012487.png', 6, 13, '2023-05-02 07:28:07', '2023-05-02 07:28:07', NULL),
(39, '1683012494.png', 2, 13, '2023-05-02 07:28:14', '2023-05-02 07:28:14', NULL),
(40, '1683012682.png', 1, 14, '2023-05-02 07:31:22', '2023-05-02 07:31:22', NULL),
(41, '1683012688.png', 2, 14, '2023-05-02 07:31:28', '2023-05-02 07:31:28', NULL),
(42, '1683012695.png', 6, 14, '2023-05-02 07:31:35', '2023-05-02 07:31:35', NULL),
(43, '1683012702.png', 4, 14, '2023-05-02 07:31:42', '2023-05-02 07:31:42', NULL),
(44, '1683012711.png', 3, 14, '2023-05-02 07:31:51', '2023-05-02 07:31:51', NULL),
(45, '1683012878.png', 1, 15, '2023-05-02 07:34:38', '2023-05-02 07:34:38', NULL),
(46, '1683012886.png', 2, 15, '2023-05-02 07:34:46', '2023-05-02 07:34:46', NULL),
(47, '1683012894.png', 3, 15, '2023-05-02 07:34:54', '2023-05-02 07:34:54', NULL),
(48, '1683012902.png', 6, 15, '2023-05-02 07:35:02', '2023-05-02 07:35:02', NULL),
(49, '1683013097.png', 1, 16, '2023-05-02 07:38:17', '2023-05-02 07:38:17', NULL),
(50, '1683013105.png', 2, 16, '2023-05-02 07:38:25', '2023-05-02 07:38:25', NULL),
(51, '1683013113.png', 6, 16, '2023-05-02 07:38:33', '2023-05-02 07:38:33', NULL),
(52, '1683013385.png', 2, 17, '2023-05-02 07:43:05', '2023-05-02 07:43:05', NULL),
(53, '1683013393.png', 6, 17, '2023-05-02 07:43:13', '2023-05-02 07:43:13', NULL),
(54, '1683013493.png', 2, 18, '2023-05-02 07:44:53', '2023-05-02 07:44:53', NULL),
(55, '1683013500.png', 3, 18, '2023-05-02 07:45:00', '2023-05-02 07:45:00', NULL),
(56, '1683013646.png', 2, 19, '2023-05-02 07:47:26', '2023-05-02 07:47:26', NULL),
(57, '1683013654.png', 6, 19, '2023-05-02 07:47:34', '2023-05-02 07:47:34', NULL),
(58, '1683013793.png', 2, 20, '2023-05-02 07:49:53', '2023-05-02 07:49:53', NULL),
(59, '1683013804.png', 6, 20, '2023-05-02 07:50:04', '2023-05-02 07:50:04', NULL),
(60, '1683013823.png', 3, 20, '2023-05-02 07:50:23', '2023-05-02 07:50:23', NULL),
(61, '1683013964.png', 5, 21, '2023-05-02 07:52:44', '2023-05-02 07:52:44', NULL),
(62, '1683013976.png', 6, 21, '2023-05-02 07:52:56', '2023-05-02 07:52:56', NULL),
(63, '1683013984.png', 4, 21, '2023-05-02 07:53:04', '2023-05-02 07:53:04', NULL),
(64, '1683014109.png', 2, 22, '2023-05-02 07:55:09', '2023-05-02 07:55:09', NULL),
(65, '1683014118.png', 6, 22, '2023-05-02 07:55:18', '2023-05-02 07:55:18', NULL),
(66, '1683014125.png', 1, 22, '2023-05-02 07:55:25', '2023-05-02 07:55:25', NULL),
(67, '1683015138.png', 1, 23, '2023-05-02 08:12:18', '2023-05-02 08:12:18', NULL),
(68, '1683015171.png', 3, 23, '2023-05-02 08:12:51', '2023-05-02 08:12:51', NULL),
(69, '1683015178.png', 6, 23, '2023-05-02 08:12:58', '2023-05-02 08:12:58', NULL),
(70, '1683015404.png', 1, 24, '2023-05-02 08:16:44', '2023-05-02 08:16:44', NULL),
(71, '1683015411.png', 2, 24, '2023-05-02 08:16:51', '2023-05-02 08:16:51', NULL),
(72, '1683015424.png', 4, 24, '2023-05-02 08:17:04', '2023-05-02 08:17:04', NULL),
(73, '1683015432.png', 3, 24, '2023-05-02 08:17:12', '2023-05-02 08:17:12', NULL),
(74, '1683015441.png', 7, 24, '2023-05-02 08:17:21', '2023-05-02 08:17:21', NULL),
(75, '1683015634.png', 1, 25, '2023-05-02 08:20:34', '2023-05-02 08:20:34', NULL),
(76, '1683015644.png', 2, 25, '2023-05-02 08:20:44', '2023-05-02 08:20:44', NULL),
(77, '1683015651.png', 4, 25, '2023-05-02 08:20:51', '2023-05-02 08:20:51', NULL),
(78, '1683016076.png', 1, 26, '2023-05-02 08:27:56', '2023-05-02 08:27:56', NULL),
(79, '1683016083.png', 2, 26, '2023-05-02 08:28:03', '2023-05-02 08:28:03', NULL),
(80, '1683016091.png', 3, 26, '2023-05-02 08:28:11', '2023-05-02 08:28:11', NULL),
(81, '1683016099.png', 6, 26, '2023-05-02 08:28:19', '2023-05-02 08:28:19', NULL),
(82, '1683016107.png', 5, 26, '2023-05-02 08:28:27', '2023-05-02 08:28:27', NULL),
(83, '1683016263.png', 1, 27, '2023-05-02 08:31:03', '2023-05-02 08:31:03', NULL),
(84, '1683016272.png', 2, 27, '2023-05-02 08:31:12', '2023-05-02 08:31:12', NULL),
(85, '1683016282.png', 6, 27, '2023-05-02 08:31:22', '2023-05-02 08:31:22', NULL),
(86, '1683016305.png', 5, 27, '2023-05-02 08:31:45', '2023-05-02 08:31:45', NULL),
(87, '1683016312.png', 4, 27, '2023-05-02 08:31:52', '2023-05-02 08:31:52', NULL),
(88, '1683016536.png', 1, 28, '2023-05-02 08:35:36', '2023-05-02 08:35:36', NULL),
(89, '1683016545.png', 2, 28, '2023-05-02 08:35:45', '2023-05-02 08:35:45', NULL),
(90, '1683016554.png', 3, 28, '2023-05-02 08:35:54', '2023-05-02 08:35:54', NULL),
(91, '1683016561.png', 4, 28, '2023-05-02 08:36:01', '2023-05-02 08:36:01', NULL),
(92, '1683016568.png', 5, 28, '2023-05-02 08:36:08', '2023-05-02 08:36:08', NULL),
(93, '1683016576.png', 6, 28, '2023-05-02 08:36:16', '2023-05-02 08:36:16', NULL),
(94, '1683016885.png', 1, 29, '2023-05-02 08:41:25', '2023-05-02 08:41:25', NULL),
(95, '1683016895.png', 6, 29, '2023-05-02 08:41:35', '2023-05-02 08:41:35', NULL),
(96, '1683016902.png', 2, 29, '2023-05-02 08:41:42', '2023-05-02 08:41:42', NULL),
(97, '1683017054.png', 3, 30, '2023-05-02 08:44:14', '2023-05-02 08:44:14', NULL),
(98, '1683017061.png', 6, 30, '2023-05-02 08:44:21', '2023-05-02 08:44:21', NULL),
(99, '1683017114.png', 1, 31, '2023-05-02 08:45:14', '2023-05-02 08:45:14', NULL),
(100, '1683017122.png', 2, 31, '2023-05-02 08:45:22', '2023-05-02 08:45:22', NULL),
(101, '1683017136.png', 3, 31, '2023-05-02 08:45:36', '2023-05-02 08:45:36', NULL),
(102, '1683017145.png', 4, 31, '2023-05-02 08:45:45', '2023-05-02 08:45:45', NULL),
(103, '1683017520.png', 4, 32, '2023-05-02 08:52:00', '2023-05-02 08:52:00', NULL),
(104, '1683017533.png', 6, 32, '2023-05-02 08:52:13', '2023-05-02 08:52:13', NULL),
(105, '1683017539.png', 2, 32, '2023-05-02 08:52:19', '2023-05-02 08:52:19', NULL),
(106, '1683017665.png', 6, 33, '2023-05-02 08:54:25', '2023-05-02 08:54:25', NULL),
(107, '1683017679.png', 2, 33, '2023-05-02 08:54:39', '2023-05-02 08:54:39', NULL),
(108, '1683017928.png', 2, 34, '2023-05-02 08:58:48', '2023-05-02 08:58:48', NULL),
(109, '1683017939.png', 3, 34, '2023-05-02 08:58:59', '2023-05-02 08:58:59', NULL),
(110, '1683017955.png', 6, 34, '2023-05-02 08:59:15', '2023-05-02 08:59:15', NULL),
(111, '1683017977.png', 4, 34, '2023-05-02 08:59:37', '2023-05-02 08:59:37', NULL),
(112, '1683018248.png', 1, 35, '2023-05-02 09:04:08', '2023-05-02 09:04:08', NULL),
(113, '1683018256.png', 3, 35, '2023-05-02 09:04:16', '2023-05-02 09:04:16', NULL),
(114, '1683018301.png', 2, 35, '2023-05-02 09:05:01', '2023-05-02 09:05:01', NULL),
(115, '1683018313.png', 6, 35, '2023-05-02 09:05:13', '2023-05-02 09:05:13', NULL),
(116, '1683018495.png', 2, 36, '2023-05-02 09:08:15', '2023-05-02 09:08:15', NULL),
(117, '1683018504.png', 6, 36, '2023-05-02 09:08:24', '2023-05-02 09:08:24', NULL),
(118, '1683018635.png', 2, 37, '2023-05-02 09:10:35', '2023-05-02 09:10:35', NULL),
(119, '1683018653.png', 6, 37, '2023-05-02 09:10:53', '2023-05-02 09:10:53', NULL),
(120, '1683018663.png', 3, 37, '2023-05-02 09:11:03', '2023-05-02 09:11:03', NULL),
(121, '1683106381.png', 6, 38, '2023-05-03 09:11:54', '2023-05-03 09:33:01', NULL),
(122, '1683105180.png', 1, 38, '2023-05-03 09:13:00', '2023-05-03 09:30:00', '2023-05-03 09:30:00'),
(123, '1683106744.png', 4, 39, '2023-05-03 09:39:04', '2023-05-03 09:39:04', NULL),
(124, '1683106966.png', 1, 40, '2023-05-03 09:42:46', '2023-05-03 09:42:46', NULL),
(125, '1683107172.png', 6, 41, '2023-05-03 09:46:12', '2023-05-03 09:46:12', NULL),
(126, '1683162886.png', 4, 42, '2023-05-04 01:14:46', '2023-05-04 01:14:46', NULL),
(127, '1683162896.png', 6, 42, '2023-05-04 01:14:56', '2023-05-04 01:14:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_size`
--

CREATE TABLE `products_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_size`
--

INSERT INTO `products_size` (`id`, `product_color_id`, `size_id`, `created_at`, `updated_at`, `quantity`, `deleted_at`) VALUES
(2, 2, 1, NULL, '2023-05-02 06:34:19', 50, NULL),
(3, 2, 2, NULL, '2023-05-02 06:34:14', 50, NULL),
(4, 2, 3, NULL, '2023-05-02 06:34:09', 50, NULL),
(5, 3, 2, NULL, '2023-05-02 06:34:03', 50, NULL),
(6, 3, 4, NULL, '2023-05-02 06:33:57', 50, NULL),
(7, 5, 2, NULL, '2023-05-02 06:33:52', 50, NULL),
(8, 5, 4, NULL, '2023-05-02 06:33:44', 50, NULL),
(9, 6, 2, NULL, NULL, 50, NULL),
(10, 6, 1, NULL, NULL, 50, NULL),
(11, 6, 3, NULL, NULL, 50, NULL),
(12, 6, 4, NULL, NULL, 50, NULL),
(13, 7, 1, NULL, NULL, 50, NULL),
(14, 7, 2, NULL, NULL, 50, NULL),
(15, 7, 3, NULL, NULL, 50, NULL),
(16, 8, 1, NULL, NULL, 50, NULL),
(17, 8, 2, NULL, NULL, 50, NULL),
(18, 8, 3, NULL, NULL, 50, NULL),
(19, 8, 4, NULL, NULL, 10, NULL),
(20, 9, 1, NULL, NULL, 50, NULL),
(21, 9, 2, NULL, NULL, 50, NULL),
(22, 9, 3, NULL, NULL, 50, NULL),
(23, 9, 4, NULL, NULL, 10, NULL),
(24, 10, 1, NULL, NULL, 50, NULL),
(25, 10, 2, NULL, NULL, 50, NULL),
(26, 10, 3, NULL, NULL, 50, NULL),
(27, 10, 4, NULL, NULL, 10, NULL),
(28, 11, 1, NULL, NULL, 50, NULL),
(29, 11, 2, NULL, NULL, 50, NULL),
(30, 11, 3, NULL, NULL, 50, NULL),
(31, 12, 1, NULL, NULL, 50, NULL),
(32, 12, 2, NULL, NULL, 50, NULL),
(33, 12, 3, NULL, NULL, 50, NULL),
(34, 12, 3, NULL, NULL, 50, NULL),
(35, 13, 1, NULL, NULL, 50, NULL),
(36, 13, 2, NULL, NULL, 50, NULL),
(37, 13, 3, NULL, NULL, 50, NULL),
(38, 14, 1, NULL, NULL, 50, NULL),
(39, 14, 2, NULL, NULL, 50, NULL),
(40, 14, 3, NULL, NULL, 50, NULL),
(41, 14, 4, NULL, NULL, 10, NULL),
(42, 15, 1, NULL, NULL, 50, NULL),
(43, 15, 2, NULL, NULL, 50, NULL),
(44, 15, 3, NULL, NULL, 50, NULL),
(45, 15, 4, NULL, NULL, 10, NULL),
(46, 16, 1, NULL, NULL, 50, NULL),
(47, 16, 2, NULL, NULL, 50, NULL),
(48, 16, 3, NULL, NULL, 50, NULL),
(49, 17, 1, NULL, NULL, 50, NULL),
(50, 17, 2, NULL, NULL, 50, NULL),
(51, 17, 3, NULL, NULL, 50, NULL),
(52, 17, 4, NULL, NULL, 20, NULL),
(53, 18, 1, NULL, NULL, 50, NULL),
(54, 18, 2, NULL, NULL, 50, NULL),
(55, 18, 3, NULL, NULL, 50, NULL),
(56, 18, 4, NULL, NULL, 20, NULL),
(57, 19, 1, NULL, NULL, 50, NULL),
(58, 19, 2, NULL, NULL, 50, NULL),
(59, 19, 3, NULL, NULL, 50, NULL),
(60, 19, 4, NULL, NULL, 20, NULL),
(61, 20, 1, NULL, NULL, 50, NULL),
(62, 20, 2, NULL, NULL, 50, NULL),
(63, 20, 3, NULL, NULL, 50, NULL),
(64, 21, 1, NULL, NULL, 50, NULL),
(65, 21, 2, NULL, NULL, 50, NULL),
(66, 21, 3, NULL, NULL, 50, NULL),
(67, 21, 4, NULL, NULL, 8, NULL),
(68, 22, 1, NULL, NULL, 50, NULL),
(69, 22, 2, NULL, NULL, 50, NULL),
(70, 22, 3, NULL, NULL, 50, NULL),
(71, 22, 4, NULL, NULL, 20, NULL),
(72, 23, 1, NULL, NULL, 50, NULL),
(73, 23, 2, NULL, NULL, 50, NULL),
(74, 23, 3, NULL, NULL, 50, NULL),
(75, 24, 1, NULL, NULL, 50, NULL),
(76, 24, 2, NULL, NULL, 50, NULL),
(77, 24, 3, NULL, NULL, 50, NULL),
(78, 24, 4, NULL, NULL, 20, NULL),
(79, 25, 1, NULL, NULL, 50, NULL),
(80, 25, 2, NULL, NULL, 50, NULL),
(81, 25, 3, NULL, NULL, 50, NULL),
(82, 25, 4, NULL, NULL, 20, NULL),
(83, 26, 1, NULL, NULL, 50, NULL),
(84, 26, 2, NULL, NULL, 50, NULL),
(85, 26, 3, NULL, NULL, 50, NULL),
(86, 26, 4, NULL, NULL, 10, NULL),
(87, 27, 1, NULL, NULL, 50, NULL),
(88, 27, 2, NULL, NULL, 50, NULL),
(89, 27, 3, NULL, NULL, 50, NULL),
(90, 27, 4, NULL, NULL, 20, NULL),
(91, 28, 1, NULL, NULL, 50, NULL),
(92, 28, 2, NULL, NULL, 50, NULL),
(93, 28, 3, NULL, NULL, 50, NULL),
(94, 28, 4, NULL, NULL, 10, NULL),
(95, 29, 1, NULL, NULL, 50, NULL),
(96, 29, 2, NULL, NULL, 50, NULL),
(97, 29, 3, NULL, NULL, 50, NULL),
(98, 29, 4, NULL, NULL, 10, NULL),
(99, 30, 1, NULL, NULL, 50, NULL),
(100, 30, 2, NULL, NULL, 50, NULL),
(101, 30, 3, NULL, NULL, 50, NULL),
(102, 30, 4, NULL, NULL, 10, NULL),
(103, 31, 1, NULL, NULL, 50, NULL),
(104, 31, 2, NULL, NULL, 50, NULL),
(105, 31, 3, NULL, NULL, 50, NULL),
(106, 31, 4, NULL, NULL, 10, NULL),
(107, 32, 1, NULL, NULL, 50, NULL),
(108, 32, 2, NULL, NULL, 50, NULL),
(109, 32, 3, NULL, NULL, 50, NULL),
(110, 32, 4, NULL, NULL, 10, NULL),
(111, 33, 1, NULL, NULL, 50, NULL),
(112, 33, 2, NULL, NULL, 50, NULL),
(113, 33, 3, NULL, NULL, 50, NULL),
(114, 33, 4, NULL, NULL, 10, NULL),
(115, 34, 1, NULL, '2023-05-03 15:31:45', 33, NULL),
(116, 34, 2, NULL, NULL, 50, NULL),
(117, 34, 3, NULL, NULL, 45, NULL),
(118, 34, 4, NULL, NULL, 20, NULL),
(119, 35, 1, NULL, NULL, 50, NULL),
(120, 35, 2, NULL, NULL, 35, NULL),
(121, 35, 3, NULL, NULL, 50, NULL),
(122, 35, 4, NULL, NULL, 10, NULL),
(123, 36, 1, NULL, NULL, 50, NULL),
(124, 36, 2, NULL, NULL, 50, NULL),
(125, 36, 3, NULL, NULL, 50, NULL),
(126, 36, 4, NULL, NULL, 10, NULL),
(127, 37, 1, NULL, NULL, 50, NULL),
(128, 37, 2, NULL, NULL, 47, NULL),
(129, 37, 3, NULL, NULL, 50, NULL),
(130, 37, 4, NULL, NULL, 10, NULL),
(131, 38, 1, NULL, NULL, 50, NULL),
(132, 38, 2, NULL, NULL, 50, NULL),
(133, 38, 3, NULL, NULL, 50, NULL),
(134, 38, 4, NULL, NULL, 10, NULL),
(135, 39, 1, NULL, NULL, 50, NULL),
(136, 39, 2, NULL, NULL, 50, NULL),
(137, 39, 3, NULL, NULL, 50, NULL),
(138, 39, 4, NULL, NULL, 30, NULL),
(139, 40, 1, NULL, NULL, 50, NULL),
(140, 40, 2, NULL, NULL, 50, NULL),
(141, 40, 3, NULL, NULL, 50, NULL),
(142, 40, 4, NULL, NULL, 20, NULL),
(143, 41, 1, NULL, NULL, 50, NULL),
(144, 41, 2, NULL, NULL, 50, NULL),
(145, 41, 3, NULL, NULL, 50, NULL),
(146, 41, 4, NULL, NULL, 10, NULL),
(147, 43, 1, NULL, NULL, 50, NULL),
(148, 43, 2, NULL, NULL, 50, NULL),
(149, 44, 2, NULL, NULL, 50, NULL),
(150, 44, 3, NULL, NULL, 50, NULL),
(151, 44, 4, NULL, NULL, 10, NULL),
(152, 45, 1, NULL, NULL, 50, NULL),
(153, 45, 2, NULL, NULL, 50, NULL),
(154, 45, 3, NULL, NULL, 46, NULL),
(155, 45, 4, NULL, NULL, 10, NULL),
(156, 46, 1, NULL, NULL, 50, NULL),
(157, 46, 2, NULL, NULL, 50, NULL),
(158, 46, 3, NULL, NULL, 50, NULL),
(159, 46, 4, NULL, NULL, 10, NULL),
(160, 47, 2, NULL, NULL, 50, NULL),
(161, 47, 3, NULL, NULL, 50, NULL),
(162, 47, 4, NULL, NULL, 10, NULL),
(163, 48, 1, NULL, NULL, 50, NULL),
(164, 48, 2, NULL, NULL, 50, NULL),
(165, 48, 3, NULL, NULL, 30, NULL),
(166, 49, 1, NULL, NULL, 50, NULL),
(167, 49, 2, NULL, NULL, 50, NULL),
(168, 49, 3, NULL, NULL, 50, NULL),
(169, 49, 4, NULL, NULL, 10, NULL),
(170, 50, 1, NULL, NULL, 50, NULL),
(171, 50, 2, NULL, NULL, 50, NULL),
(172, 50, 3, NULL, NULL, 50, NULL),
(173, 50, 4, NULL, NULL, 10, NULL),
(174, 51, 1, NULL, NULL, 50, NULL),
(175, 51, 2, NULL, NULL, 50, NULL),
(176, 52, 1, NULL, NULL, 50, NULL),
(177, 52, 2, NULL, NULL, 50, NULL),
(178, 52, 3, NULL, NULL, 50, NULL),
(179, 53, 1, NULL, NULL, 50, NULL),
(180, 53, 2, NULL, NULL, 50, NULL),
(181, 53, 3, NULL, NULL, 50, NULL),
(182, 54, 1, NULL, NULL, 50, NULL),
(183, 54, 2, NULL, NULL, 50, NULL),
(184, 54, 3, NULL, NULL, 50, NULL),
(185, 54, 4, NULL, NULL, 10, NULL),
(186, 55, 1, NULL, NULL, 50, NULL),
(187, 55, 2, NULL, NULL, 49, NULL),
(188, 55, 3, NULL, NULL, 50, NULL),
(189, 56, 1, NULL, NULL, 50, NULL),
(190, 56, 2, NULL, NULL, 50, NULL),
(191, 56, 3, NULL, NULL, 50, NULL),
(192, 57, 1, NULL, NULL, 50, NULL),
(193, 57, 2, NULL, NULL, 50, NULL),
(194, 57, 3, NULL, NULL, 50, NULL),
(195, 57, 4, NULL, NULL, 10, NULL),
(196, 58, 1, NULL, NULL, 50, NULL),
(197, 58, 2, NULL, NULL, 50, NULL),
(198, 58, 3, NULL, NULL, 50, NULL),
(199, 58, 4, NULL, NULL, 10, NULL),
(200, 59, 1, NULL, NULL, 50, NULL),
(201, 59, 2, NULL, NULL, 50, NULL),
(202, 59, 3, NULL, NULL, 50, NULL),
(203, 60, 1, NULL, NULL, 50, NULL),
(204, 60, 2, NULL, NULL, 50, NULL),
(205, 60, 3, NULL, NULL, 50, NULL),
(206, 60, 4, NULL, NULL, 10, NULL),
(207, 61, 1, NULL, NULL, 30, NULL),
(208, 61, 2, NULL, NULL, 30, NULL),
(209, 61, 3, NULL, NULL, 30, NULL),
(210, 62, 1, NULL, NULL, 30, NULL),
(211, 61, 4, NULL, NULL, 30, NULL),
(212, 62, 2, NULL, NULL, 30, NULL),
(213, 62, 3, NULL, NULL, 30, NULL),
(214, 63, 1, NULL, NULL, 30, NULL),
(215, 63, 2, NULL, NULL, 30, NULL),
(216, 63, 3, NULL, NULL, 30, NULL),
(217, 63, 4, NULL, NULL, 20, NULL),
(218, 64, 1, NULL, NULL, 40, NULL),
(219, 64, 2, NULL, NULL, 40, NULL),
(220, 64, 3, NULL, NULL, 40, NULL),
(221, 65, 1, NULL, NULL, 37, NULL),
(222, 65, 2, NULL, NULL, 40, NULL),
(223, 65, 3, NULL, NULL, 40, NULL),
(224, 66, 1, NULL, NULL, 40, NULL),
(225, 66, 2, NULL, NULL, 40, NULL),
(226, 66, 3, NULL, NULL, 40, NULL),
(227, 66, 4, NULL, NULL, 5, NULL),
(228, 67, 2, NULL, NULL, 50, NULL),
(229, 67, 3, NULL, NULL, 50, NULL),
(230, 67, 1, NULL, NULL, 50, NULL),
(231, 68, 1, NULL, NULL, 50, NULL),
(232, 68, 2, NULL, NULL, 50, NULL),
(233, 68, 3, NULL, NULL, 50, NULL),
(234, 69, 1, NULL, NULL, 50, NULL),
(235, 69, 2, NULL, NULL, 50, NULL),
(236, 69, 3, NULL, NULL, 50, NULL),
(237, 70, 1, NULL, NULL, 50, NULL),
(238, 70, 2, NULL, NULL, 50, NULL),
(239, 70, 3, NULL, NULL, 50, NULL),
(240, 71, 1, NULL, NULL, 50, NULL),
(241, 71, 2, NULL, NULL, 50, NULL),
(242, 70, 4, NULL, '2023-05-02 08:18:06', 48, '2023-05-02 08:18:06'),
(243, 71, 3, NULL, NULL, 50, NULL),
(244, 72, 1, NULL, NULL, 50, NULL),
(245, 72, 2, NULL, NULL, 50, NULL),
(246, 72, 3, NULL, NULL, 50, NULL),
(247, 73, 1, NULL, NULL, 50, NULL),
(248, 73, 2, NULL, NULL, 50, NULL),
(249, 73, 3, NULL, NULL, 50, NULL),
(250, 74, 1, NULL, NULL, 50, NULL),
(251, 74, 2, NULL, NULL, 50, NULL),
(252, 74, 3, NULL, NULL, 50, NULL),
(253, 75, 1, NULL, NULL, 50, NULL),
(254, 75, 2, NULL, NULL, 50, NULL),
(255, 75, 3, NULL, NULL, 50, NULL),
(256, 76, 1, NULL, NULL, 50, NULL),
(257, 76, 2, NULL, NULL, 50, NULL),
(258, 76, 3, NULL, NULL, 50, NULL),
(259, 77, 1, NULL, NULL, 50, NULL),
(260, 77, 2, NULL, NULL, 50, NULL),
(261, 77, 3, NULL, NULL, 50, NULL),
(262, 77, 4, NULL, NULL, 10, NULL),
(263, 78, 1, NULL, NULL, 50, NULL),
(264, 78, 2, NULL, NULL, 50, NULL),
(265, 78, 3, NULL, NULL, 50, NULL),
(266, 79, 1, NULL, NULL, 50, NULL),
(267, 79, 2, NULL, NULL, 50, NULL),
(268, 79, 3, NULL, NULL, 50, NULL),
(269, 80, 1, NULL, NULL, 50, NULL),
(270, 80, 2, NULL, NULL, 50, NULL),
(271, 80, 3, NULL, NULL, 50, NULL),
(272, 81, 1, NULL, NULL, 50, NULL),
(273, 81, 2, NULL, NULL, 50, NULL),
(274, 81, 3, NULL, NULL, 50, NULL),
(275, 82, 1, NULL, NULL, 50, NULL),
(276, 82, 2, NULL, NULL, 50, NULL),
(277, 82, 3, NULL, NULL, 50, NULL),
(278, 83, 1, NULL, NULL, 50, NULL),
(279, 83, 2, NULL, NULL, 50, NULL),
(280, 83, 2, NULL, '2023-05-02 08:32:19', 50, '2023-05-02 08:32:19'),
(281, 83, 3, NULL, NULL, 50, NULL),
(282, 84, 1, NULL, NULL, 50, NULL),
(283, 84, 2, NULL, NULL, 50, NULL),
(284, 84, 3, NULL, NULL, 50, NULL),
(285, 85, 1, NULL, NULL, 50, NULL),
(286, 85, 2, NULL, NULL, 50, NULL),
(287, 85, 3, NULL, NULL, 50, NULL),
(288, 86, 1, NULL, NULL, 50, NULL),
(289, 86, 2, NULL, NULL, 50, NULL),
(290, 86, 3, NULL, NULL, 50, NULL),
(291, 87, 1, NULL, NULL, 50, NULL),
(292, 87, 2, NULL, NULL, 50, NULL),
(293, 87, 3, NULL, NULL, 50, NULL),
(294, 88, 1, NULL, NULL, 50, NULL),
(295, 88, 2, NULL, NULL, 48, NULL),
(296, 88, 3, NULL, NULL, 50, NULL),
(297, 89, 1, NULL, NULL, 50, NULL),
(298, 89, 2, NULL, NULL, 50, NULL),
(299, 89, 3, NULL, NULL, 50, NULL),
(300, 90, 1, NULL, NULL, 50, NULL),
(301, 90, 2, NULL, NULL, 50, NULL),
(302, 90, 3, NULL, NULL, 50, NULL),
(303, 91, 1, NULL, NULL, 50, NULL),
(304, 91, 2, NULL, NULL, 50, NULL),
(305, 91, 3, NULL, NULL, 50, NULL),
(306, 92, 1, NULL, NULL, 50, NULL),
(307, 92, 2, NULL, NULL, 50, NULL),
(308, 92, 3, NULL, NULL, 50, NULL),
(309, 93, 1, NULL, NULL, 50, NULL),
(310, 93, 2, NULL, NULL, 50, NULL),
(311, 93, 3, NULL, NULL, 50, NULL),
(312, 94, 1, NULL, NULL, 50, NULL),
(313, 94, 2, NULL, NULL, 50, NULL),
(314, 94, 3, NULL, NULL, 50, NULL),
(315, 95, 1, NULL, NULL, 50, NULL),
(316, 95, 2, NULL, NULL, 50, NULL),
(317, 95, 3, NULL, NULL, 50, NULL),
(318, 96, 1, NULL, NULL, 50, NULL),
(319, 96, 2, NULL, NULL, 50, NULL),
(320, 96, 3, NULL, NULL, 50, NULL),
(321, 99, 1, NULL, NULL, 50, NULL),
(322, 99, 2, NULL, NULL, 50, NULL),
(323, 99, 3, NULL, NULL, 49, NULL),
(324, 100, 1, NULL, NULL, 50, NULL),
(325, 100, 2, NULL, NULL, 50, NULL),
(326, 100, 3, NULL, NULL, 50, NULL),
(327, 100, 4, NULL, NULL, 10, NULL),
(328, 101, 1, NULL, NULL, 50, NULL),
(329, 101, 2, NULL, NULL, 50, NULL),
(330, 101, 3, NULL, NULL, 50, NULL),
(331, 102, 1, NULL, NULL, 50, NULL),
(332, 102, 2, NULL, NULL, 50, NULL),
(333, 102, 3, NULL, NULL, 50, NULL),
(334, 103, 1, NULL, NULL, 50, NULL),
(335, 103, 2, NULL, NULL, 50, NULL),
(336, 103, 3, NULL, NULL, 49, NULL),
(337, 104, 1, NULL, NULL, 50, NULL),
(338, 104, 2, NULL, NULL, 50, NULL),
(339, 104, 3, NULL, NULL, 50, NULL),
(340, 105, 1, NULL, NULL, 50, NULL),
(341, 105, 2, NULL, NULL, 50, NULL),
(342, 105, 3, NULL, NULL, 50, NULL),
(343, 106, 1, NULL, NULL, 50, NULL),
(344, 106, 2, NULL, NULL, 49, NULL),
(345, 106, 3, NULL, NULL, 50, NULL),
(346, 107, 1, NULL, NULL, 50, NULL),
(347, 107, 2, NULL, NULL, 50, NULL),
(348, 107, 3, NULL, NULL, 50, NULL),
(349, 108, 1, NULL, NULL, 50, NULL),
(350, 108, 2, NULL, NULL, 50, NULL),
(351, 108, 3, NULL, NULL, 49, NULL),
(352, 109, 1, NULL, NULL, 50, NULL),
(353, 109, 2, NULL, NULL, 50, NULL),
(354, 109, 3, NULL, NULL, 50, NULL),
(355, 110, 1, NULL, NULL, 50, NULL),
(356, 110, 2, NULL, NULL, 50, NULL),
(357, 110, 3, NULL, NULL, 50, NULL),
(358, 111, 1, NULL, NULL, 50, NULL),
(359, 111, 2, NULL, NULL, 50, NULL),
(360, 111, 3, NULL, NULL, 50, NULL),
(361, 111, 4, NULL, NULL, 10, NULL),
(362, 112, 1, NULL, NULL, 49, NULL),
(363, 112, 2, NULL, NULL, 50, NULL),
(364, 112, 3, NULL, NULL, 50, NULL),
(365, 112, 4, NULL, NULL, 20, NULL),
(366, 113, 1, NULL, NULL, 50, NULL),
(367, 113, 2, NULL, NULL, 50, NULL),
(368, 113, 3, NULL, NULL, 50, NULL),
(369, 114, 1, NULL, NULL, 50, NULL),
(370, 114, 2, NULL, NULL, 50, NULL),
(371, 114, 3, NULL, NULL, 50, NULL),
(372, 115, 1, NULL, NULL, 50, NULL),
(373, 115, 2, NULL, NULL, 50, NULL),
(374, 115, 3, NULL, NULL, 50, NULL),
(375, 115, 4, NULL, NULL, 30, NULL),
(376, 116, 1, NULL, NULL, 50, NULL),
(377, 116, 2, NULL, NULL, 50, NULL),
(378, 116, 3, NULL, NULL, 50, NULL),
(379, 116, 4, NULL, NULL, 29, NULL),
(380, 117, 1, NULL, NULL, 50, NULL),
(381, 117, 2, NULL, NULL, 50, NULL),
(382, 117, 3, NULL, NULL, 50, NULL),
(383, 117, 4, NULL, NULL, 20, NULL),
(384, 118, 1, NULL, NULL, 48, NULL),
(385, 118, 2, NULL, NULL, 50, NULL),
(386, 118, 3, NULL, NULL, 50, NULL),
(387, 119, 1, NULL, NULL, 50, NULL),
(388, 119, 2, NULL, NULL, 50, NULL),
(389, 119, 3, NULL, NULL, 50, NULL),
(390, 120, 1, NULL, NULL, 50, NULL),
(391, 120, 2, NULL, NULL, 50, NULL),
(392, 120, 3, NULL, NULL, 50, NULL),
(393, 119, 4, NULL, NULL, 30, NULL),
(394, 118, 4, NULL, NULL, 20, NULL),
(395, 120, 4, NULL, NULL, 10, NULL),
(396, 121, 1, NULL, NULL, 50, NULL),
(397, 121, 2, NULL, NULL, 49, NULL),
(398, 121, 3, NULL, NULL, 50, NULL),
(399, 122, 1, NULL, '2023-05-03 09:13:55', 50, '2023-05-03 09:13:55'),
(400, 122, 1, NULL, NULL, 50, NULL),
(401, 123, 1, NULL, NULL, 50, NULL),
(402, 123, 2, NULL, NULL, 49, NULL),
(403, 123, 3, NULL, NULL, 50, NULL),
(404, 123, 4, NULL, NULL, 10, NULL),
(405, 124, 1, NULL, NULL, 49, NULL),
(406, 124, 2, NULL, NULL, 50, NULL),
(407, 124, 3, NULL, NULL, 50, NULL),
(408, 124, 4, NULL, NULL, 5, NULL),
(409, 125, 1, NULL, NULL, 47, NULL),
(410, 125, 2, NULL, NULL, 50, NULL),
(411, 125, 3, NULL, NULL, 50, NULL),
(412, 125, 4, NULL, NULL, 19, NULL),
(413, 97, 1, NULL, NULL, 50, NULL),
(414, 97, 2, NULL, NULL, 48, NULL),
(415, 126, 1, NULL, NULL, 50, NULL),
(416, 126, 3, NULL, NULL, 10, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rating`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 41, 4, 'Sản phẩm rất đẹp, chất lượng, thời gian giao hàng nhanh, đóng gói kỹ càng', '2023-05-03 10:05:42', '2023-05-03 10:05:42', NULL),
(2, 2, 37, 3, 'Sản phẩm hơi tệ, thời gian giao hàng nhanh', '2023-05-03 10:07:49', '2023-05-03 10:07:49', NULL),
(3, 2, 28, 5, 'Sản phẩm rất đẹp. Giao hàng nhanh, đóng gói kĩ càng.', '2023-05-03 10:35:36', '2023-05-03 10:35:36', NULL),
(4, 2, 8, 1, 'Sản phẩm không tốt, giao hàng lâu', '2023-05-03 11:49:08', '2023-05-03 11:49:08', NULL),
(5, 2, 12, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 11:49:40', '2023-05-03 11:49:40', NULL),
(6, 2, 15, 3, 'Sản phẩm khá tốt', '2023-05-03 11:52:00', '2023-05-03 11:52:00', NULL),
(7, 2, 18, 2, 'Sản phẩm không tốt, giao hàng lâu', '2023-05-03 11:52:28', '2023-05-03 11:52:28', NULL),
(8, 2, 13, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 11:52:47', '2023-05-03 11:52:47', NULL),
(9, 2, 22, 4, 'Sản phẩm khá tốt', '2023-05-03 11:53:22', '2023-05-03 11:53:22', NULL),
(10, 2, 30, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 11:54:01', '2023-05-03 11:54:01', NULL),
(11, 2, 32, 1, 'Sản phẩm không tốt, giao hàng lâu', '2023-05-03 11:54:23', '2023-05-03 11:54:23', NULL),
(12, 2, 24, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 11:54:39', '2023-05-03 11:54:39', NULL),
(13, 2, 40, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 11:59:19', '2023-05-03 11:59:19', NULL),
(14, 2, 35, 2, 'Sản phẩm không tốt, giao hàng lâu', '2023-05-03 11:59:32', '2023-05-03 11:59:32', NULL),
(15, 2, 39, 3, 'Sản phẩm khá tốt', '2023-05-03 11:59:44', '2023-05-03 11:59:44', NULL),
(16, 2, 38, 4, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 11:59:57', '2023-05-03 11:59:57', NULL),
(17, 2, 33, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 12:00:10', '2023-05-03 12:00:10', NULL),
(18, 2, 34, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 12:00:23', '2023-05-03 12:00:23', NULL),
(19, 2, 31, 4, 'Sản phẩm khá tốt', '2023-05-03 12:00:34', '2023-05-03 12:00:34', NULL),
(20, 2, 36, 5, 'Sản phẩm cực tốt, giao hàng nhanh', '2023-05-03 12:00:46', '2023-05-03 12:00:46', NULL),
(23, 9, 12, 5, 'sản phẩm đánh giá', '2023-05-04 01:17:40', '2023-05-04 01:17:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Quản trị viên'),
(2, 'Nhân Viên'),
(3, 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `name` char(100) NOT NULL,
  `email` char(100) NOT NULL,
  `address` char(255) NOT NULL,
  `phone_number` char(20) NOT NULL,
  `maintenance` int(11) NOT NULL,
  `notification` text NOT NULL,
  `introduction` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `logo`, `name`, `email`, `address`, `phone_number`, `maintenance`, `notification`, `introduction`, `created_at`, `updated_at`) VALUES
(1, '1692199575.jpg', 'Gym Lucifer', 'Gymlucifer@gmail.com', '55A Điện Biên Phủ, Phường 25 Bình Thạnh, TP Hồ Chí Minh', '0989275330', 2, '<b>WEBSITE tạm thời bảo trì để nâng cấp xin  quay lại sau</b>', '<h3 style=\"text-align: center; \">\r\n                            <b>GIỚI THIỆU VỀ GymLucifer</b></h3><h5><br></h5><h5><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Chào mừng bạn đến với GymLucifer - điểm đến lý tưởng cho những người yêu thích sức khỏe và thể dục! Chúng tôi vô cùng tự hào khi giới thiệu một trong những cửa hàng trực tuyến hàng đầu về thời trang tập gym, nơi mang đến cho bạn những trải nghiệm mua sắm thú vị và những sản phẩm đẳng cấp.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Chúng tôi hiểu rằng thời trang tập gym không chỉ là việc chọn lựa trang phục, mà còn là một phần không thể thiếu trong cuộc sống năng động của bạn. Với đam mê và sự tận tâm với thể thao, chúng tôi đã xây dựng GymLucifer với mục tiêu cung cấp những sản phẩm thời trang độc đáo và chất lượng cao, giúp bạn tự tin và thoải mái trong mọi buổi tập.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Chúng tôi cam kết đem đến cho bạn sự lựa chọn tối ưu với những sản phẩm được chọn lọc kỹ càng từ các thương hiệu danh tiếng trên thế giới. Chất liệu tốt nhất và thiết kế thông minh đã được kết hợp để tạo ra những bộ trang phục tập gym không chỉ tôn lên vóc dáng của bạn mà còn mang đến sự thoải mái và linh hoạt cần thiết trong mỗi động tác.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Từ áo tanktop thoải mái, quần tập yoga linh hoạt đến giày thể thao đệm êm, GymLucifer tự tin rằng bạn sẽ tìm thấy mọi thứ cần thiết để tạo nên bộ trang phục tập gym hoàn hảo. Bất kể bạn yêu thích phong cách năng động đậm chất thể thao hay phong cách trẻ trung và phá cách, chúng tôi luôn cập nhật những xu hướng mới nhất để bạn có thể thể hiện phong cách riêng của mình.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Đội ngũ nhân viên chuyên nghiệp của chúng tôi sẵn sàng hỗ trợ bạn trong việc lựa chọn sản phẩm và tư vấn phong cách tùy theo nhu cầu của bạn. Chúng tôi tin tưởng rằng, với sự đa dạng, chất lượng và tận tâm của chúng tôi, GymLucifer sẽ là địa chỉ tin cậy để bạn hoàn thiện phong cách tập luyện của mình.</p><p style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 1.25em 0px 0px; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Hãy ghé thăm trang web của chúng tôi để khám phá ngay những sản phẩm tập gym độc đáo và phong phú. Chúng tôi hy vọng rằng, bạn sẽ tìm thấy sự hài lòng và tự tin khi lựa chọn các sản phẩm tại GymLucifer, nơi mà thời trang và tập luyện hội tụ một cách hoàn hảo.</p></h5>', NULL, '2023-08-16 15:26:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'S', NULL, NULL, NULL),
(2, 'M', NULL, NULL, NULL),
(3, 'L', NULL, NULL, NULL),
(4, 'XL', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `disable_reason` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified_at`, `phone_number`, `role_id`, `active`, `disable_reason`, `created_by`, `updated_by`, `deleted_by`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nguyễn Quang Khuê', 'admin@gmail.com', '$2y$10$7VLRCZIgkY4I3Vfg7edih.MEBBc..kbS3SM4B8l6mxJLOst5bcpK.', '2023-04-28 04:29:18', '000 000-0000', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, '2023-08-16 15:11:57', NULL),
(2, 'Ho Anh Nguyen', 'han16052001@gmail.com', '$2y$10$Q8XcfyypiOp348/xjPVxLOVpuC00zJLgF4D5LXMLF68ymKCa.6Ho.', '2023-05-02 03:25:18', '1234567890', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-05-02 03:24:23', '2023-05-02 03:25:18', NULL),
(3, 'Nguyễn Trần Gia Bảo 1', 'bao123@gmail.com', '$2y$10$X2oo0TcQ1rSxRdJwFFLRCuTRD2Q/KUY4gwOa/heJtYPdMwriWe72e', '2023-05-18 10:11:58', '845 642-4326', 2, 1, NULL, 1, 1, NULL, NULL, '2023-05-03 10:11:06', '2023-08-16 15:11:27', '2023-08-16 15:11:27'),
(9, 'Lê Hữu Phước', 'huuphuocit0201@gmail.com', '$2y$10$h8vn9PZ2rVCAw15Uirk0AOzKDLHr1J2aeERN8q2MgqPKtf9ByubvW', '2023-05-04 01:10:50', '0845151117', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-05-04 01:10:39', '2023-05-04 01:10:50', NULL),
(11, 'Nguyễn Thành Trung', 'nguyenkhanhstmqn@gmail.com', '$2y$10$b0ycTG9DqFgOttJvr0btb.S8McW3qKv7dxjwL1dlAqM30v.4pacpm', '2023-05-20 14:33:02', '0989275330', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-05-20 14:32:29', '2023-05-20 14:33:02', NULL),
(13, 'Nguyễn Quang Khuê', 'luungochai1706@gmail.com', '$2y$10$ZgSj8qTDu6.fq6qbVvGSN.moS3g00M3lwXFDUtdiMTWOFjZzx9gA.', NULL, '0123434342', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-08-16 14:52:35', '2023-08-16 14:52:35', NULL),
(15, 'test2', 'hailngch190599@fpt.edu.vn', '$2y$10$RkUSM9hzQwq.BjrdmXDy/OKU7.zPFT3iExuSQY3rLh56G/XPpj3Qm', NULL, '0123434342', 3, 1, NULL, NULL, NULL, NULL, NULL, '2023-08-16 14:55:57', '2023-08-16 14:55:57', NULL),
(16, 'aa', 'momhai287@gmail.com', '$2y$10$KmlDU3yYytISHwkGgewY0uJTf86Y/rujgCe4vIQX5ZGzLnZWB.K46', NULL, '0123456789', 3, 1, NULL, NULL, NULL, 1, NULL, '2023-08-16 15:01:47', '2023-08-16 15:11:50', '2023-08-16 15:11:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `email_verify` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_verifies`
--

INSERT INTO `user_verifies` (`id`, `user_id`, `token`, `expires_at`, `email_verify`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 3, 'A8TeoYsNWoLXolZ3g7uItst6cGXGdoaBxOnJXC3oCboNbc4pEwmmJJefgJuUhNwW', '2023-05-03 11:11:06', NULL, '2023-05-03 10:11:06', '2023-05-03 10:11:06', NULL),
(6, 7, 'i7cgmFkliCXdWeMYmpVtZihzyZcBy5V2ZBcI6VVbWkdgvNSbEyHpdmpNqlGm78s9', '2023-05-03 16:54:10', NULL, '2023-05-03 15:54:10', '2023-05-03 15:54:10', NULL),
(7, 8, 'aDYaSWNOs8RsfngYfP01kHpnGQuecCgyizcPKBwnPLskgtUqpXunkd0VOdadiSay', '2023-05-03 16:55:09', NULL, '2023-05-03 15:55:09', '2023-05-03 15:55:09', NULL),
(12, 13, 'EVgTi37CF6HbBRF7IpdEwksU62mr95waaQfjEe9MR4qojrIbm08JsESRLYBlJl7x', '2023-08-16 15:52:45', NULL, '2023-08-16 14:52:35', '2023-08-16 14:52:45', NULL),
(14, 15, 'vhoc77wYJTLB8Y5YnxuHL2UJUSMpwo50zj24pttKOdtOvwP9MXmGVh0wDKtLYyXn', '2023-08-16 15:56:04', NULL, '2023-08-16 14:55:57', '2023-08-16 14:56:04', NULL),
(15, 16, 'yPUTj5D7JzO61M2wh92d3PCnGCxdvuv1o3DOwdHkjzsW3iv68PL4gc7wpeywmkk3', '2023-08-16 16:01:52', NULL, '2023-08-16 15:01:47', '2023-08-16 15:01:52', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_size_id_foreign` (`product_size_id`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Chỉ mục cho bảng `products_color`
--
ALTER TABLE `products_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_color_color_id_foreign` (`color_id`),
  ADD KEY `products_color_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products_size`
--
ALTER TABLE `products_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_size_product_color_id_foreign` (`product_color_id`),
  ADD KEY `products_size_size_id_foreign` (`size_id`);

--
-- Chỉ mục cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1684593283197;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `products_color`
--
ALTER TABLE `products_color`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT cho bảng `products_size`
--
ALTER TABLE `products_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_size_id_foreign` FOREIGN KEY (`product_size_id`) REFERENCES `products_size` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `products_color`
--
ALTER TABLE `products_color`
  ADD CONSTRAINT `products_color_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `products_color_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products_size`
--
ALTER TABLE `products_size`
  ADD CONSTRAINT `products_size_product_color_id_foreign` FOREIGN KEY (`product_color_id`) REFERENCES `products_color` (`id`),
  ADD CONSTRAINT `products_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Các ràng buộc cho bảng `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
