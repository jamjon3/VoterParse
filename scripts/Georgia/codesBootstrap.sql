
CREATE DATABASE IF NOT EXISTS `GeorgiaVoterData` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

CREATE DATABASE IF NOT EXISTS `GeorgiaVoterCodes` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `GeorgiaVoterCodes`;

CREATE TABLE IF NOT EXISTS `County Codes` (
  `County Code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `County Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`County Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('001','Appling');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('002','Atkinson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('003','Bacon');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('004','Baker');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('005','Baldwin');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('006','Banks');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('007','Barrow');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('008','Bartow');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('009','Ben Hill');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('010','Berrien');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('011','Bibb');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('012','Bleckley');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('013','Brantley');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('014','Brooks');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('015','Bryan');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('016','Bulloch');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('017','Burke');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('018','Butts');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('019','Calhoun');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('020','Camden');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('021','Candler');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('022','Carroll');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('023','Catoosa');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('024','Charlton');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('025','Chatham');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('026','Chattahoochee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('027','Chattooga');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('028','Cherokee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('029','Clarke');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('030','Clay');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('031','Clayton');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('032','Clinch');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('033','Cobb');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('034','Coffee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('035','Colquitt');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('036','Columbia');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('037','Cook');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('038','Coweta');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('039','Crawford');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('040','Crisp');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('041','Dade');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('042','Dawson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('043','Decatur');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('044','DeKalb');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('045','Dodge');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('046','Dooly');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('047','Dougherty');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('048','Douglas');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('049','Early');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('050','Echols');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('051','Effingham');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('052','Elbert');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('053','Emanuel');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('054','Evans');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('055','Fannin');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('056','Fayette');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('057','Floyd');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('058','Forsyth');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('059','Franklin');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('060','Fulton');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('061','Gilmer');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('062','Glascock');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('063','Glynn');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('064','Gordon');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('065','Grady');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('066','Greene');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('067','Gwinnett');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('068','Habersham');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('069','Hall');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('070','Hancock');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('071','Haralson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('072','Harris');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('073','Hart');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('074','Heard');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('075','Henry');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('076','Houston');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('077','Irwin');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('078','Jackson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('079','Jasper');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('080','Jeff Davis');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('081','Jefferson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('082','Jenkins');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('083','Johnson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('084','Jones');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('085','Lamar');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('086','Lanier');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('087','Laurens');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('088','Lee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('089','Liberty');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('090','Lincoln');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('091','Long');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('092','Lowndes');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('093','Lumpkin');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('094','Macon');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('095','Madison');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('096','Marion');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('097','McDuffie');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('098','McIntosh');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('099','Meriwether');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('100','Miller');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('101','Mitchell');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('102','Monroe');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('103','Montgomery');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('104','Morgan');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('105','Murray');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('106','Muscogee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('107','Newton');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('108','Oconee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('109','Oglethorpe');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('110','Paulding');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('111','Peach');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('112','Pickens');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('113','Pierce');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('114','Pike');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('115','Polk');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('116','Pulaski');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('117','Putnam');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('118','Quitman');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('119','Rabun');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('120','Randolph');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('121','Richmond');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('122','Rockdale');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('123','Schley');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('124','Screven');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('125','Seminole');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('126','Spalding');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('127','Stephens');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('128','Stewart');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('129','Sumter');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('130','Talbot');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('131','Taliaferro');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('132','Tattnall');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('133','Taylor');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('134','Telfair');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('135','Terrell');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('136','Thomas');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('137','Tift');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('138','Toombs');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('139','Towns');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('140','Treutlen');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('141','Troup');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('142','Turner');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('143','Twiggs');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('144','Union');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('145','Upson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('146','Walker');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('147','Walton');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('148','Ware');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('149','Warren');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('150','Washington');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('151','Wayne');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('152','Webster');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('153','Wheeler');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('154','White');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('155','Whitfield');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('156','Wilcox');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('157','Wilkes');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('158','Wilkinson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('159','Worth');

CREATE TABLE IF NOT EXISTS `Election Type Codes` (
  `Election Type Code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `Election Type Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Election Type Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('000','Unknown');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('001','General Primary');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('002','General Primary Runoff');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('003','General Election');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('004','General Election Runoff');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('005','Special Election');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('006','Special Election Runoff');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('007','Municipal Election');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('008','Recall');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('009','Presidential Primary');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('010','Muni Election Runoff');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('011','Muni Special Election');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('012','Muni Special Election Runoff');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('013','Muni General Primary');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('014','Muni General Primary Runoff');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('015','Muni Special Primary');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('016','Muni Special Primary Runoff');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('017','Special Primary');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('018','Special Primary Runoff');
INSERT INTO `Election Type Codes` (`Election Type Code`,`Election Type Description`) VALUES ('019','Municipal Recall');

CREATE TABLE IF NOT EXISTS `Gender Codes` (
  `Gender Code` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `Gender Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Gender Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Gender Codes` (`Gender Code`,`Gender Description`) VALUES ('F','Female');
INSERT INTO `Gender Codes` (`Gender Code`,`Gender Description`) VALUES ('M','Male');
INSERT INTO `Gender Codes` (`Gender Code`,`Gender Description`) VALUES ('U','Unknown');

CREATE TABLE IF NOT EXISTS `Race Codes` (
  `Race Code` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `Race Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Race Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES ('B','Race Black');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES ('O','Race Another');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES ('U','Race Unknown');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES ('W','Race White');

CREATE TABLE IF NOT EXISTS `Voter Status Codes` (
  `Status Code` varchar(3) NOT NULL,
  `Status Description` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Status Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Voter Status Codes` (`Status Code`,`Status Description`) VALUES (' ','Deleted Voter');
INSERT INTO `Voter Status Codes` (`Status Code`,`Status Description`) VALUES ('A','Active Voter');
INSERT INTO `Voter Status Codes` (`Status Code`,`Status Description`) VALUES ('I','Inactive Voter');
