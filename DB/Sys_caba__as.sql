-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-01-2019 a las 17:50:51
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Sys_cabañas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cabaña`
--

CREATE TABLE `Cabaña` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `precio_por_persona` double NOT NULL,
  `precio_max_ocupacion` double NOT NULL,
  `id_complejo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cliente`
--

CREATE TABLE `Cliente` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Complejo`
--

CREATE TABLE `Complejo` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Facturacion`
--

CREATE TABLE `Facturacion` (
  `ID` int(11) NOT NULL,
  `detalle` varchar(200) NOT NULL,
  `monto` double NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_cabaña` int(11) NOT NULL,
  `id_responsable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedidos`
--

CREATE TABLE `Pedidos` (
  `ID` int(11) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `estado` varchar(200) NOT NULL,
  `adicional` double DEFAULT NULL,
  `id_responsable` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Responsable`
--

CREATE TABLE `Responsable` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `nro_ocupantes` int(11) NOT NULL,
  `fecha_checkin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_checkout` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `id_cabaña` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Servicio`
--

CREATE TABLE `Servicio` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Cabaña`
--
ALTER TABLE `Cabaña`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `Complejo`
--
ALTER TABLE `Complejo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `Facturacion`
--
ALTER TABLE `Facturacion`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `Responsable`
--
ALTER TABLE `Responsable`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `Servicio`
--
ALTER TABLE `Servicio`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Cabaña`
--
ALTER TABLE `Cabaña`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Cliente`
--
ALTER TABLE `Cliente`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Complejo`
--
ALTER TABLE `Complejo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Facturacion`
--
ALTER TABLE `Facturacion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Pedidos`
--
ALTER TABLE `Pedidos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Responsable`
--
ALTER TABLE `Responsable`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Servicio`
--
ALTER TABLE `Servicio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
