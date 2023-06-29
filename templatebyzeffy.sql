CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('bread', 'Pain', 1, 0, 1),
	('phone', 'Téléphone', 1, 0, 1),
	('radio', 'Radio', 1, 0, 1),
	('water', 'Eau', 1, 0, 1);

CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `jobs` (`name`, `label`) VALUES
	('unemployed', 'Unemployed');

CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}');

CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(46) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(20) DEFAULT 'unemployed',
  `job2_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `position` longtext DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_property` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `last_seen` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(46) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;