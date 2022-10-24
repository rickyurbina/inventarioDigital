-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2022 at 05:52 PM
-- Server version: 8.0.23
-- PHP Version: 8.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventarioDigital`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `nombre`) VALUES
(8, 'Generica');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipoCliente` int NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaRegistro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombres`, `apellidos`, `telefono`, `email`, `tipoCliente`, `fechaNacimiento`, `fechaRegistro`) VALUES
(0, 'Publico', 'en General', '6251233333', 'jesus@gmail.com', 1, '2022-09-29', '2022-09-27'),
(1, 'Ricardo', 'Urbina', '6251221438', 'ricky@gmail.com', 1, '1975-11-05', '2021-12-08'),
(5, 'Melany', 'Urbina Garcia', '6251065030', 'mell@gmail.com', 2, '2005-03-03', '2021-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `entradas`
--

CREATE TABLE `entradas` (
  `id` int NOT NULL,
  `idProducto` int DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `disponible` double DEFAULT NULL,
  `medida` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `costo` double DEFAULT NULL,
  `factura` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entradas`
--

INSERT INTO `entradas` (`id`, `idProducto`, `cantidad`, `disponible`, `medida`, `costo`, `factura`) VALUES
(1, 43, 1, 1, 'Pzas', 1599, 1),
(2, 42, 1, 1, 'Pzas', 1550, 2);

-- --------------------------------------------------------

--
-- Table structure for table `entradasEnc`
--

CREATE TABLE `entradasEnc` (
  `factura` int NOT NULL,
  `idProveedor` int NOT NULL,
  `concepto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  `totalFactura` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entradasEnc`
--

INSERT INTO `entradasEnc` (`factura`, `idProveedor`, `concepto`, `fecha`, `totalFactura`) VALUES
(1, 8, 'entrada', '2022-10-22', 1599),
(2, 9, 'entrada', '2022-10-22', 1550);

-- --------------------------------------------------------

--
-- Table structure for table `eqType`
--

CREATE TABLE `eqType` (
  `id` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `eqType`
--

INSERT INTO `eqType` (`id`, `nombre`) VALUES
(10, 'ROPA'),
(11, 'CALZADO'),
(12, 'ACCESORIOS'),
(13, 'JOYERÍA');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `claveProducto` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `eqType` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT 'yard',
  `dayPrice` int NOT NULL,
  `weekPrice` int NOT NULL,
  `monthPrice` int NOT NULL,
  `features` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `disponibilidad` decimal(10,2) DEFAULT '0.00',
  `costoPromedio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `medida` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`idProducto`, `claveProducto`, `name`, `brand`, `eqType`, `status`, `dayPrice`, `weekPrice`, `monthPrice`, `features`, `image`, `disponibilidad`, `costoPromedio`, `medida`) VALUES
(42, '123001', 'Tenis Para Hombre Nike Court Vision Low Next Nature', 'Generica', 'CALZADO', 'yard', 1550, 1300, 1100, '[]', 'uploads/products/3a14f56d7f4f2f62c6a8d0941190f993D_NQ_NP_803008-MLM48556411267_122021-O.jpeg', '-1.00', '1550.00', 'Pzas'),
(43, '123002', 'Tenis De Entrenamiento Para Hombre Nike City Rep Tr', 'Generica', 'CALZADO', 'yard', 1599, 1399, 1099, '[]', 'uploads/products/569be28882236456eb4fb787f2a6c89eD_NQ_NP_745939-MLM48702243343_122021-O.jpeg', '0.00', '1599.00', 'Pzas'),
(44, '123003', 'Cazadora Bomber Con Bordado De Letras Para Hombre', 'Generica', 'ROPA', 'yard', 556, 0, 0, '[]', 'uploads/products/48698edbc6d9d09158b765a08bb5cdcc6924450800_1_1_3.jpeg', '0.00', '0.00', 'Pzas');

-- --------------------------------------------------------

--
-- Table structure for table `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedor` int NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fechaRegistro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `proveedores`
--

INSERT INTO `proveedores` (`idProveedor`, `nombre`, `direccion`, `telefono`, `email`, `fechaRegistro`) VALUES
(7, 'AMAZON ', 'WEB', '6251112233', 'contacto@amazon.com', '2022-08-02'),
(8, 'Mercado Libre', 'Web', '6251234455', 'contacto@mercadolibre.com', '2022-08-03'),
(9, 'Ajuste de Invetnario', 'Ajuste de Inventario ', '', '', '2022-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `salidas`
--

CREATE TABLE `salidas` (
  `id` int NOT NULL,
  `idProducto` int NOT NULL,
  `cantidad` double NOT NULL,
  `medida` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idCliente` int NOT NULL,
  `precio` double NOT NULL,
  `pedido` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salidas`
--

INSERT INTO `salidas` (`id`, `idProducto`, `cantidad`, `medida`, `idCliente`, `precio`, `pedido`) VALUES
(1, 43, 1, 'Pzas', 7, 1599, 1),
(2, 43, 1, 'Pzas', 7, 1599, 2),
(3, 42, 1, 'Pzas', 7, 1550, 2),
(4, 42, 1, 'Pzas', 0, 1550, 3);

-- --------------------------------------------------------

--
-- Table structure for table `salidasEnc`
--

CREATE TABLE `salidasEnc` (
  `id` int NOT NULL,
  `idCliente` int NOT NULL,
  `fecha` date NOT NULL,
  `pedido` int NOT NULL,
  `totalPedido` double NOT NULL,
  `descuento` double NOT NULL,
  `totalNeto` double NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'V' COMMENT 'V = Vendido, C = Cancelado',
  `pago` varchar(1) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'E' COMMENT 'E = Efectivo, T = Tarjeta, O = Otro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salidasEnc`
--

INSERT INTO `salidasEnc` (`id`, `idCliente`, `fecha`, `pedido`, `totalPedido`, `descuento`, `totalNeto`, `status`, `pago`) VALUES
(1, 7, '2022-10-22', 1, 1599, 0, 1599, 'C', 'E'),
(2, 7, '2022-10-22', 2, 3149, 314, 2834, 'V', 'E'),
(3, 0, '2022-10-22', 3, 1550, 0, 1550, 'V', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `socios`
--

CREATE TABLE `socios` (
  `idSocio` int NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipoSocio` int NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fechaRegistro` date NOT NULL,
  `fechaUltimoPago` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `socios`
--

INSERT INTO `socios` (`idSocio`, `nombres`, `apellidos`, `telefono`, `email`, `password`, `tipoSocio`, `fechaNacimiento`, `fechaRegistro`, `fechaUltimoPago`) VALUES
(1, 'Ricardo', 'Urbina', '6251221438', 'ricky@gmail.com', '', 1, '1975-11-05', '2021-12-08', '2022-06-01 21:47:13'),
(11, 'Juan', 'Perez', '6251234455', 'juan@gmail.com', '$2y$10$kqNQ5t.qPXBIAyKDkSLHc.slSyGKcSiF9kTNtq0sfVQOvr2GvZaIW', 1, '2022-07-06', '2022-07-06', NULL),
(14, 'x', 'x', '', '', '$2y$10$Nn1R7Qh.NgmkDQmj4uPaeu2bSi7lSQ3XwBWmGNFvvwHcpxIxbRMNq', 1, '1970-01-01', '2022-09-27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `nickName` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `permisos` varchar(13) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nombres`, `apellidos`, `nickName`, `email`, `telefono`, `permisos`, `password`) VALUES
(15, 'Melany Fernanda', 'Urbina Garcia', 'Mell', 'mell@gmail.com', '6251065030', 'Administrador', '909090');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nickName` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `personal` text CHARACTER SET utf8 COLLATE utf8_spanish_ci COMMENT 'Informacion personal del usuario que sera mostrada en el perfil de usuario',
  `titulo` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Titulo que tiene en la empresa. ej. Gerente, Agente de ventas, etc',
  `permisos` varchar(13) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL COMMENT 'El tipo de acceso que tiene en el sistema ej. Administrador, usuario, etc',
  `foto` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `estado` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL COMMENT 'Activo / Inactivo',
  `ultimoLogin` datetime DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `sociales` text CHARACTER SET utf8 COLLATE utf8_spanish_ci COMMENT 'Los diferentes links a las redes sociales del usuario para ser contactado por los clientes.  En formato JSON'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `nickName`, `telefono`, `email`, `password`, `personal`, `titulo`, `permisos`, `foto`, `estado`, `ultimoLogin`, `fechaNac`, `sociales`) VALUES
(13, 'Ricardo', 'Urbina Najera', 'Rick', '6251221438', 'r@gmail.com', '$2y$10$4NxyweuG8QF71A7ch6zvleuaxTz2MFeeWaiN8Z6NF.B/9AVge/GAe', '', 'Gerente', 'administrador', 'assets/images/faces/1.jpg', '1', '0000-00-00 00:00:00', '1991-09-27', '{\"Facebook\":\"\",\"Twitter\":\"\",\"LinkedIn\":\"\"}'),
(33, 'Jesus', 'Baray', 'Jesus', '6251221414', 'j@gmail.com', '$2y$10$rTN6ZgBEADUB9hhQPbX7YOQRoDodZm3ENyNWoakRMWj.0WP5V9C6i', NULL, NULL, 'usuario', NULL, '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_token`
--

CREATE TABLE `usuarios_token` (
  `TokenId` int NOT NULL,
  `UsuarioId` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `Token` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `Estado` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuarios_token`
--

INSERT INTO `usuarios_token` (`TokenId`, `UsuarioId`, `Token`, `Estado`, `Fecha`) VALUES
(800, '13', 'b23f313fdeaa52289e0249800c88d51a', 'Activo', '2022-06-28 03:56:00'),
(801, '13', 'b0a295d7dcb8db6998c5675af9315a9b', 'Activo', '2022-06-30 23:32:00'),
(802, '33', '0200d59a778560340c39a8332815ba7d', 'Activo', '2022-06-30 23:58:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indexes for table `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entradasEnc`
--
ALTER TABLE `entradasEnc`
  ADD PRIMARY KEY (`factura`);

--
-- Indexes for table `eqType`
--
ALTER TABLE `eqType`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indexes for table `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedor`);

--
-- Indexes for table `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salidasEnc`
--
ALTER TABLE `salidasEnc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`idSocio`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `usuarios_token`
--
ALTER TABLE `usuarios_token`
  ADD PRIMARY KEY (`TokenId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eqType`
--
ALTER TABLE `eqType`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `salidas`
--
ALTER TABLE `salidas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salidasEnc`
--
ALTER TABLE `salidasEnc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `socios`
--
ALTER TABLE `socios`
  MODIFY `idSocio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `usuarios_token`
--
ALTER TABLE `usuarios_token`
  MODIFY `TokenId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=803;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
