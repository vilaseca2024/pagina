-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2025 a las 22:04:06
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
  `estado` enum('activo','inactivo') DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `estrellas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sea_autores`
--

INSERT INTO `sea_autores` (`id`, `titulo`, `subtitulo`, `descripcion`, `fecha`, `categoria`, `ruta_imagen`, `estado`, `autor`, `estrellas`) VALUES
(1, 'aaaaaaaaa', 'bbbbbbbbb', 'ccccc', '2025-03-22', 'ddddddd', 'uploads/descarga.jpg', 'activo', 'eeeeeeeeeee', 3);

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

--
-- Volcado de datos para la tabla `sea_blog`
--

INSERT INTO `sea_blog` (`id`, `titulo`, `subtitulo`, `descripcion`, `fecha`, `categoria`, `ruta_imagen`, `estado`) VALUES
(1, 'blog de prueba', 'subitulo de prueba', '453737', '2025-03-24', '357375', 'uploads/descarga (3).jpg', 'activo');

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

--
-- Volcado de datos para la tabla `sea_noticia`
--

INSERT INTO `sea_noticia` (`id`, `titulo`, `subtitulo`, `descripcion`, `fecha`, `categoria`, `ruta_imagen`, `estado`) VALUES
(1, 'Seguridad Coorporativa', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2025-03-19', NULL, 'upload/descarga (3).jpg', 'activo'),
(2, 'Tramisison de seguridad en 5minutos', NULL, 'Describir noticias', '2025-03-20', NULL, 'noticias/descarga (4).jpg', 'activo');

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

--
-- Volcado de datos para la tabla `sea_noticia_menu`
--

INSERT INTO `sea_noticia_menu` (`id`, `titulo`, `subtitulo`, `descripcion`, `fecha`, `categoria`, `ruta_imagen`, `estado`) VALUES
(1, 'blog de prueba', 'subitulo de prueba', 'iiiii', '2025-03-28', 'iiiiiiiii', 'uploads/descarga.jpg', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sea_transmisiones`
--

CREATE TABLE `sea_transmisiones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `estado` enum('activo','en lista') NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `descripcion` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sea_transmisiones`
--

INSERT INTO `sea_transmisiones` (`id`, `titulo`, `enlace`, `estado`, `fecha`, `descripcion`) VALUES
(1, 'aaaaaaaaa', 'https://0e8d-200-105-158-170.ngrok-free.app/', 'en lista', '2025-02-28 10:43:21', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(2, ' pruebas totales', 'https://www.youtube.com/watch?v=YgGP8llIl14', 'activo', '2025-02-28 10:45:24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(3, 'Nueva trasmision', 'https://www.google.com/search?q=youtobe+prueba&rlz=1C1GCEU_esBO1134BO1134&oq=youtobe+prueba&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIJCAEQABgNGIAEMgkIAhAAGA0YgAQyCQgDEAAYDRiABDIJCAQQABgNGIAEMgkIBRAAGA0YgAQyCQgGEAAYDRiABDIJCAcQABgNGIAEMgkICBAAGA0YgAQyCAgJEAAYFhge0gE', 'activo', '2025-02-28 10:49:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(4, 'datos finales', 'https://www.google.com/search?q=youtobe+prueba&rlz=1C1GCEU_esBO1134BO1134&oq=youtobe+prueba&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIJCAEQABgNGIAEMgkIAhAAGA0YgAQyCQgDEAAYDRiABDIJCAQQABgNGIAEMgkIBRAAGA0YgAQyCQgGEAAYDRiABDIJCAcQABgNGIAEMgkICBAAGA0YgAQyCAgJEAAYFhge0gE', 'activo', '2025-02-28 10:55:07', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(5, 'Nueva trasmisionpppp', 'YgGP8llIl14', 'activo', '2025-02-28 11:03:57', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(6, 'aaaaaaaaa', 'YgGP8llIl14', 'activo', '2025-03-18 12:05:09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(7, 'aaaaaaaaa', 'https://www.google.com/search?q=youtube+prueba&rlz=1C1GCEU_esBO1134BO1134&oq=you&gs_lcrp=EgZjaHJvbWUqDAgBECMYJxiABBiKBTIUCAAQRRg5GEMYgwEYsQMYgAQYigUyDAgBECMYJxiABBiKBTISCAIQLhhDGIMBGLEDGIAEGIoFMhIIAxAAGEMYgwEYsQMYgAQYigUyDAgEEAAYQxiABBiKBTINCAUQABiDARixAx', 'activo', '2025-03-18 12:06:06', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(8, 'prueba you', 'Ykc0acKCzbo', 'activo', '2025-03-18 12:06:57', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(9, 'aaaaaaaaa', 'C0DPdy98e4c', 'activo', '2025-03-18 12:15:47', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(10, 'en vivo 10 min', 'q0qLkITjqIc', 'activo', '2025-03-18 12:19:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(11, 'LEXPRO', 'UWx6esvIizk', 'activo', '2025-03-18 12:21:47', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(12, 'DATOS PRUEBAS', 'UWx6esvIizk', 'activo', '2025-03-18 12:22:25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(13, 'Nueva trasmision', '', 'activo', '2025-03-18 12:29:14', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(14, 'Nueva trasmision', '', 'activo', '2025-03-18 12:29:44', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(15, 'aaaaaaaaa', 'apbxGwdXORA', 'activo', '2025-03-18 12:29:55', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(16, 'Nueva trasmision', '32532454', 'activo', '2025-03-18 00:00:00', '2344444444444444445453 345 345 34534 534534 5'),
(17, 'tarea juan', '09876', 'activo', '2025-03-18 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(18, 'Juan Trasmite', '234567', 'en lista', '2025-02-27 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(19, 'Juan Trasmite', '234567', 'en lista', '2025-02-27 00:00:00', '2344444444444444445453 345 345 34534 534534 5'),
(20, 'aaaaaaaaa', 'QR_wgQgtS-g', 'activo', '2025-03-19 00:00:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the '),
(21, 'Tramisison de seguridad en 5minutos', 'hLuCUz-Pt8Y', 'activo', '2025-03-19 00:00:00', 'Este video tiene como meta la descripcion de informacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sea_usuario`
--

CREATE TABLE `sea_usuario` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `activo` enum('activo','inactivo') DEFAULT 'activo'
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
-- Indices de la tabla `sea_transmisiones`
--
ALTER TABLE `sea_transmisiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sea_usuario`
--
ALTER TABLE `sea_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `sea_video`
--
ALTER TABLE `sea_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sea_autores`
--
ALTER TABLE `sea_autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sea_baner`
--
ALTER TABLE `sea_baner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sea_blog`
--
ALTER TABLE `sea_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sea_noticia`
--
ALTER TABLE `sea_noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sea_noticia_menu`
--
ALTER TABLE `sea_noticia_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sea_transmisiones`
--
ALTER TABLE `sea_transmisiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `sea_usuario`
--
ALTER TABLE `sea_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sea_video`
--
ALTER TABLE `sea_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
