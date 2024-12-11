-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2024 a las 21:56:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tallermecanico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alertas`
--

CREATE TABLE `alertas` (
  `Alerta_id` int(11) NOT NULL,
  `Servicio_id` int(11) NOT NULL DEFAULT 0,
  `Mensaje_alerta` varchar(255) NOT NULL DEFAULT '',
  `Fecha_alerta` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alertas`
--

INSERT INTO `alertas` (`Alerta_id`, `Servicio_id`, `Mensaje_alerta`, `Fecha_alerta`) VALUES
(1, 0, 'Recordatorio: La cita de mantenimiento para el veh', '2024-12-09 11:55:35'),
(2, 0, 'Recordatorio: La cita de mantenimiento para el veh', '2024-12-09 11:58:58'),
(3, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 2 es dentro de menos de 24 horas.', '2024-12-09 12:03:27'),
(4, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 1 es dentro de menos de 24 horas.', '2024-12-09 12:11:35'),
(5, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 2 es dentro de menos de 24 horas.', '2024-12-09 12:12:50'),
(6, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 1 es dentro de menos de 24 horas.', '2024-12-09 12:16:27'),
(7, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 2 es dentro de menos de 24 horas.', '2024-12-09 12:20:26'),
(8, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 2 es dentro de menos de 24 horas.', '2024-12-09 12:28:51'),
(9, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 1 es dentro de menos de 24 horas.', '2024-12-09 12:32:06'),
(10, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 2 es dentro de menos de 24 horas.', '2024-12-09 12:39:21'),
(11, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 1 es dentro de menos de 24 horas.', '2024-12-09 12:42:42'),
(12, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 2 es dentro de menos de 24 horas.', '2024-12-09 14:13:00'),
(13, 0, 'Recordatorio: La cita de mantenimiento para el vehículo con el cliente 1 es dentro de menos de 24 horas.', '2024-12-09 14:52:53'),
(14, 0, 'Recordatorio: La cita de mantenimiento para el vehículo a nombre del usuario es dentro de menos de 24 horas.', '2024-12-09 15:00:34'),
(15, 0, 'Recordatorio: La cita de mantenimiento para el vehículo a nombre del usuario es dentro de menos de 24 horas.', '2024-12-09 15:02:19'),
(16, 0, 'Recordatorio: La cita de mantenimiento para el vehículo a nombre del usuario es dentro de menos de 24 horas.', '2024-12-09 15:47:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `Cita_id` int(11) NOT NULL,
  `Cliente_id` int(11) NOT NULL,
  `Vehiculo_id` int(11) NOT NULL,
  `Fecha_cita` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Estado_cita` char(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`Cita_id`, `Cliente_id`, `Vehiculo_id`, `Fecha_cita`, `Estado_cita`) VALUES
(1, 1, 1, '2024-12-01 13:40:00', 'Confirmada'),
(2, 2, 2, '2025-01-20 14:30:00', 'Confirmada'),
(6, 1, 1, '2024-12-13 10:00:00', 'Confirmada'),
(8, 2, 2, '2024-12-10 10:00:00', 'Confirmada'),
(9, 2, 2, '2024-12-10 11:30:00', 'Confirmada'),
(10, 1, 1, '2024-12-10 11:00:00', 'Confirmada'),
(11, 2, 2, '2024-12-10 11:00:00', 'Confirmada'),
(12, 1, 1, '2024-12-10 11:00:00', 'Confirmada'),
(13, 2, 2, '2024-12-10 10:00:00', 'Confirmada'),
(14, 2, 2, '2024-12-10 10:00:00', 'Confirmada'),
(15, 1, 1, '2024-12-10 10:00:00', 'Confirmada'),
(16, 2, 2, '2024-12-09 12:39:28', 'confirmada'),
(17, 1, 1, '2024-12-10 11:00:00', ''),
(18, 2, 2, '2024-12-10 12:00:00', ''),
(19, 1, 1, '2024-12-10 13:00:00', ''),
(20, 2, 2, '2024-12-10 13:30:00', ''),
(21, 1, 1, '2024-12-10 13:00:00', ''),
(22, 1, 1, '2024-12-10 13:00:00', ''),
(23, 1, 2, '2030-12-10 13:00:00', '');

--
-- Disparadores `citas`
--
DELIMITER $$
CREATE TRIGGER `alerta_mantenimiento_programado` AFTER INSERT ON `citas` FOR EACH ROW BEGIN
    -- Comprobar si la cita está programada 
    DECLARE alerta_message VARCHAR(255);
    IF TIMESTAMPDIFF(HOUR, NOW(), NEW.Fecha_cita) <= 24 THEN
        SET alerta_message = 'Recordatorio: La cita de mantenimiento para el vehículo a nombre del usuario es dentro de menos de 24 horas.';

        
        -- Insertar la alerta en la tabla de alertas 
        INSERT INTO alertas (Mensaje_alerta, Fecha_alerta)
        VALUES (alerta_message, NOW());
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Cliente_id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Cliente_id`, `Nombre`, `Apellido`, `Telefono`, `Direccion`, `Email`) VALUES
(1, 'Javier', 'Lopez', '3054231455', 'calle sur-29 ', 'javier05@gmail.com'),
(2, 'Karla', 'Gonzales', '1234567890', 'calle norte-b', 'karla@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_repuesto`
--

CREATE TABLE `compra_repuesto` (
  `Compra_id` int(11) NOT NULL,
  `Repuesto_id` int(11) NOT NULL,
  `Cantidad_comprada` int(11) NOT NULL,
  `Fecha_compra` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Proveedor` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra_repuesto`
--

INSERT INTO `compra_repuesto` (`Compra_id`, `Repuesto_id`, `Cantidad_comprada`, `Fecha_compra`, `Proveedor`) VALUES
(1, 1, 100, '2024-12-08 00:00:00', 'Industrias chinas.'),
(2, 2, 50, '2023-12-20 00:00:00', 'Monitos chinos'),
(36, 1, 10, '2014-12-11 00:00:00', 'Mi abuela'),
(38, 1, 20, '2024-12-11 15:47:25', 'Monitos chinos');

--
-- Disparadores `compra_repuesto`
--
DELIMITER $$
CREATE TRIGGER `actualizar_stock_compra_repuesto` AFTER INSERT ON `compra_repuesto` FOR EACH ROW BEGIN 
  UPDATE repuestos
  SET Cantidad = Cantidad + NEW.Cantidad_comprada
  WHERE Repuesto_id = NEW.Repuesto_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_garantias`
--

CREATE TABLE `historial_garantias` (
  `Garantia_id` int(11) NOT NULL,
  `Servicio_id` int(11) NOT NULL,
  `Repuesto_id` int(11) NOT NULL,
  `Fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_garantias`
--

INSERT INTO `historial_garantias` (`Garantia_id`, `Servicio_id`, `Repuesto_id`, `Fecha_vencimiento`) VALUES
(1, 1, 1, '2025-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_servicios`
--

CREATE TABLE `historial_servicios` (
  `Historial_id` int(11) NOT NULL,
  `Vehiculo_id` int(11) NOT NULL,
  `Servicio_id` int(11) NOT NULL,
  `Fecha_servicio` date NOT NULL,
  `Tipo_servicio` varchar(50) NOT NULL DEFAULT '',
  `Costo` decimal(20,6) NOT NULL DEFAULT 0.000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historial_servicios`
--

INSERT INTO `historial_servicios` (`Historial_id`, `Vehiculo_id`, `Servicio_id`, `Fecha_servicio`, `Tipo_servicio`, `Costo`) VALUES
(10, 1, 15, '0000-00-00', 'Cambio de motor', 100.000000),
(11, 2, 16, '0000-00-00', 'cambio de vidrio', 40.000000),
(12, 2, 17, '0000-00-00', 'Limpieza', 25.000000),
(13, 1, 18, '0000-00-00', 'Cambio de frenos', 150.000000),
(14, 3, 19, '0000-00-00', '', 0.000000),
(15, 3, 20, '0000-00-00', 'Instalacion del modo automatico', 500.000000),
(16, 1, 34, '0000-00-00', 'Remplazo de rueda', 0.000000),
(17, 2, 35, '0000-00-00', 'Cambio de pintura', 20.000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recordatorios_mantenimiento`
--

CREATE TABLE `recordatorios_mantenimiento` (
  `Recordatorio_id` int(11) NOT NULL,
  `Fecha_recordatorio` datetime NOT NULL,
  `Mensaje` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recordatorios_mantenimiento`
--

INSERT INTO `recordatorios_mantenimiento` (`Recordatorio_id`, `Fecha_recordatorio`, `Mensaje`) VALUES
(1, '2024-12-10 22:05:00', 'Recordatorio de mantenimiento programado'),
(2, '2024-12-10 22:06:00', 'Recordatorio de mantenimiento programado'),
(3, '2024-12-10 22:07:00', 'Recordatorio de mantenimiento programado'),
(4, '2024-12-10 22:08:00', 'Recordatorio de mantenimiento programado'),
(5, '2024-12-10 22:09:00', 'Recordatorio de mantenimiento programado'),
(6, '2024-12-10 22:10:00', 'Recordatorio de mantenimiento programado'),
(7, '2024-12-10 22:11:00', 'Recordatorio de mantenimiento programado'),
(8, '2024-12-10 22:12:00', 'Recordatorio de mantenimiento programado'),
(9, '2024-12-11 14:25:00', 'Recordatorio de mantenimiento programado'),
(10, '2024-12-11 14:26:00', 'Recordatorio de mantenimiento programado'),
(11, '2024-12-11 14:27:00', 'Recordatorio de mantenimiento programado'),
(12, '2024-12-11 14:28:00', 'Recordatorio de mantenimiento programado'),
(13, '2024-12-11 15:56:00', 'Recordatorio de mantenimiento programado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparaciones`
--

CREATE TABLE `reparaciones` (
  `Reparacion_id` int(11) NOT NULL,
  `Vehiculo_id` int(11) NOT NULL,
  `Servicio_id` int(11) NOT NULL,
  `Fecha_reparacion` date NOT NULL,
  `Costo` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `Estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reparaciones`
--

INSERT INTO `reparaciones` (`Reparacion_id`, `Vehiculo_id`, `Servicio_id`, `Fecha_reparacion`, `Costo`, `Estado`) VALUES
(3, 1, 18, '2024-12-10', 150.000000, 'En progreso'),
(4, 3, 20, '2020-12-31', 500.000000, 'En progreso'),
(5, 1, 1, '2024-12-12', 30.000000, 'Pendiente'),
(6, 2, 16, '2024-12-09', 20.000000, 'En progreso'),
(7, 1, 18, '2024-12-09', 40.000000, 'En progreso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_servicios`
--

CREATE TABLE `reporte_servicios` (
  `Reporte_id` int(11) NOT NULL,
  `Servicio_id` int(11) NOT NULL,
  `Vehiculo_id` int(11) NOT NULL,
  `Fecha_reporte` date NOT NULL,
  `Descripcion` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reporte_servicios`
--

INSERT INTO `reporte_servicios` (`Reporte_id`, `Servicio_id`, `Vehiculo_id`, `Fecha_reporte`, `Descripcion`) VALUES
(55, 18, 1, '2024-12-10', 'Cambio de frenos'),
(118, 18, 1, '2024-12-10', 'Cambio de frenos'),
(119, 34, 1, '2024-12-10', 'Remplazo de ruedas'),
(120, 35, 2, '2024-12-10', 'Cambio de pintura'),
(121, 18, 1, '2024-12-10', 'Cambio de frenos'),
(122, 34, 1, '2024-12-10', 'Remplazo de ruedas'),
(123, 35, 2, '2024-12-10', 'Cambio de pintura'),
(124, 18, 1, '2024-12-10', 'Cambio de frenos'),
(125, 34, 1, '2024-12-10', 'Remplazo de ruedas'),
(126, 35, 2, '2024-12-10', 'Cambio de pintura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repuestos`
--

CREATE TABLE `repuestos` (
  `Repuesto_id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL DEFAULT '',
  `Cantidad` int(11) NOT NULL,
  `Precio` decimal(20,6) NOT NULL DEFAULT 0.000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `repuestos`
--

INSERT INTO `repuestos` (`Repuesto_id`, `Nombre`, `Cantidad`, `Precio`) VALUES
(1, 'LLanta', 96, 20.000000),
(2, 'Freno', 71, 18.000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segumiento_citas`
--

CREATE TABLE `segumiento_citas` (
  `Seguimiento_id` int(11) NOT NULL,
  `Cita_id` int(11) NOT NULL,
  `Fecha_seguimiento` date NOT NULL,
  `Estado_final` char(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `segumiento_citas`
--

INSERT INTO `segumiento_citas` (`Seguimiento_id`, `Cita_id`, `Fecha_seguimiento`, `Estado_final`) VALUES
(1, 1, '2024-12-10', 'Completada'),
(2, 2, '2024-12-10', 'Completada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Servicio_id` int(11) NOT NULL,
  `Vehiculo_id` int(11) NOT NULL,
  `Fecha_servicio` date NOT NULL,
  `Tipo_servicio` varchar(50) NOT NULL DEFAULT '',
  `Costo` decimal(20,6) NOT NULL DEFAULT 0.000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`Servicio_id`, `Vehiculo_id`, `Fecha_servicio`, `Tipo_servicio`, `Costo`) VALUES
(1, 1, '2024-12-25', 'Limpieza', 20.000000),
(2, 2, '2025-10-28', 'Cambio de motor', 60.000000),
(15, 1, '2025-10-31', 'Cambio de motor', 100.000000),
(16, 2, '2026-05-05', 'cambio de vidrio', 40.000000),
(17, 2, '2027-12-31', 'Limpieza', 25.000000),
(18, 1, '2024-12-10', 'Cambio de frenos', 150.000000),
(19, 3, '2020-12-31', 'Instalacion del modo automatico', 500.000000),
(20, 3, '2020-12-31', 'Instalacion del modo automatico', 500.000000),
(34, 1, '2024-12-10', 'Remplazo de ruedas', 15.000000),
(35, 2, '2024-12-10', 'Cambio de pintura', 20.000000);

--
-- Disparadores `servicios`
--
DELIMITER $$
CREATE TRIGGER `registrar_historial_servicio` AFTER INSERT ON `servicios` FOR EACH ROW BEGIN
    -- Insertar el servicio en el historial de servicios
    INSERT INTO Historial_Servicios (Vehiculo_id, Servicio_id, Tipo_servicio, Costo)
    VALUES (NEW.Vehiculo_id, NEW.Servicio_id, NEW.Tipo_servicio, NEW.Costo);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_log`
--

CREATE TABLE `tabla_log` (
  `log_id` int(11) NOT NULL,
  `repuesto_id` int(11) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_log`
--

INSERT INTO `tabla_log` (`log_id`, `repuesto_id`, `proveedor`, `fecha`) VALUES
(4, 2, 'Owen', '2024-12-11 15:41:58'),
(5, 1, 'santiago de la realeza', '2024-12-11 15:42:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usos_repuestos`
--

CREATE TABLE `usos_repuestos` (
  `Uso_id` int(11) NOT NULL,
  `Reparacion_id` int(11) NOT NULL,
  `Repuesto_id` int(11) NOT NULL,
  `Cantidad_usadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usos_repuestos`
--

INSERT INTO `usos_repuestos` (`Uso_id`, `Reparacion_id`, `Repuesto_id`, `Cantidad_usadas`) VALUES
(46, 3, 2, 10),
(48, 4, 2, 10);

--
-- Disparadores `usos_repuestos`
--
DELIMITER $$
CREATE TRIGGER `actualizar_stock_usos_repuestos` AFTER INSERT ON `usos_repuestos` FOR EACH ROW BEGIN 
  UPDATE repuestos 
  SET Cantidad = Cantidad - NEW.Cantidad_usadas
  WHERE Repuesto_id = NEW.Repuesto_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `registro_exitoso` AFTER INSERT ON `usos_repuestos` FOR EACH ROW BEGIN 
  UPDATE repuestos 
  SET Cantidad = Cantidad - NEW.Cantidad_usadas
  WHERE Repuesto_id = NEW.Repuesto_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `Vehiculo_id` int(11) NOT NULL,
  `Cliente_id` int(11) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Placa` varchar(50) NOT NULL,
  `Pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`Vehiculo_id`, `Cliente_id`, `Marca`, `Modelo`, `Placa`, `Pais`) VALUES
(1, 1, 'Toyota', '2022', 'XVX-202', 'Japon'),
(2, 2, 'Tesla', '2023', 'TLS-101', 'Estados unidos'),
(3, 1, 'Toyota', 'Corolla', 'ABC123', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alertas`
--
ALTER TABLE `alertas`
  ADD PRIMARY KEY (`Alerta_id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`Cita_id`),
  ADD KEY `FK_citas_clientes` (`Cliente_id`),
  ADD KEY `FK_citas_vehiculos` (`Vehiculo_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Cliente_id`);

--
-- Indices de la tabla `compra_repuesto`
--
ALTER TABLE `compra_repuesto`
  ADD PRIMARY KEY (`Compra_id`),
  ADD KEY `FK_compra_repuesto_repuestos` (`Repuesto_id`);

--
-- Indices de la tabla `historial_garantias`
--
ALTER TABLE `historial_garantias`
  ADD PRIMARY KEY (`Garantia_id`),
  ADD KEY `FK_historial_garantias_servicios` (`Servicio_id`),
  ADD KEY `FK_historial_garantias_repuestos` (`Repuesto_id`);

--
-- Indices de la tabla `historial_servicios`
--
ALTER TABLE `historial_servicios`
  ADD PRIMARY KEY (`Historial_id`),
  ADD KEY `FK_historial_servicios_vehiculos` (`Vehiculo_id`),
  ADD KEY `FK_historial_servicios_servicios` (`Servicio_id`);

--
-- Indices de la tabla `recordatorios_mantenimiento`
--
ALTER TABLE `recordatorios_mantenimiento`
  ADD PRIMARY KEY (`Recordatorio_id`);

--
-- Indices de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD PRIMARY KEY (`Reparacion_id`),
  ADD KEY `FK_reparaciones_vehiculos` (`Vehiculo_id`),
  ADD KEY `FK_reparaciones_servicios` (`Servicio_id`);

--
-- Indices de la tabla `reporte_servicios`
--
ALTER TABLE `reporte_servicios`
  ADD PRIMARY KEY (`Reporte_id`),
  ADD KEY `FK_reporte_servicios_servicios` (`Servicio_id`),
  ADD KEY `FK_reporte_servicios_vehiculos` (`Vehiculo_id`);

--
-- Indices de la tabla `repuestos`
--
ALTER TABLE `repuestos`
  ADD PRIMARY KEY (`Repuesto_id`);

--
-- Indices de la tabla `segumiento_citas`
--
ALTER TABLE `segumiento_citas`
  ADD PRIMARY KEY (`Seguimiento_id`),
  ADD KEY `FK_segumiento_citas_citas` (`Cita_id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Servicio_id`),
  ADD KEY `FK_servicios_vehiculos` (`Vehiculo_id`);

--
-- Indices de la tabla `tabla_log`
--
ALTER TABLE `tabla_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indices de la tabla `usos_repuestos`
--
ALTER TABLE `usos_repuestos`
  ADD PRIMARY KEY (`Uso_id`),
  ADD KEY `FK_usos_repuestos_reparaciones` (`Reparacion_id`),
  ADD KEY `FK_usos_repuestos_repuestos` (`Repuesto_id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`Vehiculo_id`),
  ADD KEY `FK_vehiculos_clientes` (`Cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alertas`
--
ALTER TABLE `alertas`
  MODIFY `Alerta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `Cita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra_repuesto`
--
ALTER TABLE `compra_repuesto`
  MODIFY `Compra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `historial_garantias`
--
ALTER TABLE `historial_garantias`
  MODIFY `Garantia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historial_servicios`
--
ALTER TABLE `historial_servicios`
  MODIFY `Historial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `recordatorios_mantenimiento`
--
ALTER TABLE `recordatorios_mantenimiento`
  MODIFY `Recordatorio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  MODIFY `Reparacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `reporte_servicios`
--
ALTER TABLE `reporte_servicios`
  MODIFY `Reporte_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `repuestos`
--
ALTER TABLE `repuestos`
  MODIFY `Repuesto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `segumiento_citas`
--
ALTER TABLE `segumiento_citas`
  MODIFY `Seguimiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `Servicio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `tabla_log`
--
ALTER TABLE `tabla_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usos_repuestos`
--
ALTER TABLE `usos_repuestos`
  MODIFY `Uso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `Vehiculo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `FK_citas_clientes` FOREIGN KEY (`Cliente_id`) REFERENCES `clientes` (`Cliente_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_citas_vehiculos` FOREIGN KEY (`Vehiculo_id`) REFERENCES `vehiculos` (`Vehiculo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra_repuesto`
--
ALTER TABLE `compra_repuesto`
  ADD CONSTRAINT `FK_compra_repuesto_repuestos` FOREIGN KEY (`Repuesto_id`) REFERENCES `repuestos` (`Repuesto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `historial_garantias`
--
ALTER TABLE `historial_garantias`
  ADD CONSTRAINT `FK_historial_garantias_repuestos` FOREIGN KEY (`Repuesto_id`) REFERENCES `repuestos` (`Repuesto_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_historial_garantias_servicios` FOREIGN KEY (`Servicio_id`) REFERENCES `servicios` (`Servicio_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `historial_servicios`
--
ALTER TABLE `historial_servicios`
  ADD CONSTRAINT `FK_historial_servicios_servicios` FOREIGN KEY (`Servicio_id`) REFERENCES `servicios` (`Servicio_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_historial_servicios_vehiculos` FOREIGN KEY (`Vehiculo_id`) REFERENCES `vehiculos` (`Vehiculo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD CONSTRAINT `FK_reparaciones_servicios` FOREIGN KEY (`Servicio_id`) REFERENCES `servicios` (`Servicio_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte_servicios`
--
ALTER TABLE `reporte_servicios`
  ADD CONSTRAINT `FK_reporte_servicios_servicios` FOREIGN KEY (`Servicio_id`) REFERENCES `servicios` (`Servicio_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_reporte_servicios_vehiculos` FOREIGN KEY (`Vehiculo_id`) REFERENCES `vehiculos` (`Vehiculo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `segumiento_citas`
--
ALTER TABLE `segumiento_citas`
  ADD CONSTRAINT `FK_segumiento_citas_citas` FOREIGN KEY (`Cita_id`) REFERENCES `citas` (`Cita_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `FK_servicios_vehiculos` FOREIGN KEY (`Vehiculo_id`) REFERENCES `vehiculos` (`Vehiculo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usos_repuestos`
--
ALTER TABLE `usos_repuestos`
  ADD CONSTRAINT `FK_usos_repuestos_reparaciones` FOREIGN KEY (`Reparacion_id`) REFERENCES `reparaciones` (`Reparacion_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_usos_repuestos_repuestos` FOREIGN KEY (`Repuesto_id`) REFERENCES `repuestos` (`Repuesto_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `FK_vehiculos_clientes` FOREIGN KEY (`Cliente_id`) REFERENCES `clientes` (`Cliente_id`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Eventos
--
CREATE DEFINER=`root`@`localhost` EVENT `reporte_diario_servicios` ON SCHEDULE EVERY 1 MINUTE STARTS '2024-12-10 12:30:16' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    -- Suponiendo que hay una tabla 'servicios' con campos como 'id_servicio', 'vehiculo_id', 'fecha_servicio', 'descripcion'
    -- Vamos a generar un reporte con todos los servicios realizados hoy.

    INSERT INTO reporte_servicios (Servicio_id, Vehiculo_id, Fecha_reporte, Descripcion)
    
	 SELECT Servicio_id, Vehiculo_id, CURDATE(), Tipo_servicio
    FROM servicios
    WHERE Fecha_servicio = CURDATE();

END$$

CREATE DEFINER=`root`@`localhost` EVENT `actualizar_estado_reparaciones` ON SCHEDULE EVERY 1 MINUTE STARTS '2024-12-10 14:47:38' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN 
  UPDATE reparaciones
  SET Estado = 'En progreso'
  WHERE Estado = 'Pendiente' AND Fecha_reparacion <= CURDATE() - INTERVAL 1 DAY;
END$$

CREATE DEFINER=`root`@`localhost` EVENT `recordatorio_mantenimiento` ON SCHEDULE EVERY 1 MINUTE STARTS '2024-12-10 08:43:00' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO recordatorios_mantenimiento (Fecha_recordatorio, Mensaje)
  VALUES (NOW(), 'Recordatorio de mantenimiento programado')$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
