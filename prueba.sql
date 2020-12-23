-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-12-2020 a las 18:39:23
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `consulta` text NOT NULL,
  `novedades` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `telefono`, `email`, `consulta`, `novedades`) VALUES
(7, 'asdasd', 2323632138, 'juanma_5_11@hotmail.com', 'asdasd', 'N'),
(8, 'asdasd', 2323632138, 'juanma_5_11@hotmail.com', 'asdasd', 'N'),
(17, 'asdasd', 2323632138, 'juanma_5_11@hotmail.com', 'asdadads', 'S'),
(18, 'asdasd', 2323632138, 'juanma_5_11@hotmail.com', 'asdadads', 'S'),
(19, 'prueba1', 2323632138, 'asd@asd.com', 'asdasdasdasd', 'S'),
(20, 'asdasd', 2323632138, 'asd@asd.com', 'asaasdssds', 'N'),
(21, 'asdasd', 2323632138, 'asd@asd.com', 'asdasdasd', 'N'),
(22, 'asdasd', 2323632138, 'juanma_5_11@hotmail.com', 'asdasdasdsad', 'N'),
(23, 'aaaaaaaaaaaaaa', 123231231231231, 'pruebajml77@gmail.com', 'asdadsdadasd', 'S'),
(24, 'aaaaaaaaaaaaaa', 123231231231231, 'pruebajml77@gmail.com', 'asdadsdadasd', 'S'),
(25, 'asdasd', 2323632138, 'asd@asd.com', 'asdsad', 'N'),
(26, 'asdasd', 2323632138, 'asd@asd.com', 'asdsad', 'N'),
(27, 'asdasd', 2323632138, 'asd@asd.com', 'asdsad', 'N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `id` int(11) NOT NULL,
  `destino` varchar(150) NOT NULL,
  `especificaciones` text NOT NULL,
  `precio` mediumint(9) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `destino`, `especificaciones`, `precio`, `imagen`) VALUES
(1, 'Copenhague\r\n', '5 Dias <br>\r\nAlojamiento + traslado', 1000, 'copenhague.jpg '),
(2, 'Marruecos\r\n', '5 Dias <br>\r\nAlojamiento + traslado', 500, 'marruecos.jpg '),
(3, 'Porto\r\n', '3 Dias <br>\r\nAlojamiento + traslado', 300, 'porto.jpg '),
(4, 'Machupichu\r\n', '5 Dias <br>\r\nAlojamiento + traslado', 500, 'peru.jpg '),
(5, 'Miami\r\n', '8 Dias <br>\r\nAlojamiento + traslado', 1000, 'miami.jpg '),
(6, 'Cozumel\r\n', '10 Dias <br>\r\nAlojamiento + traslado', 1100, 'cozumel.jpg '),
(7, 'Paris\r\n', '7 Dias <br>\r\nAlojamiento + traslado', 1300, 'paris.jpg ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
