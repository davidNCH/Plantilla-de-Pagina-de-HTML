-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2019 a las 00:40:05
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `emp_sensoractive`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id_almacen` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_almacenado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`id_almacen`, `id_producto`, `fecha_almacenado`) VALUES
(1, 1, '2019-10-01'),
(2, 2, '2019-09-02'),
(3, 3, '2019-07-03'),
(4, 4, '2019-10-04'),
(5, 5, '2019-10-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `id_asigna` int(11) NOT NULL,
  `asignaciones` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`id_asigna`, `asignaciones`) VALUES
(1, 'Ayudante de instalacion '),
(2, 'Jefe de instalacion'),
(3, 'Almacen'),
(4, 'Atencion cliente'),
(5, 'Supervisor'),
(6, 'Mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_clientes` int(11) NOT NULL,
  `ruc` char(11) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `sexo` char(1) NOT NULL,
  `telefono` char(9) NOT NULL,
  `id_zona` int(11) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `fecha_compra` date NOT NULL,
  `id_producto` int(11) NOT NULL,
  `datos_d_red` varchar(15) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(15) NOT NULL,
  `garantia` varchar(28) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_clientes`, `ruc`, `nombres`, `apellidos`, `sexo`, `telefono`, `id_zona`, `direccion`, `correo`, `fecha_compra`, `id_producto`, `datos_d_red`, `usuario`, `contraseña`, `garantia`) VALUES
(1, '75654923', 'Jose ', 'Flores', 'M', '987654321', 1, 'av.peru 1022 Mariano Melgar', 'flores@gmail.com', '2019-10-22', 2, '192.168.10.1', 'flores', 'floresensor', '1 año'),
(2, '75643254', 'Nancy', 'Mayta  Costa', 'F', '987654322', 8, 'Socabaya 102', 'nancycosta@gmail.com', '2019-09-23', 3, '192.168.10.2', 'nancy', 'costasensor', '2 año'),
(3, '76543289', 'Perci', 'Morales Monta', 'M', '987654323', 1, 'Av. Argentina 1110', 'moralesperci@gmail.com', '2019-10-24', 1, '192.168.10.3', 'morales', 'moralesensor', '1 año'),
(4, '75690876', 'Diana', 'Vaca Fuentes', 'F', '987654324', 5, 'Cayma la tomilla 203', 'dianavaca@gmail.com', '2019-08-02', 2, '192.168.10.4', 'diana', 'vacasensor', '1 año'),
(5, '76894563', 'Fedilio', 'Vega Acosta', 'M', '987654325', 3, 'Selva alegre-las torres 206', 'vegacosta@gmail.com', '2019-10-26', 5, '192.168.10.5', 'vega', 'vegasensor', '1 año');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre`) VALUES
(1, 'Hik Vision'),
(2, 'Callhua'),
(3, 'Axis'),
(4, 'Vivotek');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id_personal` int(11) NOT NULL,
  `dni` char(8) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `sexo` char(1) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `id_asigna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`id_personal`, `dni`, `nombre`, `apellidos`, `sexo`, `correo`, `id_asigna`) VALUES
(1, '71234567', 'David', 'Maya Pata', 'M', 'maya@gmail.com', 1),
(2, '71234567', 'Juan', 'Quispe Iqueño', '', 'quispealex@gmail.com ', 1),
(3, '71234568', 'Edgar ', 'Chumbilla Vega', 'M', 'edgarvega@gmail.com', 1),
(4, '71234568', 'Lucho', ' Correlin Espinoza ', 'M', 'lucho@gmail.com ', 3),
(5, '71234568', 'Evert ', 'Echegaray Medina', 'M', 'medina@gmail.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `numero_serie_producto` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `nombre_producto` varchar(40) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo_unitario` float NOT NULL,
  `fecha_adquerido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `numero_serie_producto`, `modelo`, `nombre_producto`, `descripcion`, `id_marca`, `cantidad`, `costo_unitario`, `fecha_adquerido`) VALUES
(1, 'C62395264', 'DS-2CD2423G0-IW', 'Exir fixed cube', 'camara ip ', 1, 6, 70, '2019-10-01'),
(2, 'D62395269', 'DC-2CD2423G2-IK', 'camara domo', 'camara ip ', 1, 5, 150, '2019-09-02'),
(3, 'C62395266', 'DF-2CD2423H1-IC', 'camara ojo de pez', 'camara ip ', 1, 4, 150, '2019-07-03'),
(4, 'C62395255', 'DE-2CD2423G0-ID', 'video portero', 'color negra', 1, 3, 45, '2019-10-04'),
(5, 'C62395268', 'EF-2CD2423H1-IF', 'sensor', 'inalambrica', 1, 8, 20, '2019-10-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_prove` int(11) NOT NULL,
  `ruc` char(11) NOT NULL,
  `razon_social` varchar(30) NOT NULL,
  `telefono` char(9) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_prove`, `ruc`, `razon_social`, `telefono`, `correo`, `id_producto`, `fecha`) VALUES
(1, '2147483647', 'Emp Callhua', '987654321', 'callhua@gmail.com', 1, '2019-10-01'),
(2, '2147483647', 'Emp mi house', '987654324', 'mihouse@gmail.com', 2, '2019-09-02'),
(3, '2147483647', 'Impor  Medina', '987654389', 'importadoramedina@gmail.com', 3, '2019-07-03'),
(4, '2147483647', 'Emp electro hogar', '987654321', 'electrohogar@gmail.com', 4, '2019-10-04'),
(5, '2147483647', 'Emp verisure', '987654389', 'verisure@gmail.com', 1, '2019-10-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `descripcion_breve` varchar(60) NOT NULL,
  `costo_unitario` float NOT NULL,
  `id_clientes` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  `fecha_venta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `id_zona` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `zona` (`id_zona`, `nombre`) VALUES
(1, 'Mariano Melgar'),
(2, 'Miraflores'),
(3, 'Selva Alegre'),
(4, 'Paucarpata'),
(5, 'Cayma'),
(6, 'Cercado'),
(7, 'Hunter'),
(8, 'Socabaya'),
(9, 'Tiabaya'),
(10, 'JL Bustamante'),
(11, 'Cono Norte'),
(12, 'Mollendo'),
(13, 'Majes'),
(14, 'Camana');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id_almacen`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`id_asigna`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`),
  ADD KEY `id_zona` (`id_zona`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id_personal`),
  ADD KEY `id_asigna` (`id_asigna`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_marca` (`id_marca`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_prove`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_clientes` (`id_clientes`),
  ADD KEY `id_personal` (`id_personal`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`id_zona`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD CONSTRAINT `almacen_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`id_zona`),
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`id_asigna`) REFERENCES `asignacion` (`id_asigna`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_clientes`) REFERENCES `clientes` (`id_clientes`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`id_personal`) REFERENCES `personal` (`id_personal`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
