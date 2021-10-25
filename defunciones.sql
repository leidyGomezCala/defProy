-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2021 a las 07:29:56
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `defunciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradoraseguridad`
--

CREATE TABLE `administradoraseguridad` (
  `IdAdministradoraSeguridad` int(11) NOT NULL,
  `NombreAdministradora` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradoraseguridad`
--

INSERT INTO `administradoraseguridad` (`IdAdministradoraSeguridad`, `NombreAdministradora`) VALUES
(1, 'Anas Wayuu Epsi - Empresa Promotora De Salud Indigena Anas Wayuu Epsi'),
(2, 'Asmet Salud Ess - Asociacion Mutual La Esperanza'),
(3, 'Asociacion Mutual Barrios Unidos De Quibdo Ambuq Ars'),
(4, 'Capital Salud'),
(5, 'Comfamiliar Sucre - Caja De Compensacion Familiar De Sucre'),
(6, 'Comparta Ess - Cooperativa De Salud Comunitaria Empresa Solidaria De Salud Comparta Salud Ltda'),
(7, 'Convida - Ars Convida'),
(8, 'Coomeva   E.P.S.  S.A.-Cm'),
(9, 'Coosalud E.S.S. -  Ars Cooperativa Empresa Solidaria De Salud Y Desarrollo Integral'),
(10, 'E.P.S.  Sanitas  S.A.-Cm'),
(11, 'Ecopetrol'),
(12, 'Eps Y Medicina Prepagada Suramericana S.A-Cm'),
(13, 'Fondo De Prestaciones Sociales Del Magisterio'),
(14, 'Fundacion Salud Mia Eps'),
(15, 'La Nueva Eps S.A.-Cm'),
(16, 'Mutual Ser - Asociacion Mutual Ser Empresa Solidaria De Salud Ars'),
(17, 'Nueva Eps S.A.'),
(18, 'Policia Nacional'),
(19, 'Salud  Total  S.A.  E.P.S.'),
(20, 'Salud Total S.A. Entidad Promotora De Salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `IdArea` int(11) NOT NULL,
  `NombreArea` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`IdArea`, `NombreArea`) VALUES
(1, 'Cabecera municipal'),
(2, 'Centro poblado'),
(3, 'Rural Disperso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `causadirecta`
--

CREATE TABLE `causadirecta` (
  `IdCausaDirecta` int(11) NOT NULL,
  `CausaDirecta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `causadirecta`
--

INSERT INTO `causadirecta` (`IdCausaDirecta`, `CausaDirecta`) VALUES
(1, 'Insuficiencia Respiratoria Aguda'),
(2, 'Choque  Septico Pulmonar'),
(3, 'Choque Cardiogenico'),
(4, 'Choque Distributivo'),
(5, 'Choque Hipovoemico'),
(6, 'Choque Hipovolemico'),
(7, 'Choque Multisistemico'),
(8, 'Choque Neurogenico'),
(9, 'Choque Septico'),
(10, 'Choque Septico Origen Pulmonar'),
(11, 'Coma  Hepatico'),
(12, 'Disfuncion Multiorganica'),
(13, 'Distres Respiratorio'),
(14, 'Falla Cardiopulmonar'),
(15, 'Falla Multiorganica'),
(16, 'Falla Multiorganica Sistemica'),
(17, 'Falla Multisistemica'),
(18, 'Falla Respiratoria Aguda'),
(19, 'Falla Ventilatoria'),
(20, 'Falla Ventilatoria Aguda'),
(21, 'Fallo Multiorganico'),
(22, 'Fella Hepatica'),
(23, 'Hipoxia  Anoxia'),
(24, 'Hipoxia Cerebral'),
(25, 'Infarto Agudo Del Miocardio'),
(26, 'Indeterminada'),
(27, 'Infeccion Por Covid'),
(28, 'Insuficiencia Respiratoria Aguda Hipercapnica Hipo'),
(29, 'Insuficiencia Respiratoria Aguda'),
(30, 'Insuficiencia Respira'),
(31, 'Insuficiencia Respiratoria'),
(32, 'Insuficiencia Respiratoria Aguda'),
(33, 'Insuficiencia Respiratoria Aguda Grave'),
(34, 'Insuficiencia Respiratoria Aguda Subita'),
(35, 'Natural'),
(36, 'Neumonia Baceriana'),
(37, 'No Identificada'),
(38, 'Paro Cardiorespiratorio'),
(39, 'Paro Respiratorio'),
(40, 'Schock Cardiogenico'),
(41, 'Sepsis De Origen Pulmonar'),
(42, 'Shock Cardiogenico'),
(43, 'Shock Mixto'),
(44, 'Shock Mixto Cardiogenico Y Septico'),
(45, 'Shock Septico'),
(46, 'Shok Septico De Origen Pulmonar'),
(47, 'Sifilis'),
(48, 'Sindrome Coronario Agudo'),
(49, 'Sindrome De Dificultad Respiratoria Aguda Severa'),
(50, 'Sindrome De Disfuncion Multiorganica'),
(51, 'Sindrome De Falla Multiorganica'),
(52, 'Sindrome Disfuncion Multiorganica'),
(53, 'Sock Cardiogenico'),
(54, 'Sufrimiento Fetal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosfallecido`
--

CREATE TABLE `datosfallecido` (
  `IdDatosFallecido` int(11) NOT NULL,
  `IdTipoDocumento` int(11) NOT NULL,
  `FechaNacimientoFallecido` date NOT NULL,
  `FechaDefuncion` date NOT NULL,
  `IdSexo` int(11) NOT NULL,
  `IdMunicipio` int(11) NOT NULL,
  `IdNombreArea` int(11) NOT NULL,
  `IdEstadoCivil` int(11) NOT NULL,
  `IdNivelEducativo` int(11) NOT NULL,
  `IdSitioDefuncion` int(11) NOT NULL,
  `IdInstitucion` int(11) NOT NULL,
  `IdTipoDefuncion` int(11) NOT NULL,
  `IdProbableManeraMuerte` int(11) NOT NULL,
  `IdCausaDirecta` int(11) NOT NULL,
  `IdOcupacion` int(11) NOT NULL,
  `IdRegimenSeguridad` int(11) NOT NULL,
  `IdAdministradoraSeguridad` int(11) NOT NULL,
  `IdPertenenciaEtnica` int(11) NOT NULL,
  `IdGrupoIndigena` int(11) NOT NULL,
  `e` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datosfallecido`
--

INSERT INTO `datosfallecido` (`IdDatosFallecido`, `IdTipoDocumento`, `FechaNacimientoFallecido`, `FechaDefuncion`, `IdSexo`, `IdMunicipio`, `IdNombreArea`, `IdEstadoCivil`, `IdNivelEducativo`, `IdSitioDefuncion`, `IdInstitucion`, `IdTipoDefuncion`, `IdProbableManeraMuerte`, `IdCausaDirecta`, `IdOcupacion`, `IdRegimenSeguridad`, `IdAdministradoraSeguridad`, `IdPertenenciaEtnica`, `IdGrupoIndigena`, `e`) VALUES
(1, 1, '2016-11-30', '2022-11-30', 2, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, ''),
(2, 1, '2016-01-01', '2016-01-01', 2, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ''),
(3, 4, '2016-01-01', '2025-01-01', 1, 5, 1, 2, 5, 1, 1, 1, 2, 8, 7, 1, 6, 1, 1, ''),
(4, 1, '2016-01-01', '2021-01-01', 2, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ''),
(5, 3, '2017-01-01', '2025-01-01', 2, 5, 1, 2, 2, 1, 1, 1, 1, 3, 5, 2, 3, 1, 1, ''),
(9, 1, '2016-01-01', '2017-01-01', 2, 11, 2, 3, 6, 2, 1, 1, 1, 14, 19, 1, 2, 2, 2, ''),
(10, 3, '2016-01-01', '2020-04-03', 2, 4, 2, 5, 1, 1, 1, 1, 1, 13, 20, 3, 8, 2, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `IdDepartamento` int(11) NOT NULL,
  `IdPais` int(11) DEFAULT NULL,
  `NombreDepartamento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`IdDepartamento`, `IdPais`, `NombreDepartamento`) VALUES
(1, 1, 'Santander'),
(2, 1, 'Bogotá D.C'),
(3, 1, 'Bolivar'),
(4, 1, 'Norte de Santander'),
(5, 1, 'Cesar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil` (
  `IdEstadoCivil` int(11) NOT NULL,
  `EstadoCivil` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadocivil`
--

INSERT INTO `estadocivil` (`IdEstadoCivil`, `EstadoCivil`) VALUES
(1, 'Estaba casado(A)'),
(2, 'Estaba separado(A) Divorciado('),
(3, 'Estaba Soltero(A)'),
(4, 'Estaba Viudo(A)'),
(5, 'No Estaba Casado(A) y Llevaba Dos Años o más Viviendo Con su Pareja'),
(6, 'No Estaba Casado(A) Y Llevaba Menos de Dos Años Viviendo Con Su Pareja'),
(7, 'Sin información');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupoindigena`
--

CREATE TABLE `grupoindigena` (
  `IdGrupoIndigena` int(11) NOT NULL,
  `GrupoIndigena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupoindigena`
--

INSERT INTO `grupoindigena` (`IdGrupoIndigena`, `GrupoIndigena`) VALUES
(1, 'Si'),
(2, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `IdInstitucion` int(11) NOT NULL,
  `CodInstitucion` varchar(13) NOT NULL,
  `NombreInstitucion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`IdInstitucion`, `CodInstitucion`, `NombreInstitucion`) VALUES
(1, '680010070101', 'Hospital Local del Norte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `IdMunicipio` int(11) NOT NULL,
  `IdDepartamento` int(11) DEFAULT NULL,
  `NombreMunicipio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`IdMunicipio`, `IdDepartamento`, `NombreMunicipio`) VALUES
(3, 2, 'Bogota'),
(4, 1, 'San Gil'),
(5, 1, 'Aguada'),
(6, 1, 'Matanza'),
(7, 3, 'Simita'),
(8, 1, 'San Vicente de Chucuri'),
(9, 1, 'Piedecuesta'),
(10, 1, 'Giron'),
(11, 1, 'Floridablanca'),
(12, 1, 'Lebrija'),
(13, 1, 'Rionegro'),
(14, 4, 'La esperanza'),
(15, 3, 'Santa Rosa del Sur'),
(16, 1, 'San Jose de Miranda'),
(17, 5, 'Aguachica'),
(18, 1, 'Simacota'),
(19, 1, 'Charta'),
(20, 1, 'El playón '),
(21, 1, 'Cabrera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `niveleducativo`
--

CREATE TABLE `niveleducativo` (
  `IdNivelEducativo` int(11) NOT NULL,
  `NivelEducativo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `niveleducativo`
--

INSERT INTO `niveleducativo` (`IdNivelEducativo`, `NivelEducativo`) VALUES
(1, 'Básica primaria'),
(2, 'Básica Secundaria'),
(3, 'Especialización '),
(4, 'Media Academica o Clasica'),
(5, 'Media Tecnica'),
(6, 'Ninguno'),
(7, 'Preescolar'),
(8, 'Profesional'),
(9, 'Sin Información');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacion`
--

CREATE TABLE `ocupacion` (
  `IdOcupacion` int(11) NOT NULL,
  `Ocupacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ocupacion`
--

INSERT INTO `ocupacion` (`IdOcupacion`, `Ocupacion`) VALUES
(1, 'Agentes Comerciales y Corredores, no Clasificados Bajo Otros Epigrafes'),
(2, 'Agronomos y Afines'),
(3, 'Agricultores de Cultivos Permanentes (Plantaciones de Árboles y Arbustos)'),
(4, 'Agricultores de Cultivos Transitorios'),
(5, 'Albañiles, Mamposteros y Afines'),
(6, 'Ayudante de Taller, Mecanica, Vehiculos de Motor y Afines'),
(7, 'Carpinteros de Armar y de Blanco'),
(8, 'Conductores de Camiones y Vehiculos Pesados'),
(9, 'Conductores de Taxis'),
(10, 'Coordinadores y Supervisores de Ventas y Comercializacion'),
(11, 'Directores de Departamentos de Produccion y Operaciones en Agricultura, Caza, Silvicultura y Pesca'),
(12, 'Directores de Departamentos de Produccion y Operaciones en Comercio Mayorista y Minoristas'),
(13, 'Directores de Departamentos de Ventas y Comercializacion'),
(14, 'Encargados de Servicios de Transporte'),
(15, 'Estudiante'),
(16, 'Hogar'),
(17, 'Limpiabotas y Otros Trabajadores Callejeros'),
(18, 'Medicos, Profesionales en Ciencias de la Salud y Afines, no Clasificados Bajo Otros Epigrafes'),
(19, 'Obreros y Peones Agropecuarios de Labranza y de Invernadero'),
(20, 'Operarios de la Fotografia y Afines'),
(21, 'Pensionado'),
(22, 'Profesores e Instructores de Educacion Especial'),
(23, 'Representantes Comerciales y Tecnicos de ventas'),
(24, 'Sin Informacion'),
(25, 'Soldadores y Oxicortadores'),
(26, 'Tecnicos, Postsecundarios No Universitarios y Asistentes en Operaciones Comerciales, No Clasificados'),
(27, 'Tejedores Con Telares o de Tejidos de Punto y Afines'),
(28, 'Trabajadores Sociales y Afines'),
(29, 'Vendedores Ambulantes'),
(30, 'Vendedores, Demostradores de Tiendas y Almacenes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `IdPais` int(11) NOT NULL,
  `NombrePais` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`IdPais`, `NombrePais`) VALUES
(1, 'Colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenenciaetnica`
--

CREATE TABLE `pertenenciaetnica` (
  `IdPertenenciaEtnica` int(11) NOT NULL,
  `PertenenciaEtnica` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pertenenciaetnica`
--

INSERT INTO `pertenenciaetnica` (`IdPertenenciaEtnica`, `PertenenciaEtnica`) VALUES
(1, 'Negro(A), Mulato(A), Afro Colombiano(A) '),
(2, 'Ninguno De Los Anteriores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `probablemaneramuerte`
--

CREATE TABLE `probablemaneramuerte` (
  `IdProbableManeraMuerte` int(11) NOT NULL,
  `ProbableManeraMuerte` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `probablemaneramuerte`
--

INSERT INTO `probablemaneramuerte` (`IdProbableManeraMuerte`, `ProbableManeraMuerte`) VALUES
(1, 'Natural'),
(2, 'Violenta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimenseguridad`
--

CREATE TABLE `regimenseguridad` (
  `IdRegimenSeguridad` int(11) NOT NULL,
  `RegimenSeguridad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `regimenseguridad`
--

INSERT INTO `regimenseguridad` (`IdRegimenSeguridad`, `RegimenSeguridad`) VALUES
(1, 'Contributivo'),
(2, 'Excepcion'),
(3, 'No Asegurado'),
(4, 'Subsidiado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexo`
--

CREATE TABLE `sexo` (
  `IdSexo` int(11) NOT NULL,
  `Sexo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sexo`
--

INSERT INTO `sexo` (`IdSexo`, `Sexo`) VALUES
(1, 'Femenino'),
(2, 'Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitiodefuncion`
--

CREATE TABLE `sitiodefuncion` (
  `IdSitioDefuncion` int(11) NOT NULL,
  `SitioDefuncion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sitiodefuncion`
--

INSERT INTO `sitiodefuncion` (`IdSitioDefuncion`, `SitioDefuncion`) VALUES
(1, 'Casa/Domicilio'),
(2, 'Hospital/Clinica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodefuncion`
--

CREATE TABLE `tipodefuncion` (
  `IdTipoDefuncion` int(11) NOT NULL,
  `TipoDefuncion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipodefuncion`
--

INSERT INTO `tipodefuncion` (`IdTipoDefuncion`, `TipoDefuncion`) VALUES
(1, 'No Fetal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `IdTipoDocumento` int(11) NOT NULL,
  `TipoDocumento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipodocumento`
--

INSERT INTO `tipodocumento` (`IdTipoDocumento`, `TipoDocumento`) VALUES
(1, 'Adulto sin identificación '),
(2, 'Cedula de Ciudadania'),
(3, 'Cedula de Extranjería'),
(4, 'Documento Extranjero'),
(5, 'Pasaporte'),
(6, 'Permiso especial de permanenci'),
(7, 'Registro Civil'),
(8, 'Sin Información ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradoraseguridad`
--
ALTER TABLE `administradoraseguridad`
  ADD PRIMARY KEY (`IdAdministradoraSeguridad`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`IdArea`);

--
-- Indices de la tabla `causadirecta`
--
ALTER TABLE `causadirecta`
  ADD PRIMARY KEY (`IdCausaDirecta`);

--
-- Indices de la tabla `datosfallecido`
--
ALTER TABLE `datosfallecido`
  ADD PRIMARY KEY (`IdDatosFallecido`),
  ADD KEY `IdAdministradoraSeguridad` (`IdAdministradoraSeguridad`),
  ADD KEY `IdCausaDirecta` (`IdCausaDirecta`),
  ADD KEY `IdEstadoCivil` (`IdEstadoCivil`),
  ADD KEY `IdGrupoIndigena` (`IdGrupoIndigena`),
  ADD KEY `IdInstitucion` (`IdInstitucion`),
  ADD KEY `IdNivelEducativo` (`IdNivelEducativo`),
  ADD KEY `IdNombreArea` (`IdNombreArea`),
  ADD KEY `IdOcupacion` (`IdOcupacion`),
  ADD KEY `IdPertenenciaEtnica` (`IdPertenenciaEtnica`),
  ADD KEY `IdProbableManeraMuerte` (`IdProbableManeraMuerte`),
  ADD KEY `IdRegimenSeguridad` (`IdRegimenSeguridad`),
  ADD KEY `IdSexo` (`IdSexo`),
  ADD KEY `IdSitioDefuncion` (`IdSitioDefuncion`),
  ADD KEY `IdTipoDefuncion` (`IdTipoDefuncion`),
  ADD KEY `IdTipoDocumento` (`IdTipoDocumento`),
  ADD KEY `IdMunicipio` (`IdMunicipio`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`IdDepartamento`),
  ADD KEY `IdPais` (`IdPais`);

--
-- Indices de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`IdEstadoCivil`);

--
-- Indices de la tabla `grupoindigena`
--
ALTER TABLE `grupoindigena`
  ADD PRIMARY KEY (`IdGrupoIndigena`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`IdInstitucion`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`IdMunicipio`),
  ADD KEY `IdDepartamento` (`IdDepartamento`);

--
-- Indices de la tabla `niveleducativo`
--
ALTER TABLE `niveleducativo`
  ADD PRIMARY KEY (`IdNivelEducativo`);

--
-- Indices de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  ADD PRIMARY KEY (`IdOcupacion`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`IdPais`);

--
-- Indices de la tabla `pertenenciaetnica`
--
ALTER TABLE `pertenenciaetnica`
  ADD PRIMARY KEY (`IdPertenenciaEtnica`);

--
-- Indices de la tabla `probablemaneramuerte`
--
ALTER TABLE `probablemaneramuerte`
  ADD PRIMARY KEY (`IdProbableManeraMuerte`);

--
-- Indices de la tabla `regimenseguridad`
--
ALTER TABLE `regimenseguridad`
  ADD PRIMARY KEY (`IdRegimenSeguridad`);

--
-- Indices de la tabla `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`IdSexo`);

--
-- Indices de la tabla `sitiodefuncion`
--
ALTER TABLE `sitiodefuncion`
  ADD PRIMARY KEY (`IdSitioDefuncion`);

--
-- Indices de la tabla `tipodefuncion`
--
ALTER TABLE `tipodefuncion`
  ADD PRIMARY KEY (`IdTipoDefuncion`);

--
-- Indices de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`IdTipoDocumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradoraseguridad`
--
ALTER TABLE `administradoraseguridad`
  MODIFY `IdAdministradoraSeguridad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `IdArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `causadirecta`
--
ALTER TABLE `causadirecta`
  MODIFY `IdCausaDirecta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `datosfallecido`
--
ALTER TABLE `datosfallecido`
  MODIFY `IdDatosFallecido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  MODIFY `IdEstadoCivil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `grupoindigena`
--
ALTER TABLE `grupoindigena`
  MODIFY `IdGrupoIndigena` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `IdInstitucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `IdMunicipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `niveleducativo`
--
ALTER TABLE `niveleducativo`
  MODIFY `IdNivelEducativo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  MODIFY `IdOcupacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `IdPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pertenenciaetnica`
--
ALTER TABLE `pertenenciaetnica`
  MODIFY `IdPertenenciaEtnica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `probablemaneramuerte`
--
ALTER TABLE `probablemaneramuerte`
  MODIFY `IdProbableManeraMuerte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `regimenseguridad`
--
ALTER TABLE `regimenseguridad`
  MODIFY `IdRegimenSeguridad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sexo`
--
ALTER TABLE `sexo`
  MODIFY `IdSexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sitiodefuncion`
--
ALTER TABLE `sitiodefuncion`
  MODIFY `IdSitioDefuncion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipodefuncion`
--
ALTER TABLE `tipodefuncion`
  MODIFY `IdTipoDefuncion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `IdTipoDocumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`IdPais`) REFERENCES `pais` (`IdPais`);

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`IdDepartamento`) REFERENCES `departamento` (`IdDepartamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
