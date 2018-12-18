-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2018 a las 09:54:50
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `telepizza2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebidas`
--

CREATE TABLE `bebidas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombebidas` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bebidas`
--

INSERT INTO `bebidas` (`id`, `nombebidas`) VALUES
(1, 'Botella Coca-Cola (500 ml)'),
(2, 'Botella Coca-Cola Ligth (500 ml)'),
(3, 'Botella Coca-Cola Zero (500 ml)'),
(4, 'Botella Fanta Naranja  (500 ml)'),
(5, 'Botella Fanta Limon (500 ml)'),
(6, 'Botella Nestea (500 ml)'),
(7, 'Botella Sprite (500 ml)'),
(8, 'Botella Aquarius Naranja (500 ml)'),
(9, 'Botella Aquarius Limon (500 ml)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ensaladas`
--

CREATE TABLE `ensaladas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomensaladas` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ensaladas`
--

INSERT INTO `ensaladas` (`id`, `nomensaladas`) VALUES
(1, 'Ensalada Mediterránea'),
(2, 'Ensalada Mediterránea Pollo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrante`
--

CREATE TABLE `entrante` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(45) NOT NULL DEFAULT '',
  `descripcion` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `entrante`
--

INSERT INTO `entrante` (`id`, `tipo`, `descripcion`) VALUES
(1, '1', 'Combo de Entrantes'),
(2, '1', 'Croquetas Caseras'),
(3, '1', 'Patatas Gajo (1 ración)'),
(4, '1', 'Aros de Cebolla(6 unds.)'),
(5, '1', 'Patatas Sonrisa'),
(6, '1', 'Patatas Fritas'),
(7, '2', 'Pan de Ajo (3 unds.)'),
(8, '2', 'Crostinis de Bacon 2 unds.'),
(9, '2', 'Crostinis de Champiñón 2 unds.'),
(10, '2', 'Crostinis de York 2 unds.'),
(11, '2', 'Crostinis York Cream 2 unds.'),
(12, '3', 'Quesadilla Fan'),
(13, '3', 'Fingers de Queso (2 unds.)'),
(14, '3', 'Bocaditos de Camembert'),
(15, '3', 'Fingers de Queso (4 unds.)'),
(16, '3', 'La Vaca que ríe Palitos'),
(17, '4', 'Kebab Pollo'),
(18, '4', 'Kebab Carne de Vacuno'),
(19, '4', 'Kebab Queso de Rulo'),
(20, '4', 'Enrollado Yorkeso'),
(21, '4', 'Enrollado Hawaiano'),
(22, '4', 'Enrollado Vegetal'),
(23, '4', 'Spiro Dog Clásico'),
(24, '5', 'Alitas de Pollo Barbacoa'),
(25, '5', 'Delicias de Pollo'),
(26, '5', 'Pops de Pollo'),
(27, '5', 'Palitos De Pollo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hambueguesa`
--

CREATE TABLE `hambueguesa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomhambueguesa` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hambueguesa`
--

INSERT INTO `hambueguesa` (`id`, `nomhambueguesa`) VALUES
(1, 'Nueva Top Burguer Vacuno'),
(2, 'Nueva Top Burguer Queso&Bacon'),
(3, 'Nueva Top Burguer Pollo'),
(4, 'Burger Vacuno Infantil'),
(5, 'Burger Pollo Infantil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `descripcion`) VALUES
(1, 'Nuevo Menú Individual'),
(2, 'Menú Individual Hamburguesa Queso y Bacon'),
(3, 'Menú Individual Hamburguesa'),
(4, 'Menú Individual Pizza Especialidad'),
(5, 'Menú Individual grande Hamburguesa Queso y Bacon'),
(6, 'Menú Individual Pasta Especialidad'),
(7, 'Menú Individual grande Ensalada'),
(8, 'Menú Individual grande Sandwich'),
(9, 'Menú Individual Sándwich'),
(10, 'Menú Individual Calzzone');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertas`
--

CREATE TABLE `ofertas` (
  `id` int(10) UNSIGNED NOT NULL,
  `descriptcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ofertas`
--

INSERT INTO `ofertas` (`id`, `descriptcion`) VALUES
(1, 'Nuevo Menú Individual'),
(2, 'Menú Individual Hamburguesa Queso y Bacon'),
(3, 'Menú Individual Hamburguesa'),
(4, 'Menú Individual grande Hamburguesa Queso y Ba'),
(5, 'Menú Individual grande Hamburguesa'),
(6, 'Menú Individual Pizza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasta`
--

CREATE TABLE `pasta` (
  `id` int(10) UNSIGNED NOT NULL,
  `Descripcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pasta`
--

INSERT INTO `pasta` (`id`, `Descripcion`) VALUES
(1, 'Pasta 4 quesos'),
(2, 'Pasta Barbacoa'),
(3, 'Pasta Boloñesa'),
(4, 'Pasta Carbonara'),
(5, 'Pasta Marinera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pizzas`
--

CREATE TABLE `pizzas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nompizzas` varchar(45) NOT NULL DEFAULT '',
  `idpizza` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pizzas`
--

INSERT INTO `pizzas` (`id`, `nompizzas`, `idpizza`) VALUES
(1, 'A tu gusto', 1),
(2, 'Telepizza Rodeo', 1),
(3, 'Telepizza Vulcano Nachos', 1),
(4, 'Telepizza Vulcano de Jalapeños', 1),
(5, 'Pizza Barbacoa', 1),
(6, 'Pizza Carbonara', 1),
(7, 'Telepizza Burger', 2),
(8, 'La Ibérica', 2),
(9, 'Pizza Calzzone Bacon', 2),
(10, 'Pizza Steak House', 2),
(11, 'Pizza Tejana con Cebolla', 2),
(12, 'Pizza Tejana', 2),
(13, 'Pizza Bacon Crispy', 2),
(14, 'Pizza Chicken Fan Barbacoa', 2),
(15, 'Pizza Barbacoa Crème Queso', 2),
(16, 'Pizza Barbacoa Crème Tomate', 2),
(17, 'Especial de la casa cebolla', 2),
(18, 'Pizza Calzzone Clásica', 2),
(19, 'Especial de la casa champiñón', 2),
(20, 'Pizza Jalisco', 2),
(21, 'Pizza Wok', 2),
(22, 'Pizza Hot Dog', 2),
(23, 'Telepizza Supreme', 2),
(24, 'Pizza Top Cheese & Chicken', 3),
(25, 'Pizza 4 Quesos', 3),
(26, 'Pizza Formaggio', 3),
(27, 'Pizza Lasaña Especialidad', 3),
(28, 'Pizza Japonesa', 3),
(29, 'Pizza Carbonara Cebolla', 4),
(30, 'Pizza Hawaiana', 4),
(31, 'Pizza Calzzone Vegetal', 5),
(32, 'Pizza Florentina', 5),
(33, 'Pizza de la Huerta', 5),
(34, 'Pizza César Deluxe', 5),
(35, 'Pizza Natura', 5),
(36, 'Nueva Pizza Infantil', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postre`
--

CREATE TABLE `postre` (
  `id` int(10) UNSIGNED NOT NULL,
  `nompostre` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `postre`
--

INSERT INTO `postre` (`id`, `nompostre`) VALUES
(1, 'Tarrina Triple chocolate'),
(2, 'Magnum Tarrina'),
(3, 'Magnum Chocolate & Raspberry'),
(4, 'CARTE DOR limon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_entrante`
--

CREATE TABLE `tipo_entrante` (
  `idtipo_entrante` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_entrante`
--

INSERT INTO `tipo_entrante` (`idtipo_entrante`, `descripcion`) VALUES
(1, 'Nunca fallan'),
(2, 'Por los mas fans'),
(3, 'Algo con queso'),
(4, 'Kebabs'),
(5, 'Al rico pollo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pizza`
--

CREATE TABLE `tipo_pizza` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_pizza`
--

INSERT INTO `tipo_pizza` (`id`, `descripcion`) VALUES
(1, 'Las destacadas'),
(2, 'Amantes de la CARNE'),
(3, 'Los más QUESEROS'),
(4, 'Los CLÁSICOS'),
(5, 'Los más NATURALES'),
(6, 'INFANTIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `User_name` varchar(15) NOT NULL DEFAULT '',
  `User_password` varchar(15) NOT NULL DEFAULT '',
  `User_address` varchar(20) NOT NULL DEFAULT '',
  `User_email` varchar(20) NOT NULL DEFAULT '',
  `User_phone` varchar(10) NOT NULL DEFAULT '',
  `Nombre` varchar(45) NOT NULL DEFAULT '',
  `Apellidos` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `User_name`, `User_password`, `User_address`, `User_email`, `User_phone`, `Nombre`, `Apellidos`) VALUES
(1, 'cliente1', '1234', 'Avda las palomas, 17', 'ppvilladaw@gmail.com', '956111111', 'Antonio', 'Romero Lopez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bebidas`
--
ALTER TABLE `bebidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ensaladas`
--
ALTER TABLE `ensaladas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entrante`
--
ALTER TABLE `entrante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hambueguesa`
--
ALTER TABLE `hambueguesa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pasta`
--
ALTER TABLE `pasta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postre`
--
ALTER TABLE `postre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_entrante`
--
ALTER TABLE `tipo_entrante`
  ADD PRIMARY KEY (`idtipo_entrante`);

--
-- Indices de la tabla `tipo_pizza`
--
ALTER TABLE `tipo_pizza`
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
-- AUTO_INCREMENT de la tabla `bebidas`
--
ALTER TABLE `bebidas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ensaladas`
--
ALTER TABLE `ensaladas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `entrante`
--
ALTER TABLE `entrante`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `hambueguesa`
--
ALTER TABLE `hambueguesa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ofertas`
--
ALTER TABLE `ofertas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pasta`
--
ALTER TABLE `pasta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `postre`
--
ALTER TABLE `postre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_entrante`
--
ALTER TABLE `tipo_entrante`
  MODIFY `idtipo_entrante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_pizza`
--
ALTER TABLE `tipo_pizza`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
