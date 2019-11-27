-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2019 a las 03:11:06
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(4, 'SUDADERA', NULL, NULL),
(11, 'CAMISA', '2017-07-14 05:23:11', '2017-07-14 05:23:11'),
(13, 'PLAYERA', '2017-07-23 00:34:54', '2017-07-23 00:34:54'),
(16, 'JERSEY', '2017-07-25 01:07:30', '2017-07-25 01:07:45'),
(17, 'ARTICULOS', '2019-11-07 00:14:01', '2019-11-07 00:14:46'),
(18, 'CALZADO', '2019-11-11 06:19:55', '2019-11-11 06:19:55'),
(19, 'PANTS', '2019-11-11 06:20:34', '2019-11-11 06:20:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `producto_id`, `imagen`, `created_at`, `updated_at`) VALUES
(110, 37, 'tiendaOnline_1500767503img1.png', '2017-07-23 04:51:43', '2017-07-23 04:51:43'),
(111, 37, 'tiendaOnline_1500767503img3.png', '2017-07-23 04:51:43', '2017-07-23 04:51:43'),
(112, 38, 'tiendaOnline_1500767603playera2.jpg', '2017-07-23 04:53:23', '2017-07-23 04:53:23'),
(113, 39, 'tiendaOnline_1500767707articulo8.jpg', '2017-07-23 04:55:07', '2017-07-23 04:55:07'),
(114, 40, 'tiendaOnline_1500778160Articulo4.jpg', '2017-07-23 07:49:20', '2017-07-23 07:49:20'),
(115, 41, 'tiendaOnline_1500915279Articulo7.jpg', '2017-07-24 21:54:39', '2017-07-24 21:54:39'),
(116, 42, 'tiendaOnline_1500915392Articulo16.jpg', '2017-07-24 21:56:32', '2017-07-24 21:56:32'),
(117, 43, 'tiendaOnline_1500915664Articulo15.jpg', '2017-07-24 22:01:04', '2017-07-24 22:01:04'),
(118, 44, 'tiendaOnline_1500924775necaxa.png', '2017-07-25 00:32:55', '2017-07-25 00:32:55'),
(125, 45, 'tiendaOnline_1500925319ac milan local4.jpg', '2017-07-25 00:41:59', '2017-07-25 00:41:59'),
(126, 45, 'tiendaOnline_1500925320ac milan local3.jpg', '2017-07-25 00:42:00', '2017-07-25 00:42:00'),
(129, 46, 'tiendaOnline_1500926820manchester2.jpg', '2017-07-25 01:07:00', '2017-07-25 01:07:00'),
(130, 46, 'tiendaOnline_1500926820manchester1.jpg', '2017-07-25 01:07:00', '2017-07-25 01:07:00'),
(131, 47, 'tiendaOnline_1500927538acmilanvisitante20163.jpg', '2017-07-25 01:18:58', '2017-07-25 01:18:58'),
(132, 47, 'tiendaOnline_1500927538acmilanvisitante20162.jpg', '2017-07-25 01:18:58', '2017-07-25 01:18:58'),
(133, 48, 'tiendaOnline_1500929168images.jpg', '2017-07-25 01:46:08', '2017-07-25 01:46:08'),
(134, 49, 'tiendaOnline_1500929512images (1).jpg', '2017-07-25 01:51:52', '2017-07-25 01:51:52'),
(135, 50, 'tiendaOnline_1501000208camisa1.jpg', '2017-07-25 21:30:08', '2017-07-25 21:30:08'),
(136, 51, 'tiendaOnline_1573051192mexico.jpg', '2019-11-06 20:39:52', '2019-11-06 20:39:52'),
(137, 51, 'tiendaOnline_1573051192mexico1.jpg', '2019-11-06 20:39:52', '2019-11-06 20:39:52'),
(139, 52, 'tiendaOnline_1573051764sudaderadc.jpg', '2019-11-06 20:49:24', '2019-11-06 20:49:24'),
(140, 55, 'tiendaOnline_1573061934mexicom.jpg', '2019-11-06 23:38:54', '2019-11-06 23:38:54'),
(141, 56, 'tiendaOnline_1573435622real.jpg', '2019-11-11 07:27:02', '2019-11-11 07:27:02'),
(142, 57, 'tiendaOnline_15734356991015870-0311V1.jpg', '2019-11-11 07:28:19', '2019-11-11 07:28:19'),
(143, 58, 'tiendaOnline_1573435833adidas-gris.jpg', '2019-11-11 07:30:33', '2019-11-11 07:30:33'),
(144, 59, 'tiendaOnline_1573435896americ3.jpg', '2019-11-11 07:31:36', '2019-11-11 07:31:36'),
(145, 60, 'tiendaOnline_1573436284adidas-m-a.jpg', '2019-11-11 07:38:04', '2019-11-11 07:38:04'),
(146, 61, 'tiendaOnline_1573436331balon nike champions.jpg', '2019-11-11 07:38:51', '2019-11-11 07:38:51'),
(147, 62, 'tiendaOnline_1573436444pants adidas.jpeg', '2019-11-11 07:40:44', '2019-11-11 07:40:44'),
(148, 63, 'tiendaOnline_1573436552mujereal.jpg', '2019-11-11 07:42:32', '2019-11-11 07:42:32'),
(149, 64, 'tiendaOnline_1573436690pelotas-tenis-wilson-tp-elk-sport.jpg', '2019-11-11 07:44:50', '2019-11-11 07:44:50'),
(150, 65, 'tiendaOnline_1573436848adidas mujer tenis-279nlo.jpg', '2019-11-11 07:47:28', '2019-11-11 07:47:28'),
(151, 66, 'tiendaOnline_1573437047adidas-m-mora.jpg', '2019-11-11 07:50:47', '2019-11-11 07:50:47'),
(152, 67, 'tiendaOnline_1573437124pants rosa.jpeg', '2019-11-11 07:52:04', '2019-11-11 07:52:04'),
(153, 68, 'tiendaOnline_1573437326wilson amer.jpg', '2019-11-11 07:55:26', '2019-11-11 07:55:26'),
(154, 69, 'tiendaOnline_1573437370nike-balon-fc-barcelona-1718.jpg', '2019-11-11 07:56:10', '2019-11-11 07:56:10'),
(155, 70, 'tiendaOnline_1573437449mujer grisnike.jpeg', '2019-11-11 07:57:29', '2019-11-11 07:57:29'),
(156, 71, 'tiendaOnline_1573437519women.jpg', '2019-11-11 07:58:39', '2019-11-11 07:58:39'),
(157, 72, 'tiendaOnline_1573437616tenis-puma-mujer-puma-flex-t1-reveal-rosa-y-blanco.jpg', '2019-11-11 08:00:16', '2019-11-11 08:00:16'),
(158, 73, 'tiendaOnline_1573437682tenis-nike-ninas-roshe-one-new-D_NQ_NP_901371-MCO26554993700_122017-Q.jpg', '2019-11-11 08:01:22', '2019-11-11 08:01:22'),
(159, 74, 'tiendaOnline_1573437742manilla.jpg', '2019-11-11 08:02:22', '2019-11-11 08:02:22'),
(160, 75, 'tiendaOnline_1573437803balonadidas.jpg', '2019-11-11 08:03:23', '2019-11-11 08:03:23'),
(161, 76, 'tiendaOnline_1573437884jersey-rosa-chivas.jpg', '2019-11-11 08:04:44', '2019-11-11 08:04:44'),
(162, 77, 'tiendaOnline_1573437932jersey-futbol-soccer-real-madrid-mujer-adidas-full-ai5162-D_NQ_NP_827059-MLM31228713216_062019-F.jpg', '2019-11-11 08:05:32', '2019-11-11 08:05:32'),
(163, 78, 'tiendaOnline_1573437976masni.jpg', '2019-11-11 08:06:16', '2019-11-11 08:06:16'),
(164, 79, 'tiendaOnline_1573438050ninos azul.jpg', '2019-11-11 08:07:30', '2019-11-11 08:07:30'),
(165, 80, 'tiendaOnline_1573438204chivas-de-guadalajara-third-away-baby-soccer.jpg', '2019-11-11 08:10:04', '2019-11-11 08:10:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_03_161149_create_categorias_table', 1),
(4, '2017_07_03_161756_create_datos__envio_table', 1),
(5, '2017_07_03_162821_create_tarjeta__tipos_table', 1),
(6, '2017_07_03_162957_create_tarjetas_table', 1),
(7, '2017_07_03_163757_create_productos_table', 1),
(8, '2017_07_03_163948_create_imagenes_table', 1),
(9, '2017_07_03_164148_create_compras_table', 1),
(10, '2017_07_03_165243_create_tallas_table', 1),
(11, '2017_07_11_212446_addsluggable', 2),
(13, '2017_07_20_222540_create_ordenes_table', 3),
(14, '2017_07_20_222541_create_orden_items_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(10) UNSIGNED NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `envio` decimal(10,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id`, `subtotal`, `envio`, `user_id`, `created_at`, `updated_at`) VALUES
(4, '1750.00', '100.00', 94, '2017-07-23 04:56:09', '2017-07-23 04:56:09'),
(5, '650.00', '100.00', 94, '2017-07-23 07:46:15', '2017-07-23 07:46:15'),
(6, '4400.00', '100.00', 94, '2017-07-24 02:13:57', '2017-07-24 02:13:57'),
(7, '2600.00', '100.00', 109, '2017-07-24 20:31:54', '2017-07-24 20:31:54'),
(8, '400.00', '100.00', 94, '2017-07-25 04:29:23', '2017-07-25 04:29:23'),
(9, '1500.00', '100.00', 111, '2017-07-25 04:38:10', '2017-07-25 04:38:10'),
(10, '1600.00', '100.00', 113, '2017-07-25 21:17:24', '2017-07-25 21:17:24'),
(11, '5200.00', '100.00', 113, '2017-07-25 21:27:02', '2017-07-25 21:27:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_items`
--

CREATE TABLE `orden_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `orden_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orden_items`
--

INSERT INTO `orden_items` (`id`, `cantidad`, `precio`, `producto_id`, `orden_id`) VALUES
(4, 2, '800.00', 37, 4),
(5, 1, '150.00', 38, 4),
(6, 1, '200.00', 39, 5),
(7, 3, '150.00', 38, 5),
(8, 5, '800.00', 37, 6),
(9, 2, '200.00', 39, 6),
(10, 13, '200.00', 39, 7),
(11, 1, '400.00', 47, 8),
(12, 1, '500.00', 49, 9),
(13, 2, '500.00', 48, 9),
(14, 1, '400.00', 47, 10),
(15, 1, '1200.00', 44, 10),
(16, 3, '1400.00', 45, 11),
(17, 2, '500.00', 49, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('chagoperez@gmail.com', '$2y$10$LU.5hIsKrkyiCTkASReinO6tmbPhuoKPQGme/BVQgGe5rvfxGcVhO', '2019-11-07 00:03:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `vendido` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `genero`, `categoria_id`, `vendido`, `created_at`, `updated_at`, `slug`) VALUES
(37, 'Joker', 'Sudadera original dc comics', '800', '5', 'Hombre', 11, 5, '2017-07-23 04:50:55', '2017-07-24 02:13:57', 'joker'),
(38, 'Batman the dark knight returns', 'Playera oficial 100 algodon', '150', '4', 'Hombre', 13, 0, '2017-07-23 04:53:22', '2017-07-23 04:53:22', 'batman-the-dark-knight-returns'),
(39, 'COLO COLO', 'ORIGINAL', '200', '15', 'Hombre', 13, 15, '2017-07-23 04:55:07', '2017-07-24 21:06:37', 'colo-colo'),
(40, 'DC', 'PLAYERA DC ALGODON', '100', '20', 'Hombre', 4, 0, '2017-07-23 07:49:20', '2017-07-23 07:49:41', 'dc'),
(41, 'Camisa DC', 'camisa dc 2018', '500', '20', 'Hombre', 11, 0, '2017-07-24 21:21:43', '2017-07-24 21:54:39', 'gbdgtd'),
(42, 'Evolucion', 'playera hecha a mano en mexico', '150', '10', 'Hombre', 13, 0, '2017-07-24 21:56:32', '2017-07-24 21:56:32', 'evolucion'),
(43, 'Vans off the wall', 'poliester', '200', '34', 'Hombre', 13, 0, '2017-07-24 22:01:04', '2017-07-24 22:01:04', 'vans-off-the-wall'),
(44, 'Jersey Necaxa Charly', 'Jersey Charly Necaxa Local Liga MX', '1200', '26', 'Hombre', 16, 1, '2017-07-25 00:32:55', '2017-07-25 21:17:24', 'jersey-necaxa-charly'),
(45, 'AC MILAN JERSEY 2017 2018', 'Jersey Ac milan oficial Adidas', '1400', '3', 'Hombre', 16, 3, '2017-07-25 00:38:45', '2017-07-25 21:27:02', 'ac-milan-jersey-2017-2018'),
(46, 'Manchester United Jersey 2018', 'Adquiere el Jersey Adidas Manchester United', '1200', '10', 'Hombre', 16, 0, '2017-07-25 01:05:53', '2017-07-25 01:08:34', 'manchester-united-jersey-2018'),
(47, 'AC MILAN VISITANTE 2015', 'Apoya al mejor equipo de la seria A con este increbile jersey', '400', '3', 'Hombre', 16, 2, '2017-07-25 01:18:57', '2017-07-25 21:17:24', 'ac-milan-visitante-2015'),
(48, 'Puma jersey', 'Adquiere esta playera orginal puma elegante', '500', '18', 'Hombre', 16, 2, '2017-07-25 01:46:08', '2017-07-25 04:38:11', 'puma-jersey'),
(49, 'Jersey necaxa visitante 2017', 'Jersey oficial', '500', '17', 'Hombre', 4, 3, '2017-07-25 01:51:51', '2017-07-25 21:27:02', 'jersey-necaxa-visitante-2017'),
(50, 'Camisa7', 'esta es una camisa', '100', '10', 'Hombre', 11, 0, '2017-07-25 21:30:07', '2017-07-25 21:30:07', 'camisa7'),
(51, 'jersey mexico', 'jersey oficial de mexico', '1400', '25', 'Hombre', 16, 0, '2019-11-06 20:39:52', '2019-11-06 20:39:52', 'jersey-mexico'),
(52, 'sudadera dc', 'sudadera', '800', '20', 'Hombre', 4, 0, '2019-11-06 20:44:06', '2019-11-06 20:44:06', 'sudadera-dc'),
(55, 'jersey mexico femenil', 'jersey oficial de mexico version femenil', '1250', '25', 'Mujer', 16, 0, '2019-11-06 23:38:53', '2019-11-06 23:38:53', 'jersey-mexico-femenil'),
(56, 'jersey real madrid', 'jersey oficial del real madrid local', '1500', '20', 'Hombre', 16, 0, '2019-11-11 07:27:02', '2019-11-11 07:27:02', 'jersey-real-madrid'),
(57, 'tenis adidas mujer', 'tenis de color morado marca adidas', '1250', '15', 'Mujer', 18, 0, '2019-11-11 07:28:18', '2019-11-11 07:28:18', 'tenis-adidas-mujer'),
(58, 'tenis adidas', 'tenis adidas color gris', '1100', '12', 'Hombre', 18, 0, '2019-11-11 07:30:32', '2019-11-11 07:30:32', 'tenis-adidas'),
(59, 'jersey america', 'tercer jersey oficial del america', '1450', '20', 'Hombre', 16, 0, '2019-11-11 07:31:36', '2019-11-11 07:31:36', 'jersey-america'),
(60, 'tenis adidas zkx', 'tenis color morado para dama marca adidas', '980', '14', 'Mujer', 18, 0, '2019-11-11 07:38:04', '2019-11-11 07:38:04', 'tenis-adidas-zkx'),
(61, 'balon adidas', 'balon oficial de la champions league', '550', '25', 'Articulo', 17, 0, '2019-11-11 07:38:51', '2019-11-11 07:38:51', 'balon-adidas'),
(62, 'pants adidas', 'pants marca adidas color gris', '450', '23', 'Mujer', 19, 0, '2019-11-11 07:40:44', '2019-11-11 07:40:44', 'pants-adidas'),
(63, 'jersey real madrid femenil', 'jersey real madrid vistante femenil', '1120', '25', 'Mujer', 16, 0, '2019-11-11 07:42:32', '2019-11-11 07:42:32', 'jersey-real-madrid-femenil'),
(64, 'pelotas de tennis', 'set de 3 pelotas de tennis marca wilson', '120', '15', 'Articulo', 17, 0, '2019-11-11 07:44:50', '2019-11-11 07:44:50', 'pelotas-de-tennis'),
(65, 'tenis adidas mujer 279', 'tenis adidas dama color negro y rosa', '1100', '20', 'Mujer', 18, 0, '2019-11-11 07:47:28', '2019-11-11 07:47:28', 'tenis-adidas-mujer-279'),
(66, 'tenis adidas morado', 'tenis para dama color morado marca adidas', '1200', '10', 'Mujer', 18, 0, '2019-11-11 07:50:47', '2019-11-11 07:50:47', 'tenis-adidas-morado'),
(67, 'pants rosa nike', 'pants rosa maca nike', '400', '12', 'Mujer', 19, 0, '2019-11-11 07:52:04', '2019-11-11 07:52:04', 'pants-rosa-nike'),
(68, 'balon futbol americano', 'balon de la NFL wilson', '300', '5', 'Articulo', 17, 0, '2019-11-11 07:55:26', '2019-11-11 07:55:26', 'balon-futbol-americano'),
(69, 'balon nike barcelona', 'balon oficial del barcelona', '550', '10', 'Articulo', 17, 0, '2019-11-11 07:56:10', '2019-11-11 07:56:10', 'balon-nike-barcelona'),
(70, 'pants gris nike', 'pants color gris marca nike para dama', '380', '10', 'Mujer', 19, 0, '2019-11-11 07:57:29', '2019-11-11 07:57:29', 'pants-gris-nike'),
(71, 'jersey femenil barcelona', 'jersey barcelona femenil visitante', '880', '12', 'Mujer', 16, 0, '2019-11-11 07:58:39', '2019-11-11 07:58:39', 'jersey-femenil-barcelona'),
(72, 'tenis puma flex1', 'tenis puma para dama color rosa y blanco', '950', '20', 'Mujer', 18, 0, '2019-11-11 08:00:15', '2019-11-11 08:00:15', 'tenis-puma-flex1'),
(73, 'tenis nike roshe', 'tenis color morado para dama marca nike', '880', '15', 'Mujer', 18, 0, '2019-11-11 08:01:21', '2019-11-11 08:01:21', 'tenis-nike-roshe'),
(74, 'manilla baseball', 'manilla marca wilson roja y azul', '600', '10', 'Articulo', 17, 0, '2019-11-11 08:02:22', '2019-11-11 08:02:22', 'manilla-baseball'),
(75, 'balon adidas', 'balon numero 5 soccer', '500', '10', 'Articulo', 17, 0, '2019-11-11 08:03:23', '2019-11-11 08:03:23', 'balon-adidas-1'),
(76, 'chivas femenil', 'jersey oficial de las chivas femenil color rosa', '700', '12', 'Mujer', 16, 0, '2019-11-11 08:04:44', '2019-11-11 08:04:44', 'chivas-femenil'),
(77, 'madrid morada', 'jersey femnil real madrid morada', '850', '15', 'Mujer', 16, 0, '2019-11-11 08:05:31', '2019-11-11 08:05:31', 'madrid-morada'),
(78, 'manilla base ball', 'manilla base ball color negro y rosa', '450', '8', 'Articulo', 17, 0, '2019-11-11 08:06:16', '2019-11-11 08:06:16', 'manilla-base-ball'),
(79, 'tenis azulflex', 'tenis marca adidas color azul para nino', '700', '42', 'Niños', 18, 0, '2019-11-11 08:07:30', '2019-11-11 08:07:30', 'tenis-azulflex'),
(80, 'mameluco chivas', 'mameluco para bebe de las chivas', '300', '10', 'Niños', 19, 0, '2019-11-11 08:10:04', '2019-11-11 08:10:04', 'mameluco-chivas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_talla`
--

CREATE TABLE `producto_talla` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `talla_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto_talla`
--

INSERT INTO `producto_talla` (`id`, `producto_id`, `talla_id`, `created_at`, `updated_at`) VALUES
(44, 37, 2, NULL, NULL),
(45, 37, 3, NULL, NULL),
(46, 38, 1, NULL, NULL),
(47, 38, 2, NULL, NULL),
(48, 38, 3, NULL, NULL),
(49, 39, 2, NULL, NULL),
(50, 40, 1, NULL, NULL),
(51, 40, 2, NULL, NULL),
(52, 41, 2, NULL, NULL),
(53, 41, 1, NULL, NULL),
(54, 41, 3, NULL, NULL),
(55, 42, 1, NULL, NULL),
(56, 42, 2, NULL, NULL),
(57, 42, 3, NULL, NULL),
(58, 43, 1, NULL, NULL),
(59, 43, 2, NULL, NULL),
(60, 44, 1, NULL, NULL),
(61, 44, 2, NULL, NULL),
(62, 44, 3, NULL, NULL),
(63, 45, 1, NULL, NULL),
(64, 45, 2, NULL, NULL),
(65, 46, 1, NULL, NULL),
(66, 46, 2, NULL, NULL),
(67, 47, 2, NULL, NULL),
(68, 47, 3, NULL, NULL),
(69, 48, 1, NULL, NULL),
(70, 48, 2, NULL, NULL),
(71, 48, 3, NULL, NULL),
(72, 49, 3, NULL, NULL),
(73, 49, 4, NULL, NULL),
(74, 50, 1, NULL, NULL),
(75, 50, 2, NULL, NULL),
(76, 50, 3, NULL, NULL),
(77, 51, 1, NULL, NULL),
(78, 51, 2, NULL, NULL),
(79, 52, 1, NULL, NULL),
(80, 52, 2, NULL, NULL),
(81, 55, 1, NULL, NULL),
(82, 55, 2, NULL, NULL),
(83, 55, 5, NULL, NULL),
(84, 56, 1, NULL, NULL),
(85, 56, 2, NULL, NULL),
(86, 56, 3, NULL, NULL),
(87, 57, 8, NULL, NULL),
(88, 57, 9, NULL, NULL),
(89, 57, 10, NULL, NULL),
(90, 58, 10, NULL, NULL),
(91, 58, 11, NULL, NULL),
(92, 58, 13, NULL, NULL),
(93, 59, 1, NULL, NULL),
(94, 59, 2, NULL, NULL),
(95, 59, 3, NULL, NULL),
(96, 60, 8, NULL, NULL),
(97, 60, 9, NULL, NULL),
(98, 60, 10, NULL, NULL),
(99, 62, 1, NULL, NULL),
(100, 62, 2, NULL, NULL),
(101, 63, 1, NULL, NULL),
(102, 63, 2, NULL, NULL),
(103, 65, 6, NULL, NULL),
(104, 65, 8, NULL, NULL),
(105, 65, 9, NULL, NULL),
(106, 66, 6, NULL, NULL),
(107, 66, 9, NULL, NULL),
(108, 66, 10, NULL, NULL),
(109, 67, 1, NULL, NULL),
(110, 67, 2, NULL, NULL),
(111, 70, 2, NULL, NULL),
(112, 71, 1, NULL, NULL),
(113, 71, 2, NULL, NULL),
(114, 72, 6, NULL, NULL),
(115, 72, 7, NULL, NULL),
(116, 72, 8, NULL, NULL),
(117, 72, 9, NULL, NULL),
(118, 73, 8, NULL, NULL),
(119, 73, 9, NULL, NULL),
(120, 73, 10, NULL, NULL),
(121, 76, 1, NULL, NULL),
(122, 76, 2, NULL, NULL),
(123, 76, 3, NULL, NULL),
(124, 77, 1, NULL, NULL),
(125, 77, 2, NULL, NULL),
(126, 79, 6, NULL, NULL),
(127, 79, 7, NULL, NULL),
(128, 80, 1, NULL, NULL),
(129, 80, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallas`
--

CREATE TABLE `tallas` (
  `id` int(10) UNSIGNED NOT NULL,
  `talla` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tallas`
--

INSERT INTO `tallas` (`id`, `talla`, `created_at`, `updated_at`) VALUES
(1, 'CH', NULL, '2017-07-15 00:35:34'),
(2, 'M', NULL, NULL),
(3, 'G', NULL, NULL),
(4, 'XG', NULL, NULL),
(5, 'S', '2017-07-15 00:19:49', '2017-07-15 00:19:49'),
(6, '22', '2019-11-07 00:33:33', '2019-11-07 00:33:33'),
(7, '21', '2019-11-11 06:21:31', '2019-11-11 06:21:31'),
(8, '23', '2019-11-11 06:21:36', '2019-11-11 06:21:36'),
(9, '24', '2019-11-11 06:21:40', '2019-11-11 06:21:40'),
(10, '25', '2019-11-11 06:21:45', '2019-11-11 06:21:45'),
(11, '26', '2019-11-11 06:21:49', '2019-11-11 06:21:49'),
(12, '27', '2019-11-11 06:21:54', '2019-11-11 06:21:54'),
(13, '28', '2019-11-11 06:21:58', '2019-11-11 06:21:58'),
(14, '29', '2019-11-11 06:22:02', '2019-11-11 06:22:02'),
(15, '30', '2019-11-11 06:22:04', '2019-11-11 06:22:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`, `apellido`, `domicilio`) VALUES
(10, 'Juan', 'juan@gmail.com', '$2y$10$IcAC2WajtjSe8TP0jbeO7OO781/8xgVeUX6.NEZokfuoPJ6UAFsle', 'member', NULL, '2017-07-12 09:26:35', '2017-07-12 09:26:35', '', ''),
(24, 'Julio', 'julio@ga', '$2y$10$n/cVMFEyuT4fSCXBovIYGusKM83htoxlWcGu3GOt0v5xNJY1R9MSS', 'admin', NULL, '2017-07-13 03:52:15', '2017-07-25 03:55:11', '', ''),
(94, 'Angel', 'angelrene_sum41@hotmail.com', '$2y$10$3/3W4zH8IcYEfgP4erxJruRKqMSqp.FQ8ictYEtGBP4ZjafSY.2oS', 'admin', '0iefsRnE6k6tN8NTuQh7WdFrHLICGaiqHTeL0FroKA0kDnNhcx57UewE2bYd', '2017-07-16 07:31:40', '2017-07-25 03:55:36', '', ''),
(97, 'Mr Blake Watsica III', 'dasia.cassin@example.net', '$2y$10$BnhJl4KDFs3g.IH/8RgIfuUpnC2EMKfCT6Ql1keu9ugBTbMz2Q7nC', 'member', NULL, '2017-07-16 07:32:42', '2017-07-24 21:52:54', '', ''),
(99, 'Isabella Wunsch', 'vince30@example.net', '$2y$10$BnhJl4KDFs3g.IH/8RgIfuUpnC2EMKfCT6Ql1keu9ugBTbMz2Q7nC', 'member', NULL, '2017-07-16 07:32:43', '2017-07-16 07:32:43', '', ''),
(102, 'Marvin jahjahjah', 'bogan.margarita@example.net', '$2y$10$BnhJl4KDFs3g.IH/8RgIfuUpnC2EMKfCT6Ql1keu9ugBTbMz2Q7nC', 'member', NULL, '2017-07-16 07:32:43', '2017-07-23 04:53:39', '', ''),
(103, 'Edward Langworth', 'upton.lourdes@example.com', '$2y$10$BnhJl4KDFs3g.IH/8RgIfuUpnC2EMKfCT6Ql1keu9ugBTbMz2Q7nC', 'member', NULL, '2017-07-16 07:32:43', '2017-07-16 07:32:43', '', ''),
(104, 'Dr. Tessie Frami', 'keebler.clementina@example.com', '$2y$10$BnhJl4KDFs3g.IH/8RgIfuUpnC2EMKfCT6Ql1keu9ugBTbMz2Q7nC', 'member', NULL, '2017-07-16 07:32:43', '2017-07-16 07:32:43', '', ''),
(105, 'Vergie Bogisich', 'aurelio15@example.net', '$2y$10$BnhJl4KDFs3g.IH/8RgIfuUpnC2EMKfCT6Ql1keu9ugBTbMz2Q7nC', 'member', NULL, '2017-07-16 07:32:43', '2017-07-16 07:32:43', '', ''),
(106, 'Jacinto Rowe', 'yherman@example.com', '$2y$10$BnhJl4KDFs3g.IH/8RgIfuUpnC2EMKfCT6Ql1keu9ugBTbMz2Q7nC', 'member', NULL, '2017-07-16 07:32:43', '2017-07-16 07:32:43', '', ''),
(107, 'German g', 'german@gmail.com', '$2y$10$nVLHYOTxbiBit3EBFYL5cudbu3IAVSm1AUfDlO3UjGknXfRQUvIoO', 'member', 'UkhlvDUUGlpnL85U45osDuR9xyYKquY9w0mGc39yRUB3CdQDSbHNKOpg73Pp', '2017-07-19 23:41:06', '2017-07-19 23:41:06', '', ''),
(108, 'luis pacheco', 'jajajshjs@hotmail.com', '$2y$10$LDrM29/Eiyr7LIHqj19F9OtOB7Mypl8RMEGrDT4q7q0sXp2xf09t2', 'member', NULL, '2017-07-23 00:29:01', '2017-07-23 00:29:01', '', ''),
(109, 'germanWF', '827398273@gmail.com', '$2y$10$2m2nbsEOAwJLcg9d8Sesfu.uvVJCYQntGbJ5IUb4bdF/tOACKiT2K', 'member', 'qCEylQriCkgNNaP7VaRgDGtG5adtp1K7tEoN4C4QHhqTLLkpOVfGOuJAzPmj', '2017-07-24 20:29:58', '2017-07-24 20:32:54', '', ''),
(110, 'Jose Dorito', 'dorito@hotmail.com', '$2y$10$9DpCvhIhWuErGVVxwArVMe9iaB5dPzTVUzOATkKzJk0KBiVNg.LDy', 'member', 'qDVj7ovSveg0gzK6DRycVCfj6lhsAC2XCC7BmLgyzpwe8FAApkBztTqEXp9o', '2017-07-25 03:51:26', '2017-07-25 03:51:26', '', ''),
(111, 'Juan Barajas', 'barajas@hotmail.com', '$2y$10$Ur47vQ5EtxmOeYtgKg5AeuQkwabhwM.318/Ddn3gEmuI/Ha.9Pwa2', 'member', 'M6KS0SIdFnMDlLmkyt9BrKtx14rglQYEhRYetdY4ws6Ujinkm8yHpxGlWlij', '2017-07-25 04:37:37', '2017-07-25 04:37:37', '', ''),
(112, 'german', 'german7@gmail.com', '$2y$10$ACt.5tIHH1WvRYmbL9CT.eL7rCVcfoYjGaGwkfRsUKyXAACZmE2/K', 'member', 'WN1W7IwmVKaWxuDTiV0uqywf4sc0r24OF0DckcV27n1YGKVql9T942BBTbBh', '2017-07-25 20:41:45', '2017-07-25 20:41:45', '', ''),
(113, 'Balotelli', 'balodios@gmail.com', '$2y$10$/M6wdPXHymtdgkch.m03aut4y5js2xXNGn6g0twbbXy5ZezYAkgGi', 'member', 'gYcnMnOcSt2ldjwsigaHtSZBTp8Wj1QaAupNjhYBDBC8XwRxeifSZDEhqtPC', '2017-07-25 21:13:25', '2017-07-25 21:13:25', '', ''),
(114, 'Vicente', 'vicedelira@gmail.com', '$2y$10$UMt.1D7b2240u5JCfAvYdOiGOEKFrzUvdLbQzppi4NahN5sQGUKnK', 'admin', '3K1DTZTvzDIYyy0uEmtOr0YAKfg5BZvUQVBXtZwapbJBHZrkR4pYwXa656yk', '2019-11-02 10:33:53', '2019-11-02 10:33:53', '', ''),
(115, 'j', 'moomar@gmail.com', '$2y$10$9xU/Y2DRxZHZqiFti0sLk.iBpyaVeLtuHzUbGwjm8MhrEX0KW.eFa', 'member', 'HtyfUhx24xJJh0YlzuOXYucFzGynnpsBnyCbmhzwTiFaM6IG1Vt4fWmBLcI5', '2019-11-05 01:31:08', '2019-11-05 01:31:08', 'j', ''),
(116, 'antonio', 'vadld_95@hotmail.com', '$2y$10$JyriewtzSb8djrBeuNKyIu0ckVepgO2iI3wstib1BtrbvWA34EHYG', 'member', 'pMJFw0nTx4UTE4FP5CSZGDgjLMZkvocSptYTB02um3MOQSYCIWibmO4yu2oB', '2019-11-05 02:26:01', '2019-11-05 02:26:01', 'diaz', 'ita 100'),
(117, 'Francisco Enrique', 'chagoperez@gmail.com', '$2y$10$IG/lqy1cmHSvtlfpdlqRHeR9A8f2NGbDdVC/fZmed264DtpnR283C', 'member', 'j0OeluTxjDAVmjIhGhVIrPNCAM2NpI365uLN21pLyUYSp96jsnzE0kP7hzq7', '2019-11-07 00:02:23', '2019-11-07 00:02:23', 'Perez Castro', 'pozo bravo #122');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imagenes_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordenes_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `orden_items`
--
ALTER TABLE `orden_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_items_producto_id_foreign` (`producto_id`),
  ADD KEY `orden_items_orden_id_foreign` (`orden_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `producto_talla`
--
ALTER TABLE `producto_talla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_talla_producto_id_foreign` (`producto_id`),
  ADD KEY `producto_talla_talla_id_foreign` (`talla_id`);

--
-- Indices de la tabla `tallas`
--
ALTER TABLE `tallas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `orden_items`
--
ALTER TABLE `orden_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `producto_talla`
--
ALTER TABLE `producto_talla`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de la tabla `tallas`
--
ALTER TABLE `tallas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `ordenes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orden_items`
--
ALTER TABLE `orden_items`
  ADD CONSTRAINT `orden_items_orden_id_foreign` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orden_items_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `producto_talla`
--
ALTER TABLE `producto_talla`
  ADD CONSTRAINT `producto_talla_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `producto_talla_talla_id_foreign` FOREIGN KEY (`talla_id`) REFERENCES `tallas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
