-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2019 a las 18:19:47
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

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
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`) VALUES
(1, 'Jesus', '123456', 'Martin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro`
--

CREATE TABLE `carro` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(2, 'Collares'),
(3, 'Aretes'),
(4, 'Pulseras'),
(5, 'Anillos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `username`, `password`, `name`) VALUES
(1, 'Oscar', '123456', 'Mauricio'),
(2, 'Jesus', '654321', 'Martin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `monto` float NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `id_cliente`, `fecha`, `monto`, `estado`) VALUES
(3, 1, '2019-02-24 12:39:04', 16400, 1),
(4, 1, '2019-04-12 20:03:40', 1360, 0),
(5, 1, '2019-05-21 09:19:58', 0, 0),
(6, 1, '2019-05-21 10:43:25', 15945, 0),
(7, 1, '2019-05-21 11:09:07', 1352, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `descargable` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `price`, `imagen`, `name`, `id_categoria`, `oferta`, `descargable`) VALUES
(1, 3500, 'anillo1.jpg', 'Anillo de Oro con Cuarzo brillante', 5, 10, ''),
(2, 1900, 'anillo2.jpg', 'Anillo de Plata y Cuarzo', 5, 5, ''),
(3, 350, 'anillo3.jpg', 'Anillo de Cuarzo redondo', 5, 0, ''),
(4, 900, 'anillo4.jpg', 'Anillo de Cuarzo cuadrado', 5, 0, ''),
(5, 1200, 'anillo5.jpg', 'Anillo de Cuarzo puro', 5, 0, ''),
(6, 350, 'anillo6.jpg', 'Anillo Aguila de Cuarzo', 5, 0, ''),
(7, 150, 'arete1.jpg', 'Aretes de Obsidiana', 3, 15, ''),
(8, 220, 'arete2.jpg', 'Aretes de Obsidiana y Cuarzo', 3, 0, ''),
(9, 650, 'arete3.jpg', 'Aretes de Obsidiana Brillante', 3, 15, ''),
(10, 2200, 'arete4.jpg', 'Aretes de Oro y Obsidiana', 3, 10, ''),
(11, 900, 'arete5.jpg', 'Aretes de Obsidiana mas Collar', 3, 10, ''),
(12, 1220, 'arete6.jpg', 'Aretes de Plata y Obsidiana', 3, 15, ''),
(13, 350, 'collar1.jpg', 'Collar de Obsidiana con detalles Metalicos', 2, 0, ''),
(14, 220, 'collar2.jpg', 'Collar bola de Obsidiana con Piel', 2, 0, ''),
(15, 520, 'collar4.jpg', 'Collar Rosario de Obsidiana', 2, 10, ''),
(16, 17950, 'collar5.jpg', 'Collar Artesania Oriental de Obsidiana', 2, 0, ''),
(17, 520, 'collar6.png', 'Collar Poligono de Obsidiana', 2, 0, ''),
(18, 120, 'collar7.jpg', 'Collar de Piel con obelisco Obsidiana', 2, 50, ''),
(19, 170, 'collar8.jpg', 'Collar de Piel y Obsidiana rustica', 2, 50, ''),
(20, 350, 'collar9.jpg', 'Collar gota de Obsidiana', 2, 5, ''),
(21, 15520, 'collar10.jpg', 'Collar Buda de Obsidiana', 2, 0, ''),
(22, 1520, 'collar11.jpg', 'Collar Zorro de Obsidiana', 2, 15, ''),
(23, 5500, 'collar3.jpg', 'Collar de Titanium y Obsidiana pulida', 2, 0, ''),
(24, 350, 'pulsera1.jpg', 'Pulsera de cuentas de Obsidiana y Ambar', 4, 15, ''),
(25, 5500, 'pulsera2.jpg', 'Pulsera de Oro con detalles de Obsidiana', 4, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_compra`
--

CREATE TABLE `productos_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_compra`
--

INSERT INTO `productos_compra` (`id`, `id_compra`, `id_producto`, `cantidad`, `monto`) VALUES
(1, 3, 5, 7, 400),
(2, 3, 4, 4, 1000),
(3, 3, 3, 4, 1200),
(4, 3, 2, 4, 200),
(5, 3, 1, 4, 1000),
(6, 4, 5, 1, 400),
(7, 4, 7, 1, 1000),
(8, 6, 21, 1, 15520),
(9, 6, 19, 5, 170),
(10, 7, 22, 1, 1520),
(11, 7, 18, 1, 120);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_compra`
--
ALTER TABLE `productos_compra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carro`
--
ALTER TABLE `carro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `productos_compra`
--
ALTER TABLE `productos_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
