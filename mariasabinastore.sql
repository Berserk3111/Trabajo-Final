-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2020 a las 09:47:39
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mariasabinastore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `imgs` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`, `imgs`) VALUES
(1, 'Cocina', 'https://png.pngtree.com/png-clipart/20190120/ourlarge/pngtree-home-furniture-kitchen-grease-pump-png-image_499656.jpg'),
(2, 'Decoracion', 'https://image.flaticon.com/icons/png/512/875/875286.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `tarjeta` int(16) NOT NULL,
  `direccion` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compra`, `id_producto`, `id_usuario`, `telefono`, `tarjeta`, `direccion`) VALUES
(1, 1, 1, '5033313', 21412552, 'Primera Privada de gardenias # 108'),
(2, 1, 1, '9512', 22235, 'Huertas 505'),
(3, 1, 1, '951262549', 2147483647, '1era privada de gardenias #108 San Agustin de las Juntas'),
(4, 4, 5, '9512365', 2147483647, 'Huertas 505'),
(5, 9, 5, '951262549', 2147483647, '1era privada de gardenias #108 San Agustin de las Juntas'),
(6, 1, 6, '951262549', 2147483647, '1era privada de gardenias #108 San Agustin de las Juntas'),
(7, 1, 1, '951262549', 2147483647, '1era privada de gardenias #108 San Agustin de las Juntas'),
(8, 1, 8, '951262549', 2147483647, '1era privada de gardenias #108 San Agustin de las Juntas'),
(9, 1, 1, '951262549', 2147483647, '1era privada de gardenias #108 San Agustin de las Juntas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `perfil` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `perfil`) VALUES
(1, 'Administrador'),
(2, 'Cliente'),
(3, 'Personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `cantidad`, `img`, `id_categoria`, `descripcion`, `precio`) VALUES
(1, 'Molcajete de Piedra Negra', 10, 'https://i.pinimg.com/originals/00/f7/f8/00f7f8cef138efd7f1f4bc9437710052.png', 1, 'Excelente para hacer un guacamole, elaborar una rica salsa conservando los sabores naturales de los ingredientes, con piedra volcánica extraída de la comunidad y tratada artesanalmente.', 250),
(2, 'Vasija de Barro negro', 20, 'https://i.pinimg.com/originals/68/73/11/687311cdffdd65249074f0f283f34e3b.png', 2, 'Adorna tu centro de mesa con esta bonita vasija de barro negro con una excelente presentación. ', 400),
(3, 'Taza de barro negro lisa', 20, 'https://i.pinimg.com/originals/43/c2/ef/43c2ef0d8276b00d42ea91f040ff8e57.jpg', 1, 'Siéntete como un dios bebiendo en esta increíble taza de barro negro, disfruta de el sabor único y delicioso que le dará a tus bebidas, además de que conservara su temperatura y sobre todo es muy agradable a la vista.', 120),
(4, 'Olla de barro negro', 20, 'https://biogota.tienda/157-large_default/olla-barro-m.jpg', 1, 'Ideal para esas grandes comidas o bebidas para una cena familiar, disfrutando de un sabor único y conservando la temperatura de tus alimentos.', 450),
(5, 'Set de ollitas de barro negro', 9, 'https://images-na.ssl-images-amazon.com/images/I/71IT9snfNVL._SX500_.jpg', 2, 'Decora con un excelente set de ollitas de barro con un increíble diseño que simplemente será algo muy agradable a la vista.', 200),
(6, 'Craneo cultural Barro Negro', 5, 'https://images-na.ssl-images-amazon.com/images/I/812dLtt7bwL._SY500_.jpg', 2, 'Increíble pero tenebroso.', 800),
(7, 'Servilletero de barro negro', 30, 'https://i.pinimg.com/originals/a8/43/5b/a8435b0166dd5027fe2c07e1423da2eb.jpg', 1, 'Para colocar tus servilletas en el centro de la mesa de cualquier fiesta o Reunión.', 100),
(8, 'Basija de Barro negro Flor', 10, 'https://http2.mlstatic.com/D_NQ_NP_778334-MLM43676917570_102020-W.jpg', 2, 'Simplemente única.', 430),
(9, 'Calavera de barro Lula\'naya\'ni', 50, 'https://i.pinimg.com/236x/4c/5a/57/4c5a57d46f022adfabea454d8a4f09f3.jpg', 2, 'Una pieza fina excelente para decorar tu hogar.', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `a_p` varchar(30) NOT NULL,
  `a_m` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `id_perfil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `user`, `password`, `a_p`, `a_m`, `nombre`, `id_perfil`) VALUES
(1, 'Jasiel', 'JaBe1131', 'Martinez', 'Canseco', 'Jasiel', 2),
(2, 'Killer34', 'Alexis12345', 'Rios', 'Lopez', 'Alexis Eduardo', 3),
(3, 'Berserk', 'SS12345', 'Martinez', 'Canseco', 'Jasiel', 1),
(4, 'Joshep', 'Josh123', 'Condori', 'Murga', 'Joshep', 1),
(5, 'Killer19', '12345', 'Cruz', 'Mendez', 'Jesus', 2),
(6, 'Pedrin89', '12345', 'Santiago', 'Aquino', 'Pedro', 2),
(7, 'Jesus1', '12345', 'Lopez', 'Perez', 'Jesus', 2),
(8, 'pollo', '12345', 'Cruz', 'Mendez', 'Jasielin ', 2),
(9, 'Killer36', '12345', 'Cruz', 'Mendez', 'Jesus', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_perfil` (`id_perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
