-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2018 a las 17:56:31
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_semilleros_investigacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id_usuario` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `identificacion` int(30) NOT NULL,
  `tema_investigacion` varchar(30) NOT NULL,
  `registro_edicion` varchar(30) NOT NULL,
  `registro_descargas` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id_usuario`, `nombre`, `identificacion`, `tema_investigacion`, `registro_edicion`, `registro_descargas`) VALUES
(1, 'Baez burgos daniela', 1003047024, 'Tutores cognitivos ', '12/3/2017 3:00 PM', 6),
(2, 'Bolaño tromp Keyla patricia', 1062964941, 'Inteligencia artificial ', '23/4/2017 2:00 PM', 2),
(3, 'Bula oliva bleidys patricia', 1067848068, 'Recuerdo cognitivo', '20/1/2017  3:00 PM 18/2/2017 1', 4),
(4, 'Cabrales guarnes alejandra', 1062955127, 'Espacios en la memoria ', '30/1/2017', 3),
(5, 'Correa Suarez sadis sadith', 1003368339, 'Aprendizajes cognitivos ', '4/4/2017', 1),
(6, 'Diaz Montenegro jesus', 1062425349, 'Robótica educativa', '5/4/2017', 5),
(7, 'Espitia Suarez Luis angel', 1003004506, 'Robótica educativa', '19/2/2017 1:00 PM', 7),
(8, 'Fernandez colon maria', 1067891509, 'Aprendizajes cognitivos', '15/2/2017 2:00 PM 29/2/2017 9:', 2),
(9, 'Florez payares jhonnatan dejes', 1007781478, 'Robotica educativa', '29/2/2017 10:029/3/2017 5:00 A', 2),
(10, 'Guzman diaz lina marcela', 1003046715, 'Aprendizajes cognitivos ', '29/3/2017 5:00 AM', 7),
(11, 'Henao ruiz santiago', 1003049670, 'Robótica educativa', '20/3/2017 3:00 AM', 5),
(12, 'Hernandez burgos jeniffer joha', 1003287899, 'Tipología cognitiva ', '20/3/2017 5:00 AM', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_estudiantes`
--

CREATE TABLE `registro_estudiantes` (
  `id` int(10) NOT NULL,
  `nombre_estudiante` varchar(30) NOT NULL,
  `identificacion` int(30) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  `tema_investigacion` varchar(30) NOT NULL,
  `semestre` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro_estudiantes`
--

INSERT INTO `registro_estudiantes` (`id`, `nombre_estudiante`, `identificacion`, `carrera`, `tema_investigacion`, `semestre`) VALUES
(1, 'Baez burgos daniela', 1003047024, 'Química', 'Efectos del potasio para produ', 5),
(2, 'Bolaño tromp Keyla patricia', 1062964941, 'Ingles', 'Fortalecimiento del inglés en ', 5),
(3, 'Bula oliva bleidys patricia', 1067848068, 'Ingeniería mecánica', 'Energía eólica para disminuir ', 4),
(4, 'Cabrales guarnes alejandra', 1062955127, 'Enfermería', 'Efectos secundarios del parace', 3),
(5, 'Correa Suarez sadis sadith', 1003368339, 'Ingeniería de sistemas', 'Javascript como alternativa pa', 4),
(6, 'Diaz Montenegro jesus', 1062425349, 'Agronomía', 'Semillas de frijol resistentes', 7),
(7, 'Espitia Suarez Luis angel', 1003004506, 'Sociales', 'La política como factor de vio', 1),
(8, 'Fernandez colon maria', 1067891509, 'Educación física', 'Actividad fisca como apoyo par', 3),
(9, 'Florez payares jhonnatan dejes', 1007781478, 'Bacteriología', 'Bacterias que producen la diar', 8),
(10, 'Guzman diaz lina marcela', 1003046715, 'Informática', 'Ambientes e-learning para el d', 4),
(11, 'Hernandez burgos jeniffer joha', 1067891509, 'Agronomía', 'Mejoramiento de la productivid', 5),
(13, 'Henao ruiz santiago', 1003049670, 'Ingeniera industrial', 'Papa resistente al calor', 9),
(14, 'Llorente polo juan pablo', 1068417386, 'Química', 'El mercurio productor de célul', 8),
(15, 'Lopez alvarez Fabio andres', 1003004093, 'Biología', 'La reproducción en estrellas d', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_semillero`
--

CREATE TABLE `registro_semillero` (
  `id_semillero` int(10) NOT NULL,
  `nombre_semillero` varchar(30) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  `numero_integrantes` int(10) NOT NULL,
  `numero_proyectos` int(10) NOT NULL,
  `aprobados_no_aprobados-_en_proceso_aprobacion` int(30) NOT NULL,
  `eventos` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro_semillero`
--

INSERT INTO `registro_semillero` (`id_semillero`, `nombre_semillero`, `carrera`, `numero_integrantes`, `numero_proyectos`, `aprobados_no_aprobados-_en_proceso_aprobacion`, `eventos`) VALUES
(1, 'Grupo regional de investigació', 'Ingeniería Agronómica', 87, 40, 24, 'Barranquilla'),
(2, 'Grupo de investigación en cult', 'Ingeniería Agronómica', 47, 20, 15, 'Argentina'),
(3, 'Observatorio de precios y cost', 'Ingeniería Agronómica', 20, 10, 8, 'Chile'),
(4, 'Grupo de aguas, química aplica', 'Química', 58, 45, 30, 'Israel,chile,holanda'),
(5, 'Química de los productos natur', 'Química', 50, 36, 28, 'Santa marta, Cucuta, Bogota'),
(6, 'Biodiversidad Unicórdoba', 'Biología', 66, 41, 36, 'Argentina, Grecia, Egipto, Med'),
(7, 'Grupo Avanzado de Materiales y', 'Física', 40, 22, 16, 'Chile, Cartagena'),
(8, 'Botánica', 'Biología', 50, 34, 25, 'Argentina, Grecia, Bogota'),
(9, 'Genes', 'Biología', 40, 22, 16, 'Chile, Cartagena'),
(10, 'Grupo de Fisicoquímica Orgánic', 'Química', 58, 34, 25, 'Israel,chile,holanda'),
(11, 'Grupo de Química Computacional', 'Química', 78, 55, 40, 'Brasil, Canada, Australia'),
(12, 'GRUBIODEQ (Grupo de Biotecnolo', 'Química', 80, 63, 38, 'Reino unido'),
(13, 'Grupo de Investigaciones en Ag', 'Química', 33, 20, 10, 'Bogota, Medellin, Brasil'),
(14, 'Física teórica y aplicada', 'Física', 73, 59, 26, 'Ecuador, guajira'),
(15, 'Matemáticas Unicórdoba', 'Matemática', 10, 6, 3, 'Brasil, Canada, Australia'),
(16, 'Fisicoquímica de mezclas liqui', 'Química', 15, 9, 5, 'Argentina, Amazonas'),
(17, 'Grupo de investigación en Esta', 'Estadísticas', 15, 8, 5, 'Medellin, Cartagena, Guajira'),
(18, 'Materiales y física aplicada', 'Física', 64, 29, 24, 'Ecuador, guajira'),
(19, 'Grupo de estudios urbanos- reg', 'Geografía', 100, 69, 50, 'Bogota, Medellin, Brasil'),
(20, 'Botánica', 'Biología', 88, 57, 43, 'Argentina, Amazonas'),
(21, 'Sociedad Imaginarios Comunicac', 'Inglés', 84, 76, 51, 'Canada, Estados Unidos, Austra'),
(22, 'Desarrollo, democracia y educa', 'Ciencias Sociales', 39, 30, 24, 'Medellin, Bogota, Cali'),
(23, 'Investigación en mediaciones t', 'Informática', 99, 80, 72, 'Bogota, Medellin, Brasil'),
(24, 'Informática, Comunicación y Ed', 'Informática', 53, 47, 32, 'Argentina, Grecia, Egipto, Med'),
(25, 'GICAFS: Grupo de investigación', 'Cultura Física', 92, 68, 30, 'Israel'),
(26, 'Ahead', 'Inglés', 53, 40, 19, 'Dinamarca, Canada, Oxford'),
(27, 'GICNEA', 'Ciencias Naturales', 41, 20, 14, 'Bogota, Medellin, Brasil'),
(28, 'Cumbiambullé', 'Artes y Humanidades', 39, 16, 5, 'Brasil, Guajira, Rusia'),
(29, 'Instituto de Investigaciones b', 'Ciencias Pecuarias', 67, 20, 10, 'Santa marta, Cucuta, Bogota'),
(30, 'Grupo del Centro de Investigac', 'Ciencias Acuícolas', 88, 55, 28, 'Argentina, Amazonas'),
(31, 'Producción Animal Tropical', 'Ciencias Pecuarias', 86, 73, 34, 'Venezuela, San Andres, Brasil'),
(32, 'Medicina en grandes animales M', 'Medicina en grandes animales M', 79, 59, 36, 'Brasil, Sur Africa'),
(33, 'Laboratorio de Investigación B', 'Ciencias Acuícolas', 95, 79, 36, 'Brasil, Canada, Australia'),
(34, 'MECIVET', 'Ciencias Pecuarias', 50, 34, 24, 'Argentina, Amazonas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_tutores`
--

CREATE TABLE `registro_tutores` (
  `id_tutor` int(10) NOT NULL,
  `nombre_tutor` varchar(30) NOT NULL,
  `identificacion` int(30) NOT NULL,
  `estudios` varchar(30) NOT NULL,
  `area_investigacion` varchar(30) NOT NULL,
  `integrantes` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro_tutores`
--

INSERT INTO `registro_tutores` (`id_tutor`, `nombre_tutor`, `identificacion`, `estudios`, `area_investigacion`, `integrantes`) VALUES
(1, 'Alfredo Jarma Orozco', 1003402401, 'Maestría en biología humana ', 'Biología', 87),
(2, 'Hermes Aramendiz Tatis', 1003466921, 'Maestría en ciencias químicas ', 'Química', 47),
(3, 'Omar Castillo Núñez', 1067878892, 'Doctor En lenguas extranjeras', 'Ingles', 39),
(4, 'José Luis Marrugo Negrete', 1068418822, 'Doctorado En Ingeniería Doctor', 'Ingeniería mecánica', 55),
(5, 'Gilmar Gabriel Santafé Patiño', 1067958715, 'Maestria en fermeria con espec', 'Enfermería', 87),
(6, 'Juan Carlos Linares Arias', 1003044273, 'Doctor En Filosofía En Sistema', 'Ingeniería de sistemas', 98),
(7, 'César Ortega López', 1062424707, 'Maestria en ciencias en produc', 'Agronomía', 74),
(8, 'Rosalba Ruiz Vega', 1001452252, 'Master en recursos humanos  ', 'Español', 69),
(9, 'Enrique Pardo Pérez', 1007545783, 'Maestría en ciencias sociales ', 'Sociales', 45),
(10, 'Jennifer Judith Lafont Mendoza', 1003407406, 'Maestriaen física aplicada', 'Educación física', 25),
(11, 'Adolfo Enrique Ensuncho Muñoz', 1193080754, '', 'Bacteriología', 37),
(12, 'Luis Eliecer Oviedo', 1003049225, 'Jefe de departamento de Cienci', 'Informática', 68),
(13, 'Edineldo Lans Ceballos', 1003395849, 'Doctor Ingeniería de la Inform', 'Ingeniera industrial', 61),
(14, 'Cristian Susa Quintero', 1007781258, 'Maestria en la planta y el bos', 'Agronomía', 57),
(15, 'Carlos Alberto Banquet Brango', 1003046339, 'Maestría en biología humana', 'Biología', 52),
(16, 'Manuel Silvestre Páez Meza', 1003048378, 'Maestría en ciencias químicas ', 'Química', 90),
(17, 'Guillermo Martínez Flórez', 110102522, 'Maestría en biología humana', 'Biología', 78),
(18, 'Francisco José Torres Hoyos', 1002498938, 'Maestría en biología humana', 'Biología', 64),
(19, 'Rubén Darío Godoy Gutiérrez', 1003002467, 'Maestría en ciencias químicas ', 'Química', 73),
(20, 'Rosalba Ruiz Vega', 1003398290, 'Doctor En lenguas extranjeras', 'Ingles', 49),
(21, 'José David Herazo Rivera', 1062427109, 'Doctor En Filosofía En Sistema', 'Ingeniería mecánica', 49),
(22, 'Jorge Eliecer Ortega Montes', 1003049576, 'Maestria en fermeria con espec', 'Enfermería', 52),
(23, 'Isabel Alicia Sierra Pineda', 1003395952, 'Ingenieria en Arquitectura de ', 'Ingeniería de sistemas', 66),
(24, 'Manuel Caro Piñeres', 1003396029, 'Maestria en ingeniería agricol', 'Agronomía', 68),
(25, 'Jorge Luis Petro Soto', 1003405155, 'Maestria enlinguistica aplicad', 'Español', 92),
(26, 'Liliana Valle Zapata', 1062954912, 'Maestria en estudios sociales ', 'Sociales', 53),
(27, 'Elvira Patricia Florez Nisperu', 1005859352, 'Maestria en actividad física y', 'Educación física', 41),
(28, 'Edilma Del Carmen Zumaque Góme', 1003049605, 'Maestría en microbiología agro', 'Bacteriología', 39),
(29, 'Salim Mattar Velilla', 1006690279, 'Maestria en informática educat', 'Informática', 67),
(30, 'Victor Julio Atencio García', 1003003018, 'Doctor Ingeniería de la Inform', 'Ingeniera industrial', 88),
(31, 'Oscar David Vergara Garay', 1003399305, 'Maestria en ingeniería agricol', 'Agronomía', 83),
(32, 'Jose Alberto Cardona Alvarez', 1003451263, 'Maestría en biología humana', 'Biología', 79),
(33, 'Charles William Olaya Nieto', 1003048379, 'Maestría en ciencias químicas ', 'Química', 95),
(34, 'Juan Carlos Ballut', 1067967284, 'Maestría en biología humana', 'Biología', 59),
(35, 'Salim Mattar Velilla', 1183288020, 'Maestría en biología humana', 'Biología', 87);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `registro_estudiantes`
--
ALTER TABLE `registro_estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro_semillero`
--
ALTER TABLE `registro_semillero`
  ADD PRIMARY KEY (`id_semillero`);

--
-- Indices de la tabla `registro_tutores`
--
ALTER TABLE `registro_tutores`
  ADD PRIMARY KEY (`id_tutor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id_usuario` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `registro_estudiantes`
--
ALTER TABLE `registro_estudiantes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `registro_semillero`
--
ALTER TABLE `registro_semillero`
  MODIFY `id_semillero` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `registro_tutores`
--
ALTER TABLE `registro_tutores`
  MODIFY `id_tutor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
