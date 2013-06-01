-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.6.11 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             7.0.0.4393
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para white_project
CREATE DATABASE IF NOT EXISTS `white_project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `white_project`;


-- Volcando estructura para tabla white_project.acl_modules
DROP TABLE IF EXISTS `acl_modules`;
CREATE TABLE IF NOT EXISTS `acl_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`module_id`),
  UNIQUE KEY `module_name` (`module_name`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla white_project.acl_modules: 9 rows
/*!40000 ALTER TABLE `acl_modules` DISABLE KEYS */;
INSERT INTO `acl_modules` (`module_id`, `module_name`) VALUES
	(1, 'default'),
	(2, 'admin'),
	(3, 'users'),
	(5, 'frontend'),
	(30, 'webservice'),
	(25, 'projects'),
	(27, 'images'),
	(28, 'developers'),
	(29, 'equipo');
/*!40000 ALTER TABLE `acl_modules` ENABLE KEYS */;


-- Volcando estructura para tabla white_project.acl_permissions
DROP TABLE IF EXISTS `acl_permissions`;
CREATE TABLE IF NOT EXISTS `acl_permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(1) NOT NULL,
  `resource_uid` int(4) NOT NULL,
  `permission` varchar(64) CHARACTER SET latin1 NOT NULL,
  `name` varchar(250) CHARACTER SET latin1 NOT NULL,
  `menu` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `fk_acl_permissions_acl_roles` (`role_id`),
  KEY `fk_acl_permissions_acl_resources1` (`resource_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=398 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla white_project.acl_permissions: 71 rows
/*!40000 ALTER TABLE `acl_permissions` DISABLE KEYS */;
INSERT INTO `acl_permissions` (`permission_id`, `role_id`, `resource_uid`, `permission`, `name`, `menu`) VALUES
	(1, 1, 1, 'index', 'Index', 0),
	(9, 6, 8, 'index', 'frontend', 0),
	(11, 6, 11, 'login', 'login', 0),
	(12, 6, 11, 'logout', 'logout', 0),
	(34, 6, 20, 'index', 'index', 0),
	(36, 1, 22, 'index', 'index users', 0),
	(37, 1, 22, 'add', 'add users', 0),
	(38, 1, 22, 'edit', 'edit users', 0),
	(39, 1, 22, 'delete', 'delete users', 0),
	(40, 1, 22, 'editpassword', 'editPassword User', 0),
	(41, 1, 23, 'index', 'index resources', 0),
	(42, 1, 23, 'add', 'add resources', 0),
	(43, 1, 23, 'edit', 'edit resources', 0),
	(44, 1, 23, 'delete', 'delete resource', 0),
	(45, 1, 24, 'index', 'index roles', 0),
	(46, 1, 24, 'edit', 'edit roles', 0),
	(47, 1, 24, 'delete', 'delete roles', 0),
	(48, 1, 25, 'index', 'index permissions', 0),
	(49, 1, 25, 'edit', 'edit permissions', 0),
	(50, 1, 25, 'delete', 'delete permission', 0),
	(51, 1, 26, 'index', 'index modules', 0),
	(52, 1, 26, 'edit', 'edit modules', 0),
	(53, 1, 26, 'add', 'add modules', 1),
	(54, 1, 26, 'delete', 'delete modules', 0),
	(55, 1, 24, 'add', 'add roles', 1),
	(56, 1, 25, 'add', 'add permissions', 0),
	(58, 1, 1, 'listresources', 'List Resources', 1),
	(59, 1, 1, 'checkconfig', 'Check Config', 1),
	(60, 6, 11, 'loginuser', 'Login User', 1),
	(74, 1, 23, 'listresources', 'List Resources', 1),
	(363, 6, 8, 'contacta', 'contacta', 1),
	(136, 1, 1, 'datadump', 'datadump', 1),
	(138, 1, 1, 'dump', 'dumps', 1),
	(139, 1, 1, 'permissionsdump', 'permissionsdump', 1),
	(140, 1, 1, 'restorepermissionsdump', 'restorepermissionsdump', 1),
	(372, 5, 69, 'toggle', 'toggle', 1),
	(371, 6, 11, 'logoutandback', 'logoutandback', 1),
	(370, 5, 69, 'delete', 'delete', 1),
	(227, 1, 54, 'execute', 'execute', 1),
	(367, 5, 69, 'index', 'index', 1),
	(368, 5, 69, 'add', 'add', 1),
	(369, 5, 69, 'edit', 'edit', 1),
	(233, 1, 55, 'delete', 'delete', 1),
	(234, 1, 55, 'toggle', 'toggle', 1),
	(362, 6, 8, 'premios', 'premios', 1),
	(364, 6, 8, 'detalles', 'detalles', 1),
	(347, 1, 65, 'index', 'index', 1),
	(348, 1, 65, 'dojo', 'dojo', 1),
	(359, 6, 8, 'equipo', 'equipo', 1),
	(360, 6, 8, 'proyectos', 'proyectos', 1),
	(361, 6, 8, 'publicaciones', 'publicaciones', 1),
	(373, 1, 70, 'add', 'add', 1),
	(374, 1, 70, 'edit', 'edit', 1),
	(375, 1, 70, 'delete', 'delete', 1),
	(376, 1, 70, 'index', 'index', 1),
	(377, 1, 72, 'index', 'index', 1),
	(378, 1, 72, 'add', 'add', 1),
	(379, 1, 72, 'edit', 'edit', 1),
	(380, 1, 72, 'delete', 'delete', 1),
	(381, 1, 72, 'resize', 'resize', 1),
	(385, 1, 73, 'index', 'index', 1),
	(383, 1, 73, 'useajax', 'useajax', 1),
	(384, 1, 73, 'usedojojs', 'usedojojs', 1),
	(388, 1, 74, 'index', 'index', 1),
	(387, 1, 69, 'addphotoform', 'addphotoform', 1),
	(389, 1, 74, 'add', 'add', 1),
	(390, 1, 74, 'edit', 'edit', 1),
	(391, 1, 74, 'delete', 'delete', 1),
	(392, 1, 75, 'addphoto', 'addphoto', 1),
	(393, 1, 75, 'deletephoto', 'deletephoto', 1),
	(394, 1, 75, 'reloadgallery', 'reloadgallery', 1),
	(395, 5, 76, 'index', 'noseusa', 0),
	(396, 6, 76, 'server', 'server', 0),
	(397, 6, 76, 'client', 'client', 0);
/*!40000 ALTER TABLE `acl_permissions` ENABLE KEYS */;


-- Volcando estructura para tabla white_project.acl_resources
DROP TABLE IF EXISTS `acl_resources`;
CREATE TABLE IF NOT EXISTS `acl_resources` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `resource` varchar(64) CHARACTER SET latin1 NOT NULL,
  `name_r` varchar(250) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `resource` (`resource`),
  KEY `fk_acl_resources_acl_modules1` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla white_project.acl_resources: 17 rows
/*!40000 ALTER TABLE `acl_resources` DISABLE KEYS */;
INSERT INTO `acl_resources` (`uid`, `module_id`, `resource`, `name_r`) VALUES
	(1, 2, 'admin:index', 'Admin'),
	(8, 5, 'frontend:index', 'Frontend'),
	(11, 3, 'users:author', 'Author'),
	(20, 1, 'default:index', 'index'),
	(22, 3, 'users:index', 'Users'),
	(23, 3, 'users:resources', 'resources'),
	(24, 3, 'users:roles', 'roles'),
	(25, 3, 'users:permissions', 'permissions'),
	(26, 3, 'users:modules', 'modules'),
	(54, 2, 'admin:cli', 'cli'),
	(65, 2, 'admin:optimize', 'optimize'),
	(69, 25, 'projects:index', 'index'),
	(70, 26, 'publications:index', 'index'),
	(72, 27, 'images:index', 'index'),
	(73, 28, 'developers:index', 'index'),
	(74, 29, 'equipo:index', 'index'),
	(75, 25, 'projects:ajax', 'ajax'),
	(76, 30, 'webservice:index', 'Nousa');
/*!40000 ALTER TABLE `acl_resources` ENABLE KEYS */;


-- Volcando estructura para tabla white_project.acl_roles
DROP TABLE IF EXISTS `acl_roles`;
CREATE TABLE IF NOT EXISTS `acl_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) CHARACTER SET latin1 NOT NULL,
  `role_parents` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `prefered_uri` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla white_project.acl_roles: 3 rows
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` (`role_id`, `role_name`, `role_parents`, `prefered_uri`) VALUES
	(1, 'Implementor', '5', 'admin'),
	(5, 'Administrator', '6', 'projects'),
	(6, 'Everyone', '0', '0');
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;


-- Volcando estructura para tabla white_project.acl_users
DROP TABLE IF EXISTS `acl_users`;
CREATE TABLE IF NOT EXISTS `acl_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(4) NOT NULL,
  `user_name` varchar(64) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `password` varchar(250) CHARACTER SET latin1 NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `email` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0',
  `person_id` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `validation_code` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `phone` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla white_project.acl_users: 3 rows
/*!40000 ALTER TABLE `acl_users` DISABLE KEYS */;
INSERT INTO `acl_users` (`uid`, `role_id`, `user_name`, `password`, `date`, `email`, `status`, `person_id`, `validation_code`, `phone`) VALUES
	(1, 1, 'Agustín Calderón', '1b51bc5fa5a990a0519ba9a01d8c18f92f241c849e5a442113d67db623ee593c', '2009-05-25 00:00:00', 'agustincl@gmail.com', 1, '0', '0', '687 780 786'),
	(2, 6, 'Guest', '', '0000-00-00 00:00:00', '0', 0, '0', '0', '0'),
	(3, 5, 'WhiteP', '907fb9ce6ff530bf2ec6d5f31bcd85e68f904013b96e3e7db52289914bf6e067', '0000-00-00 00:00:00', 'wp@wp.com', 1, '0', '0', '687 780 786');
/*!40000 ALTER TABLE `acl_users` ENABLE KEYS */;


-- Volcando estructura para tabla white_project.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_eng` varchar(100) COLLATE utf8_bin NOT NULL,
  `category_esp` varchar(100) COLLATE utf8_bin NOT NULL,
  `category_cat` varchar(100) COLLATE utf8_bin NOT NULL,
  `category_short` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla white_project.categories: 10 rows
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `category_eng`, `category_esp`, `category_cat`, `category_short`) VALUES
	(1, 'Planeamiento', 'Planeamiento', 'Planeamiento', 'planeamiento'),
	(2, 'Parques y jardines', 'Parques y jardines', 'Parques y jardines', 'parques_y_jardines'),
	(3, 'Paisaje', 'Paisaje', 'Paisaje', 'paisaje'),
	(4, 'Diseño urbano', 'Diseño urbano', 'Diseño urbano', 'diseno_urbano'),
	(5, 'Mobiliario urbano', 'Mobiliario urbano', 'Mobiliario urbano', 'mobiliario_urbano'),
	(6, 'Interiorismo', 'Interiorismo', 'Interiorismo', 'interiorismo'),
	(7, 'Nueva planta', 'Nueva planta', 'Nueva planta', 'nueva_planta'),
	(8, 'Rehabilitación', 'Rehabilitación', 'Rehabilitación', 'rehabilitacion'),
	(9, 'Efímeros', 'Efímeros', 'Efímeros', 'efimeros'),
	(10, 'Diseño', 'Diseño', 'Diseño', 'diseno');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Volcando estructura para tabla white_project.equipo
DROP TABLE IF EXISTS `equipo`;
CREATE TABLE IF NOT EXISTS `equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipo_esp` text COLLATE utf8_bin,
  `equipo_eng` text COLLATE utf8_bin,
  `equipo_cat` text COLLATE utf8_bin,
  `photo` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '				',
  `description_esp` text COLLATE utf8_bin,
  `description_eng` text COLLATE utf8_bin,
  `description_cat` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla white_project.equipo: 1 rows
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` (`id`, `equipo_esp`, `equipo_eng`, `equipo_cat`, `photo`, `description_esp`, `description_eng`, `description_cat`) VALUES
	(1, 'Datos ESP', 'Datos ENG', 'Datos CAT', 'foto despatx mitja.jpg', 'De derecha a izquierda: Robert de Paauw, arquitecto; Carlota Socías, arquitecta; Imma Jansana, arquitecta; Toni Abelló, arquitecto; Betta Canepa, arquitecta; Barbara Hellin, arquitecta; Loli Casaus, administración; Conchita de la Villa Rivière, arquitecta', '', '');
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;


-- Volcando estructura para tabla white_project.projects
DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` int(1) DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `images` text COLLATE utf8_bin NOT NULL,
  `year` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `presupuesto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `map` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `categories_id` int(11) NOT NULL,
  `photos` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `project_esp` varchar(255) COLLATE utf8_bin NOT NULL,
  `place_esp` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description_esp` text COLLATE utf8_bin,
  `premios_esp` text COLLATE utf8_bin,
  `cliente_esp` text COLLATE utf8_bin,
  `associates_esp` text COLLATE utf8_bin,
  `colaborators_esp` text COLLATE utf8_bin,
  `consultors_esp` text COLLATE utf8_bin COMMENT '	',
  `constructor_esp` text COLLATE utf8_bin,
  `pdf_esp` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `project_cat` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `place_cat` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description_cat` text COLLATE utf8_bin,
  `premios_cat` text COLLATE utf8_bin,
  `cliente_cat` text COLLATE utf8_bin,
  `associates_cat` text COLLATE utf8_bin,
  `colaborators_cat` text COLLATE utf8_bin,
  `consultors_cat` text COLLATE utf8_bin,
  `constructor_cat` text COLLATE utf8_bin,
  `pdf_cat` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `project_eng` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `place_eng` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description_eng` text COLLATE utf8_bin,
  `premios_eng` text COLLATE utf8_bin,
  `cliente_eng` text COLLATE utf8_bin,
  `associates_eng` text COLLATE utf8_bin,
  `colaborators_eng` text COLLATE utf8_bin,
  `consultors_eng` text COLLATE utf8_bin,
  `constructor_eng` text COLLATE utf8_bin,
  `pdf_eng` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `short_name_UNIQUE` (`short_name`),
  KEY `fk_projects_categories1` (`categories_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Volcando datos para la tabla white_project.projects: 1 rows
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` (`id`, `short_name`, `status`, `thumbnail`, `images`, `year`, `area`, `presupuesto`, `map`, `categories_id`, `photos`, `project_esp`, `place_esp`, `description_esp`, `premios_esp`, `cliente_esp`, `associates_esp`, `colaborators_esp`, `consultors_esp`, `constructor_esp`, `pdf_esp`, `project_cat`, `place_cat`, `description_cat`, `premios_cat`, `cliente_cat`, `associates_cat`, `colaborators_cat`, `consultors_cat`, `constructor_cat`, `pdf_cat`, `project_eng`, `place_eng`, `description_eng`, `premios_eng`, `cliente_eng`, `associates_eng`, `colaborators_eng`, `consultors_eng`, `constructor_eng`, `pdf_eng`) VALUES
	(43, 'AAAA', 1, NULL, '', '9999', 'AAAA', 'AAAAA', 'AAAA', 6, 'AAAAA', 'AAAA ES', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'asd', 'asd', 'asd', 'asd', 'asd', 'AAA CA', 'asd', '', '', '', '', '', '', '', '', 'AAA EN', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
