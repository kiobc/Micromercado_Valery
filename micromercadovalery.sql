-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2022 a las 06:40:00
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `micromercadovalery`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_cliente`
--

CREATE TABLE `table_cliente` (
  `idCliente` int(11) NOT NULL,
  `Nombre_Cliente` varchar(45) NOT NULL,
  `Apellido_Cliente` varchar(45) NOT NULL,
  `razon_s_Cliente` varchar(200) NOT NULL,
  `ruc_Cliente` varchar(20) NOT NULL,
  `direccion_Cliente` varchar(100) NOT NULL,
  `telefono_Cliente` varchar(20) NOT NULL,
  `correo_Cliente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_cliente`
--

INSERT INTO `table_cliente` (`idCliente`, `Nombre_Cliente`, `Apellido_Cliente`, `razon_s_Cliente`, `ruc_Cliente`, `direccion_Cliente`, `telefono_Cliente`, `correo_Cliente`) VALUES
(1, 'Raul', 'Cespedes', '', '', 'av barzenas', '932431233', 'rcespedes@gmail.com'),
(2, 'micaela', 'ortiz serrano', 'ABC Studios', '54784512452', 'av garcilaso', '983651245', 'mica@gmail.com'),
(3, 'darwin', 'pato pato', 'JHT', '45745845855', 'av. prado alto', '986547125', 'cuacua@gmail.com'),
(4, 'jon', 'fuentes aguirre', 'OHL', '20564323293', 'av. panamericana', '987456123', 'jon@gmail.com'),
(5, 'Brayan', 'Calderon', 'UTC', '05038834641', 'salto', '0987897528', 'kiobc@hotmail.com'),
(6, 'Luis', 'Cadme', 'utc', '51122550001', 'puyo', '098523365', 'cadme@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_facturas`
--

CREATE TABLE `table_facturas` (
  `No_Facturas` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `totals` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_facturas`
--

INSERT INTO `table_facturas` (`No_Facturas`, `cliente`, `fecha`, `totals`) VALUES
(1, 1, '2021-10-15', 50),
(2, 1, '2021-10-15', 54),
(3, 1, '2021-10-15', 40),
(5, 2, '2021-10-15', 190),
(6, 2, '2021-10-15', 190),
(7, 2, '2021-10-15', 190),
(8, 2, '2021-10-15', 80),
(9, 1, '2021-10-15', 101),
(10, 2, '2021-10-15', 42),
(11, 2, '2021-10-15', 65),
(12, 2, '2021-10-15', 134),
(13, 1, '2021-10-15', 79),
(14, 2, '2021-10-15', 55),
(15, 3, '2021-10-15', 45),
(16, 3, '2021-10-15', 36),
(17, 2, '2021-10-15', 150),
(18, 2, '2021-10-15', 108),
(19, 1, '2021-10-15', 36),
(20, 4, '2021-10-17', 35),
(21, 4, '2021-10-17', 38),
(22, 4, '2021-10-17', 0),
(23, 4, '2021-10-17', 20),
(24, 4, '2021-10-18', 101),
(25, 4, '2021-10-18', 18),
(26, 3, '2021-10-18', 38),
(27, 2, '2016-10-18', 18),
(28, 3, '2022-01-30', 15),
(29, 6, '2022-01-30', 50),
(31, 5, '2022-05-02', 178),
(32, 5, '2022-05-02', 178),
(33, 5, '2022-05-02', 178),
(34, 5, '2022-05-02', 178),
(35, 5, '2022-05-02', 78);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_guia_remision`
--

CREATE TABLE `table_guia_remision` (
  `id_guia` int(11) NOT NULL,
  `punto_par` varchar(50) NOT NULL,
  `punto_lle` varchar(50) NOT NULL,
  `fecha_traslado` date NOT NULL,
  `costo_min` int(10) NOT NULL,
  `nom_empresa_transportes` varchar(100) NOT NULL,
  `ruc_empresa_transportes` varchar(50) NOT NULL,
  `marca_num_placa` varchar(50) NOT NULL,
  `nro_cons_inscripcion` varchar(50) NOT NULL,
  `nro_lic_conductor` varchar(50) NOT NULL,
  `tipo_num_comp_pago` varchar(50) NOT NULL,
  `orden_compra` varchar(50) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_guia_remision`
--

INSERT INTO `table_guia_remision` (`id_guia`, `punto_par`, `punto_lle`, `fecha_traslado`, `costo_min`, `nom_empresa_transportes`, `ruc_empresa_transportes`, `marca_num_placa`, `nro_cons_inscripcion`, `nro_lic_conductor`, `tipo_num_comp_pago`, `orden_compra`, `cliente`) VALUES
(1, 'av panamericana', 'Quito', '2021-10-20', 19, 'etecsa', '1321312', 'toyota hylux', '13132', '12321', 'recibo', '12', 1),
(2, 'av panamericana', 'av barzenas', '2021-10-16', 38, 'Amaguaña', '123132123', 'hyundai 42432432', '121234', '43242234', 'boleta 32131', '', 1),
(3, '', '', '2021-10-20', 9, '', '', '', '', '', '', '', 0),
(4, '', '', '2021-10-16', 0, '', '', '', '', '', '', '', 3),
(5, '', '', '2021-10-16', 0, '', '', '', '', '', '', '', 2),
(6, '', '', '2021-10-16', 0, '', '', '', '', '', '', '', 1),
(7, '', '', '2021-10-09', 0, '', '', '', '', '', '', '', 3),
(8, '', '', '2021-10-17', 0, '', '', '', '', '', '', '', 4),
(9, 'Quito', 'Sangolqui', '2021-10-12', 0, '', '', '', '', '', '', '', 3),
(10, 'Quito', 'Sangolqui', '2021-10-14', 0, '', '', '', '', '', '', '', 4),
(11, 'Quito', 'Sangolqui', '2021-10-08', 0, '', '', '', '', '', '', '', 3),
(12, 'Quito', 'Sangolqui', '2021-10-17', 0, '', '', '', '', '', '', '', 4),
(13, '', '', '2022-05-04', 0, '', '', '', '', '', '', '', 5),
(14, 'Latacunga', 'Quito', '2022-05-10', 0, '', '', '', '', '', '', '', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_productos`
--

CREATE TABLE `table_productos` (
  `idProductos` int(10) NOT NULL,
  `nombreProductos` varchar(45) NOT NULL,
  `preciosProductos` float NOT NULL,
  `descripcionProductos` varchar(200) NOT NULL,
  `cantidadProductos` int(11) NOT NULL,
  `preciocompraProductos` float NOT NULL,
  `Difererencia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_productos`
--

INSERT INTO `table_productos` (`idProductos`, `nombreProductos`, `preciosProductos`, `descripcionProductos`, `cantidadProductos`, `preciocompraProductos`, `Difererencia`) VALUES
(1, 'Arroz Envejecido', 18, 'Arroba', 8, 10, 8),
(2, 'Arroz Envejecido', 18, 'Quintal', -4, 10, 8),
(3, 'Arroz Envejecido', 18, 'Libras', 9, 10, 8),
(4, 'Naranjas', 18, 'kilos', 8, 10, 8),
(5, 'Uvas', 15, 'Racimos', 6, 8, 7),
(6, 'Peras', 20, 'Kilos	', 6, 20, 0),
(7, 'Leche', 15, 'Litro', 4, 8, 7),
(8, 'Queso', 25, 'Grande', 3, 15, 10),
(9, 'Queso', 20, 'Mediano', -3, 12, 8),
(10, 'Queso', 20, 'Pequeño', 2, 12, 8),
(11, 'Yogurth', 10, 'Pequeño', 4, 4, 6),
(12, 'Yogurth', 10, 'Litro', 1, 3.5, 6.5),
(13, 'Yogurth', 10, 'Galón', 5, 3.5, 6.5),
(14, 'Fideos corbatin', 25, 'Funda', 5, 14, 11),
(15, 'Tallarin', 350, 'Funda', 5, 80, 270),
(16, 'Lenteja', 12, 'Funda', 5, 6, 6),
(17, 'Salchicha', 12, 'Funda', 5, 6, 6),
(18, 'Mortadela', 12, 'Funda', 5, 6, 6),
(19, 'Tomates', 5, 'kilo', 5, 1.5, 3.5),
(20, 'Cebolla', 4, 'kilo', 5, 1.5, 2.5),
(21, 'Gaseosas', 4, 'Personales', 5, 1.5, 2.5),
(22, 'Gaseosas', 10, 'Un Litro', 5, 4, 6),
(23, 'Gaseosa', 4, 'Tres Litros ', 5, 2, 2),
(24, 'Huevos', 15, 'Cubeta', 5, 7, 8),
(25, 'Aceite', 6, 'Litro', 5, 3, 3),
(26, 'Cloro', 6, 'funda', 5, 3, 3),
(27, 'Cloro', 6, 'Galón', 5, 3, 3),
(28, 'Jabon', 6, 'Barra', 5, 3, 3),
(29, 'Jabon', 5, 'Liquido', 5, 4, 1),
(30, 'Esponja', 5, 'Unidades', 5, 2, 3),
(31, 'Detergente', 5, 'Funda 1 kilo', 5, 2, 3),
(32, 'Detergente', 1, '3 kilos', 5, 0.5, 0),
(33, 'Detergente', 2, '5 kilos', 5, 1, 0),
(34, ' Shampoo', 2, 'Sachet', 5, 1, 1),
(35, 'Shampoo', 2.5, 'Botella', 5, 1, 1.5),
(36, 'Gel', 2.5, 'Sachet', 5, 1, 1.5),
(37, 'Gel', 2.5, 'Frasco', 5, 1, 0),
(38, 'Fundas de Basura', 2.5, 'Grande', 5, 1, 1.5),
(39, 'Fundas de Basura', 4, 'Extra grande', 5, 1.5, 0),
(40, 'Fundas de basura', 4, 'Industrial', 5, 1.5, 0),
(41, 'Guantes de caucho', 5, 'Par	', 5, 2, 3),
(42, 'Mascarilla', 5, 'pauqete', 5, 2, 3),
(43, 'Mascarilla ', 7, 'unidad', 5, 3, 4),
(44, 'Papel higienico', 7, 'Paquete', 5, 3, 4),
(45, 'Papel higienico', 5, 'Unidad', 5, 2, 3),
(46, 'Enjuague Bucal', 5, 'Botella', 5, 2, 3),
(47, 'Escoba', 5, 'Unidad', 5, 2.5, 2.5),
(48, 'Cepillo de dientes', 5, 'Unidad', 5, 2.5, 0),
(49, 'Cepillo de lavar', 3, 'Unidad', 3, 1, 2),
(50, 'Pasta de dientes', 3, 'Unidad', 5, 1, 2),
(51, 'Papas', 4, 'Kilos', 5, 1.5, 0),
(52, 'Papas', 5, 'Quintal', 5, 2.4, 0),
(53, 'Zanahoria', 23, 'Kilo', 3, 13, 10),
(54, 'Lechuga', 7, 'Unidad', 3, 2.5, 4.5),
(55, 'Col', 25, 'Unidad', 5, 14, 11),
(56, 'Arveja', 12, 'Funda', 5, 6, 6),
(57, 'Haba', 15, 'funda', 5, 7, 8),
(58, 'Manzana', 14, 'Kilos', 5, 7, 7),
(59, 'Fresas', 5, 'Funda', 5, 2.5, 2.5),
(60, 'Piña', 5, 'Unidad', 5, 5, 0),
(61, 'Brocoli', 28, 'Unidad', 5, 15, 13),
(62, 'Aguacate', 30, 'kilo', 5, 30, 0),
(63, 'Pimiento', 15, 'Unidad', 5, 8, 7),
(64, 'Ajo', 23, 'Funda', 5, 13, 10),
(65, 'Pepino', 15, 'unidad', 5, 7, 8),
(66, 'Remolacha', 28, 'funda', 4, 16, 12),
(67, 'Maiz', 20, 'Unidad', 5, 8, 12),
(68, 'Platano', 5, 'Racimo', 2, 1.5, 3.5),
(69, 'Papaya', 12, 'unidad', 5, 6, 6),
(70, 'Limones', 28, 'Pequeños', 5, 28, 0),
(71, 'Limones', 20, 'Maduros', 5, 12, 0),
(72, 'Verde', 15, 'Racimo', 5, 7, 8),
(73, 'Maduro', 20, 'Racimo', 5, 12, 8),
(74, 'Sandía', 15, 'unidad', 5, 8, 7),
(75, 'uvilla', 12, 'funda', 2, 4, 8),
(76, 'papas fritas', 25, 'funda pequeña', 5, 10, 0),
(77, 'papas fritas', 25, 'funda mediana', 5, 13, 12),
(78, 'papas fritas', 15, 'funda grande', 4, 5, 10),
(79, 'chitos', 65, 'funda grande', 5, 35, 30),
(80, 'Chifles', 40, 'funda pequeña', 5, 25, 15),
(81, 'chifles ', 30, 'Funda grande', 5, 12, 18),
(82, 'Salsa de tomate', 60, 'sachet', 5, 30, 30),
(83, 'Salsa de tomate', 25, 'galon', 5, 12, 13),
(84, 'Mayonesa', 80, 'sachet', 5, 55, 25),
(85, 'Mayonesa', 60, 'galon', 5, 35, 0),
(86, 'Mostaza', 65, 'sachet', 5, 35, 30),
(87, 'Chocolate', 140, 'funda', 5, 80, 60),
(88, 'Café', 120, 'Frasco', 5, 60, 60),
(89, 'Café', 180, 'Funda', 5, 100, 80),
(90, 'Cocoa', 15, 'funda pequeña', 5, 10, 5),
(91, 'Cocoa', 15, 'funda grande', 5, 10, 5),
(92, 'Galletas', 4, 'funda pequeña', 5, 1, 3),
(93, 'Galletas de chocolate', 20, 'funda pequeña', 5, 10, 10),
(94, 'Cereales', 10, 'Carton', 5, 4, 0),
(95, 'Caramelos', 10, 'funda', 5, 4, 6),
(96, 'Jugo natural', 10, 'botella pequeña', 5, 4, 6),
(97, 'Jugo natural', 28, '1 Litro', 5, 16, 12),
(98, 'Jugo Natural', 28, 'Galon', 5, 16, 12),
(99, 'Bebida Energizante', 28, 'botella', 5, 16, 12),
(100, 'Chupetes', 28, 'funda', 5, 16, 12),
(101, 'Agua', 20, 'con gas', 4, 10, 10),
(103, 'Agua', 3.5, 'sin gas', 4, 1.6, 1.9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_ventas`
--

CREATE TABLE `table_ventas` (
  `idVentas` int(11) NOT NULL,
  `No_Facturas` int(11) NOT NULL,
  `Productos` int(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_ventas`
--

INSERT INTO `table_ventas` (`idVentas`, `No_Facturas`, `Productos`, `cantidad`, `importe`) VALUES
(1, 1, 3, 2, 36),
(2, 1, 54, 2, 14),
(3, 2, 3, 3, 54),
(4, 3, 9, 2, 40),
(5, 8, 4, 3, 54),
(6, 8, 49, 2, 6),
(7, 8, 101, 1, 20),
(8, 12, 1, 2, 36),
(9, 12, 2, 4, 80),
(10, 12, 3, 2, 12),
(11, 13, 1, 2, 50),
(12, 13, 2, 1, 18),
(13, 13, 3, 1, 5),
(14, 14, 1, 1, 15),
(15, 14, 2, 6, 30),
(16, 14, 3, 2, 10),
(17, 15, 5, 3, 45),
(18, 16, 1, 2, 36),
(19, 18, 1, 1, 18),
(20, 18, 8, 2, 50),
(21, 18, 10, 2, 40),
(22, 19, 4, 2, 36),
(23, 20, 5, 1, 15),
(24, 20, 12, 2, 20),
(25, 21, 6, 1, 20),
(26, 21, 3, 1, 18),
(27, 23, 6, 1, 20),
(28, 24, 53, 2, 46),
(29, 24, 75, 3, 36),
(30, 24, 68, 3, 15),
(31, 24, 103, 1, 4),
(32, 25, 2, 1, 18),
(33, 26, 11, 1, 10),
(34, 26, 66, 1, 28),
(35, 27, 1, 1, 18),
(36, 28, 7, 1, 15),
(37, 29, 1, 5, 50),
(38, 31, 1, 1, 18),
(39, 31, 2, 6, 120),
(40, 31, 9, 2, 40),
(41, 34, 1, 1, 18),
(42, 34, 2, 6, 120),
(43, 34, 9, 2, 40),
(44, 35, 1, 1, 18),
(45, 35, 6, 2, 40),
(46, 35, 12, 2, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pasword` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `pasword`, `tipo`, `nombres`, `apellidos`, `dni`, `telefono`) VALUES
(1, 'admin', 'admin', 'Administrador', 'Brayan', 'Calderón', 503883464, 987897528),
(2, 'root', 'root', 'Administrador', 'Cristian', 'Iza', 0, 979159451);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_cliente`
--
ALTER TABLE `table_cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `idCliente_UNIQUE` (`idCliente`);

--
-- Indices de la tabla `table_facturas`
--
ALTER TABLE `table_facturas`
  ADD PRIMARY KEY (`No_Facturas`),
  ADD UNIQUE KEY `No_Facturas_UNIQUE` (`No_Facturas`),
  ADD KEY `llavesForaneas_Cliente_idx` (`cliente`);

--
-- Indices de la tabla `table_guia_remision`
--
ALTER TABLE `table_guia_remision`
  ADD PRIMARY KEY (`id_guia`);

--
-- Indices de la tabla `table_productos`
--
ALTER TABLE `table_productos`
  ADD PRIMARY KEY (`idProductos`),
  ADD UNIQUE KEY `idtProductos_UNIQUE` (`idProductos`);

--
-- Indices de la tabla `table_ventas`
--
ALTER TABLE `table_ventas`
  ADD PRIMARY KEY (`idVentas`),
  ADD UNIQUE KEY `idVentas_UNIQUE` (`idVentas`),
  ADD KEY `llavesForaneas_Facturas_idx` (`No_Facturas`),
  ADD KEY `llavesForaneas_Productos_idx` (`Productos`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_cliente`
--
ALTER TABLE `table_cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `table_facturas`
--
ALTER TABLE `table_facturas`
  MODIFY `No_Facturas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `table_guia_remision`
--
ALTER TABLE `table_guia_remision`
  MODIFY `id_guia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `table_productos`
--
ALTER TABLE `table_productos`
  MODIFY `idProductos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `table_ventas`
--
ALTER TABLE `table_ventas`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `table_facturas`
--
ALTER TABLE `table_facturas`
  ADD CONSTRAINT `table_Facturas_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `table_cliente` (`idCliente`);

--
-- Filtros para la tabla `table_ventas`
--
ALTER TABLE `table_ventas`
  ADD CONSTRAINT `table_Ventas_ibfk_1` FOREIGN KEY (`Productos`) REFERENCES `table_productos` (`idProductos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
