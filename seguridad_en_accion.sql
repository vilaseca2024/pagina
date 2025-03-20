-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2025 a las 14:28:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seguridad_en_accion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sea_autores`
--

CREATE TABLE `sea_autores` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `ruta_imagen` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sea_baner`
--

CREATE TABLE `sea_baner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `ruta_imagen` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sea_blog`
--

CREATE TABLE `sea_blog` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `ruta_imagen` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sea_noticia`
--

CREATE TABLE `sea_noticia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `ruta_imagen` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sea_noticia_menu`
--

CREATE TABLE `sea_noticia_menu` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `ruta_imagen` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sea_video`
--

CREATE TABLE `sea_video` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `ruta_imagen` varchar(255) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transmisiones`
--

CREATE TABLE `transmisiones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `estado` enum('activo','en lista') NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sea_autores`
--
ALTER TABLE `sea_autores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sea_baner`
--
ALTER TABLE `sea_baner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sea_blog`
--
ALTER TABLE `sea_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sea_noticia`
--
ALTER TABLE `sea_noticia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sea_noticia_menu`
--
ALTER TABLE `sea_noticia_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sea_video`
--
ALTER TABLE `sea_video`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transmisiones`
--
ALTER TABLE `transmisiones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sea_autores`
--
ALTER TABLE `sea_autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sea_baner`
--
ALTER TABLE `sea_baner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sea_blog`
--
ALTER TABLE `sea_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sea_noticia`
--
ALTER TABLE `sea_noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sea_noticia_menu`
--
ALTER TABLE `sea_noticia_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sea_video`
--
ALTER TABLE `sea_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transmisiones`
--
ALTER TABLE `transmisiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
