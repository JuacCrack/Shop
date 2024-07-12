-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 29-06-2024 a las 14:59:06
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `date`, `timestamp`, `nombre`, `descripcion`) VALUES
(1, '2023-01-01', '2023-12-08 20:03:33', 'Electrónicos', 'Categoría de productos electrónicos'),
(2, '2023-01-02', '2023-12-08 20:03:33', 'Ropa', 'Categoría de ropa y accesorios'),
(3, '2023-01-03', '2023-12-08 20:03:33', 'Hogar', 'Categoría de productos para el hogar'),
(4, '2023-01-04', '2023-12-08 20:03:33', 'Deportes', 'Categoría de artículos deportivos'),
(5, '2023-01-05', '2023-12-08 20:03:33', 'Juguetes', 'Categoría de juguetes para todas las edades'),
(6, '2023-01-06', '2023-12-08 20:03:33', 'Libros', 'Categoría de libros y literatura'),
(7, '2023-01-07', '2023-12-08 20:03:33', 'Muebles', 'Categoría de muebles para el hogar'),
(8, '2023-01-08', '2023-12-08 20:03:33', 'Belleza', 'Categoría de productos de belleza y cuidado personal'),
(9, '2023-01-09', '2023-12-08 20:03:33', 'Alimentos', 'Categoría de alimentos y comestibles'),
(10, '2023-01-10', '2023-12-08 20:03:33', 'Automotriz', 'Categoría de productos para automóviles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `categoria_id` int DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_general_ci,
  `precio` decimal(10,2) NOT NULL,
  `descuento` decimal(5,2) DEFAULT '0.00',
  `habilitado` tinyint NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `date`, `timestamp`, `categoria_id`, `nombre`, `descripcion`, `precio`, `descuento`, `habilitado`, `sku`, `image`) VALUES
(1, '2023-12-31', '2023-12-08 20:03:33', 1, 'Teléfono inteligente2', 'Teléfono avanzado con múltiples funciones', '599.99', '0.05', 0, 'SKU123', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/220px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg'),
(2, '2023-01-12', '2023-12-08 20:03:33', 2, 'Camiseta casual', 'Camiseta de algodón para uso diario', '19.99', '0.10', 0, 'SKU456', 'imagen2.jpg'),
(3, '2023-01-13', '2023-12-08 20:03:33', 3, 'Aspiradora', 'Aspiradora de alta potencia para el hogar', '149.99', '0.02', 0, 'SKU789', 'imagen3.jpg'),
(4, '2023-01-14', '2023-12-08 20:03:33', 4, 'Balón de fútbol', 'Balón oficial de tamaño estándar', '29.99', '0.00', 0, 'SKU101', 'imagen4.jpg'),
(5, '2023-01-15', '2023-12-08 20:03:33', 5, 'Muñeca de peluche', 'Muñeca suave y adorable para niños', '14.99', '0.00', 0, 'SKU112', 'imagen5.jpg'),
(6, '2023-01-16', '2023-12-08 20:03:33', 6, 'Novela bestseller', 'Emocionante novela de ficción', '24.99', '0.00', 0, 'SKU113', 'imagen6.jpg'),
(7, '2023-01-17', '2023-12-08 20:03:33', 7, 'Silla de comedor', 'Silla elegante y cómoda para el comedor', '79.99', '0.03', 0, 'SKU114', 'imagen7.jpg'),
(8, '2023-01-18', '2023-12-08 20:03:33', 8, 'Kit de cuidado facial', 'Kit completo para el cuidado facial diario', '49.99', '0.10', 0, 'SKU115', 'imagen8.jpg'),
(9, '2023-01-19', '2023-12-08 20:03:33', 9, 'Paquete de cereales', 'Variado paquete de cereales para el desayuno', '7.99', '0.00', 0, 'SKU116', 'imagen9.jpg'),
(10, '2023-01-20', '2023-12-08 20:03:33', 10, 'Aceite de motor sintético', 'Aceite de motor de alto rendimiento', '34.99', '0.05', 0, 'SKU117', 'imagen10.jpg'),
(11, '2023-12-16', '2023-12-16 20:10:20', 1, 'Producto 1', 'Descripción del Producto 1', '29.99', '0.05', 0, 'SKU001', 'imagen1.jpg'),
(12, '2023-12-15', '2023-12-16 20:10:20', 2, 'Producto 2', 'Descripción del Producto 2', '19.99', '0.10', 0, 'SKU002', 'imagen2.jpg'),
(13, '2023-12-14', '2023-12-16 20:10:20', 3, 'Producto 3', 'Descripción del Producto 3', '149.99', '0.02', 0, 'SKU003', 'imagen3.jpg'),
(14, '2023-12-13', '2023-12-16 20:10:20', 4, 'Producto 4', 'Descripción del Producto 4', '29.99', '0.00', 0, 'SKU004', 'imagen4.jpg'),
(15, '2023-12-12', '2023-12-16 20:10:20', 5, 'Producto 5', 'Descripción del Producto 5', '14.99', '0.00', 0, 'SKU005', 'imagen5.jpg'),
(16, '2023-12-16', '2023-12-17 19:31:56', 1, 'Producto Ejemplo 1', 'Descripción del Producto 1', '29.99', '0.00', 1, 'SKU001', 'imagen1.jpg'),
(17, '2023-12-15', '2023-12-17 19:31:57', 2, 'Producto Ejemplo 2', 'Descripción del Producto 2', '19.99', '0.10', 1, 'SKU002', 'imagen2.jpg'),
(18, '2023-12-16', '2023-12-17 19:32:23', 1, 'Producto Ejemplo 1', 'Descripción del Producto 1', '29.99', '0.00', 1, 'SKU001', 'imagen1.jpg'),
(19, '2023-12-15', '2023-12-17 19:32:23', 2, 'Producto Ejemplo 2', 'Descripción del Producto 2', '19.99', '0.10', 1, 'SKU002', 'imagen2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE IF NOT EXISTS `reservas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hora_desde` time DEFAULT NULL,
  `hora_hasta` time DEFAULT NULL,
  `turnos` int DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `day`, `date`, `hora_desde`, `hora_hasta`, `turnos`, `habilitado`) VALUES
(1, 'LUNES', '2023-01-01', '10:00:00', '12:00:00', 3, 1),
(2, 'MARTES', '2023-01-02', '14:00:00', '16:00:00', 2, 1),
(3, 'MIÉRCOLES', '2023-01-03', '09:30:00', '11:30:00', 4, 0),
(4, 'JUEVES', '2023-01-04', '16:30:00', '18:30:00', 1, 1),
(5, 'VIERNES', '2023-01-05', '12:00:00', '14:00:00', 2, 1),
(6, 'SÁBADO', '2023-01-06', '11:00:00', '13:00:00', 3, 1),
(7, 'DOMINGO', '2023-01-07', '15:00:00', '17:00:00', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `pass`, `date`) VALUES
(1, 'admin', 'admin', '2023-12-30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
