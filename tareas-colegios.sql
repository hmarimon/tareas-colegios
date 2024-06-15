-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2024 a las 22:55:15
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tareas-colegios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `tbl_subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `subject_teacher` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_subject`
--

INSERT INTO `tbl_subject` (`tbl_subject_id`, `subject_name`, `subject_teacher`) VALUES
(1, 'Matemáticas', 'Profe Matemáticas'),
(2, 'Ciencias', 'Profe Ciencias'),
(3, 'Sociales', 'Profe Sociales'),
(4, 'Física', 'Profe Física'),
(5, 'Estadística', 'Profe Estadística'),
(6, 'Arte', 'Profe Arte'),
(14, 'Ética', 'Profe Ética'),
(15, 'Economía', 'Profe Economía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_task`
--

CREATE TABLE `tbl_task` (
  `tbl_task_id` int(11) NOT NULL,
  `tbl_subject_id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_status` varchar(255) NOT NULL,
  `task_deadline` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_task`
--

INSERT INTO `tbl_task` (`tbl_task_id`, `tbl_subject_id`, `task_name`, `task_status`, `task_deadline`) VALUES
(3, 1, 'Taller de trigonometría', 'Pendiente', '2023-10-06 23:59:00'),
(4, 2, 'Química inorgánica I', 'Pendiente', '2023-10-13 23:59:00'),
(5, 3, 'Historia moderna', 'Completado', '2023-10-20 23:59:00'),
(6, 3, 'Gestión de Expresidentes', 'Completado', '2023-10-02 12:00:00'),
(7, 4, 'Energía Cinética Aplicada', 'En progreso', '2023-10-06 23:59:00'),
(8, 6, 'Vida y obra de Davinci', 'Completado', '2023-10-02 23:59:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`tbl_subject_id`);

--
-- Indices de la tabla `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`tbl_task_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `tbl_subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `tbl_task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
