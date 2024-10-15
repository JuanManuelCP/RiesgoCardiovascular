-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2024 a las 02:14:02
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
-- Base de datos: `pqrsf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_pqrsf`
--

CREATE TABLE `tabla_pqrsf` (
  `id` int(11) NOT NULL,
  `respuesta` varchar(3) NOT NULL,
  `respuesta2` varchar(3) NOT NULL,
  `fecha` date NOT NULL,
  `opcion` varchar(20) NOT NULL,
  `eps` varchar(100) NOT NULL,
  `servicio` varchar(100) NOT NULL,
  `poblacion` varchar(20) NOT NULL,
  `otro_poblacion` varchar(100) DEFAULT NULL,
  `nombre_apellidos` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) NOT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_pqrsf`
--

INSERT INTO `tabla_pqrsf` (`id`, `respuesta`, `respuesta2`, `fecha`, `opcion`, `eps`, `servicio`, `poblacion`, `otro_poblacion`, `nombre_apellidos`, `municipio`, `celular`, `correo`, `descripcion`) VALUES
(1, 'si', 'si', '2024-05-06', 'Felicitación', 'Sanidad', 'Radiografia', 'otro', 'Ninguna', 'juan caceres', 'pasto', '3178088014', 'juanma@gmail.com', 'Buen Servicio.'),
(2, 'si', 'si', '2024-05-01', 'Sugerencia', 'Sanitas', 'imagen diagnostica', 'otro', 'Ninguno', 'Jaider Chamorro', 'linares', '31082377192', 'johan@gmail.com', 'dar imagenes en mejor calidad.'),
(3, 'si', 'si', '2024-05-01', 'Reclamo', 'Sanitas', 'ortopedia', 'otro', 'Ninguno', 'Johan Gonzáles', 'Barbacoas', '3204027723', 'gonzalez@gmail.com', 'No veo resultados significativos.'),
(4, 'si', 'si', '2024-05-06', 'Queja', 'nueva eps', 'Quimioterapia', 'discapacidad', '', '', 'Pasto', '', '', 'mal servicio.'),
(5, 'si', 'si', '2024-04-29', 'Felicitación', 'compensar', 'radiografia', 'discapacidad', '', 'Wilson', 'pasto', '3137818931', 'unit@gmail.com', 'buen servicio, el mejor'),
(6, 'si', 'si', '2024-05-06', 'Reclamo', 'Sanidad', 'Quimioterapia', 'victima', '', '', 'barbacoas', '5161561561', 'juanma@gmail.com', 'gfhdd'),
(7, 'si', 'si', '2024-05-08', 'Felicitación', 'Nueva Eps', 'radiografia', 'otro', 'Ninguna', 'Samuel Cordoba', 'Pasto', '3159866013', 'prueba@gmail.com', 'muy buen servicio'),
(8, 'si', 'si', '2024-05-14', 'Felicitación', 'Sanitas', 'Imágen', 'adulto-mayor', '', 'Andres', 'Ordoñez ', '3157832924', 'unit@gmail.com', 'me siento bien servido.'),
(9, 'si', 'si', '2024-05-14', 'Queja', 'sanidad', 'radiografia', 'discapacidad', '', '', 'pasto', '3147844035', '', 'mal servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `contraseña`) VALUES
(1, 'juanma@gmail.com', '123456'),
(2, 'manuel@gmail.com', '654321'),
(3, 'jaider@gmail.com', '4352122'),
(4, 'johan@gmail.com', '87333'),
(5, 'jhoan@gmail.com', 'jhoan777'),
(6, 'chamorro@gmail.com', '98chamo'),
(7, 'caceres@umariana.edu.co', '1212juan'),
(8, 'gonzalez@gmail.com', '321johan'),
(9, 'cordoba@gmail.com', '7645jaider'),
(10, 'david@gmail.com', 'david002'),
(11, 'cacerespaz@gmail.com', 'paz7777'),
(12, 'cordobajhoan@gmail.com', 'jjcc123'),
(13, 'prueba@gmail.com', '987654'),
(14, 'juan@gmail.com', '876543'),
(15, 'jkahadu@hotmail.com', '83712789213'),
(16, 'prueba3@hotmail.com', 'prueba8888'),
(17, 'lkahgq@gmail.com', '98761234'),
(18, 'prueba4@hotmail.com', 'prueba1111'),
(19, 'prueba6@outlook.com', 'prueba611111'),
(20, 'unit@gmail.com', 'unit7777'),
(21, 'nuevousuario@example.com', 'contraseña456'),
(22, 'usuario@example.com', 'contraseña789'),
(23, 'pruebaunit@gmail.com', '456236'),
(24, 'kasjja@hotmail.com', 'ASDF123'),
(28, 'slattt@hotmail.com', '1234509876juan'),
(29, 'manuelca@gmail.com', 'juan777777'),
(30, 'prueba90@outlook.com', '1234321juan'),
(31, 'error@gmail.com', 'errorrrrr'),
(32, 'chamocordoba@gmail.com', 'sidfhgweuifw7'),
(33, 'definitiva@gmail.com', 'helpppp'),
(34, 'sweetalert@gmail.com', '1291irqffasxdvb'),
(35, 'help@gmail.com', 'help12345'),
(36, 'test7@gmail.com', '123456sodfjchsdikfvbsdfvs'),
(37, 'mensaje@gmail.com', 'adkhadkadasd'),
(38, 'porfin@gmail.com', 'thanksgod'),
(39, 'chiefkeef@gmail.com', 'gloryday');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_pqrsf`
--
ALTER TABLE `tabla_pqrsf`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla_pqrsf`
--
ALTER TABLE `tabla_pqrsf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
