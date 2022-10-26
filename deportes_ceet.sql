-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2022 a las 22:17:31
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deportes_ceet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendiz` (
  `identificación` int(100) NOT NULL,
  `Primer nombre` varchar(100) NOT NULL,
  `Segundo nombre` varchar(100) NOT NULL,
  `Primer apellido` varchar(100) NOT NULL,
  `Segundo apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aprendiz`
--

INSERT INTO `aprendiz` (`identificación`, `Primer nombre`, `Segundo nombre`, `Primer apellido`, `Segundo apellido`, `correo`, `contraseña`, `rol`) VALUES
(1028781698, 'Sergio', 'Andres', 'Gonzalez', 'Cruz', 'sagonzalez89@misena.edu.co', 'sagonzalez89', 'admin'),
(1030525227, 'Erick', 'Andres Felipe', 'Quiñones', 'Fonseca', 'eaquinones7@misena.edu.co', 'eaquinones7', 'admin'),
(1030532100, 'Duvan', 'Adey', 'Noguera', 'Bocachica', 'danoguera00@misena.edu.co', 'danoguera00', 'admin'),
(1032358488, 'wilmer', 'ivan', 'Rodriguez', 'Paez', 'wirodriguez7@misena.edu.co', 'wirodriguez7', 'admin'),
(1032797900, 'Juan', 'Daniel', 'Hernandez', 'Moreno', 'jdhernandez0097@misena.edu.co', 'jdhernandez0097', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ID_Ciudad` int(11) NOT NULL,
  `Nombre_Ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`ID_Ciudad`, `Nombre_Ciudad`) VALUES
(1, 'Bogota'),
(2, 'Cali'),
(3, 'Medellin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `ID_Deportes` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Inscripcion` varchar(100) NOT NULL,
  `Fecha_de_ingreso` date NOT NULL,
  `ID_Aprendices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`ID_Deportes`, `Nombre`, `Inscripcion`, `Fecha_de_ingreso`, `ID_Aprendices`) VALUES
(1, 'Futbol', '1', '2022-05-10', 1),
(2, 'Ping Pong', '1', '2022-05-10', 2),
(3, 'Baloncesto', '1', '2022-05-10', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `ID_Noticias` int(11) NOT NULL,
  `Invitacion` int(11) NOT NULL,
  `Campeonato` varchar(100) NOT NULL,
  `Inscripcion` int(11) NOT NULL,
  `ID_Deportes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`ID_Noticias`, `Invitacion`, `Campeonato`, `Inscripcion`, `ID_Deportes`) VALUES
(1, 1, 'Futbol', 1, 1),
(2, 1, 'Ping Pong', 1, 2),
(3, 1, 'Baloncesto', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `ID_Sede` int(11) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `ID_Ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`ID_Sede`, `Telefono`, `ID_Ciudad`) VALUES
(1, 12121212, 1),
(2, 23232323, 2),
(3, 45454545, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`identificación`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
