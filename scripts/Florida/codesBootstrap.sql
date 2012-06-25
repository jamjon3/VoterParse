
CREATE DATABASE IF NOT EXISTS `FloridaVoterData` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

CREATE DATABASE IF NOT EXISTS `FloridaVoterCodes` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `FloridaVoterCodes`;

CREATE TABLE IF NOT EXISTS `County Codes` (
  `County Code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `County Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`County Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('ALA','Alachua');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('BAK','Baker');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('BAY','Bay');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('BRA','Bradford');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('BRE','Brevard');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('BRO','Broward');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('CAL','Calhoun');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('CHA','Charlotte');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('CIT','Citrus');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('CLA','Clay');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('CLL','Collier');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('CLM','Columbia');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('DAD','Miami-Dade');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('DES','Desoto');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('DIX','Dixie');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('DUV','Duval');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('ESC','Escambia');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('FLA','Flagler');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('FRA','Franklin');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('GAD','Gadsden');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('GIL','Gilchrist');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('GLA','Glades');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('GUL','Gulf');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('HAM','Hamilton');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('HAR','Hardee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('HEN','Hendry');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('HER','Hernando');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('HIG','Highlands');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('HIL','Hillsborough');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('HOL','Holmes');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('IND','Indian River');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('JAC','Jackson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('JEF','Jefferson');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('LAF','Lafayette');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('LAK','Lake');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('LEE','Lee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('LEO','Leon');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('LEV','Levy');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('LIB','Liberty');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('MAD','Madison');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('MAN','Manatee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('MON','Monroe');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('MRN','Marion');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('MRT','Martin');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('NAS','Nassau');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('OKA','Okaloosa');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('OKE','Okeechobee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('ORA','Orange');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('OSC','Osceola');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('PAL','Palm Beach');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('PAS','Pasco');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('PIN','Pinellas');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('POL','Polk');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('PUT','Putnam');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('SAN','Santa Rosa');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('SAR','Sarasota');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('SEM','Seminole');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('STJ','St. Johns');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('STL','St. Lucie');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('SUM','Sumter');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('SUW','Suwannee');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('TAY','Taylor');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('UNI','Union');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('VOL','Volusia');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('WAK','Wakulla');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('WAL','Walton');
INSERT INTO `County Codes` (`County Code`,`County Description`) VALUES ('WAS','Washington');

CREATE TABLE IF NOT EXISTS `District Court Numbers` (
  `District Court` int(11) unsigned NOT NULL,
  `County Code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `County Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`District Court`,`County Code`),
  KEY `County Code` (`County Code`),
  CONSTRAINT `CountyCodeForDistrictCourtNumbers` FOREIGN KEY (`County Code`) REFERENCES `County Codes` (`County Code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'ALA','Alachua');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'BAK','Baker');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'BAY','Bay');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'BRA','Bradford');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'CAL','Calhoun');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'CLA','Clay');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'CLM','Columbia');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'DIX','Dixie');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'DUV','Duval');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'ESC','Escambia');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'FRA','Franklin');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'GAD','Gadsden');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'GIL','Gilchrist');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'GUL','Gulf');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'HAM','Hamilton');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'HOL','Holmes');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'JAC','Jackson');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'JEF','Jefferson');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'LAF','Lafayette');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'LEO','Leon');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'LEV','Levy');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'LIB','Liberty');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'MAD','Madison');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'NAS','Nassau');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'OKA','Okaloosa');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'SAN','Santa Rosa');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'SUW','Suwannee');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'TAY','Taylor');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'UNI','Union');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'WAK','Wakulla');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'WAL','Walton');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (1,'WAS','Washington');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'CHA','Charlotte');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'CLL','Collier');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'DES','Desoto');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'GLA','Glades');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'HAR','Hardee');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'HEN','Hendry');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'HIG','Highlands');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'HIL','Hillsborough');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'LEE','Lee');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'MAN','Manatee');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'PAS','Pasco');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'PIN','Pinellas');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'POL','Polk');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (2,'SAR','Sarasota');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (3,'DAD','Miami-Dade');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (3,'MON','Monroe');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (4,'BRO','Broward');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (4,'IND','Indian River');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (4,'MRT','Martin');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (4,'OKE','Okeechobee');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (4,'PAL','Palm Beach');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (4,'STL','St. Lucie');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'BRE','Brevard');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'CIT','Citrus');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'FLA','Flagler');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'HER','Hernando');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'LAK','Lake');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'MRN','Marion');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'ORA','Orange');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'OSC','Osceola');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'PUT','Putnam');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'SEM','Seminole');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'STJ','St. Johns');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'SUM','Sumter');
INSERT INTO `District Court Numbers` (`District Court`,`County Code`,`County Description`) VALUES (5,'VOL','Volusia');

CREATE TABLE IF NOT EXISTS `Gender Codes` (
  `Gender Code` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `Gender Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Gender Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Gender Codes` (`Gender Code`,`Gender Description`) VALUES ('F','Female');
INSERT INTO `Gender Codes` (`Gender Code`,`Gender Description`) VALUES ('M','Male');
INSERT INTO `Gender Codes` (`Gender Code`,`Gender Description`) VALUES ('U','Unknown');

CREATE TABLE IF NOT EXISTS `History Codes` (
  `History Code` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `History Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`History Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `History Codes` (`History Code`,`History Description`) VALUES ('A','Voted Absentee');
INSERT INTO `History Codes` (`History Code`,`History Description`) VALUES ('B','Absentee Ballot NOT Counted');
INSERT INTO `History Codes` (`History Code`,`History Description`) VALUES ('E','Voted Early');
INSERT INTO `History Codes` (`History Code`,`History Description`) VALUES ('F','Provisional Ballot – Early Vote');
INSERT INTO `History Codes` (`History Code`,`History Description`) VALUES ('N','Did Not Vote');
INSERT INTO `History Codes` (`History Code`,`History Description`) VALUES ('P','Provisional Ballot Not Counted');
INSERT INTO `History Codes` (`History Code`,`History Description`) VALUES ('Y','Voted at Polls');
INSERT INTO `History Codes` (`History Code`,`History Description`) VALUES ('Z','Provisional Ballot – Vote at Poll');

CREATE TABLE IF NOT EXISTS `Party Codes` (
  `Party Code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `Party Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Party Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('AEL','Americans Elect Florida');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('AIP','American’s Party of Florida ');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('CPF','Constitution Party of Florida ');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('DEM','Florida Democratic Party');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('ECO','Ecology Party of Florida ');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('FPP','Florida Pirate Party');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('FWP','Florida Whig Party ');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('GRE','Green Party of Florida, Inc. ');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('IDP','Independence Party of Florida ');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('INT','Independent Party of Florida ');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('LIB','Libertarian Party of Florida');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('OBJ','Objectivist Party of Florida');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('PSL','Party for Socialism and Liberation-Florida');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('REF','Reform Party ');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('REP','Republican Party of Florida');
INSERT INTO `Party Codes` (`Party Code`,`Party Description`) VALUES ('TPF','Tea Party of Florida');

CREATE TABLE IF NOT EXISTS `Race Codes` (
  `Race Code` int(11) unsigned NOT NULL DEFAULT '0',
  `Race Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Race Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES (1,'American Indian or Alaskan Native');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES (2,'Asian Or Pacific Islander');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES (3,'Black, Not Hispanic');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES (4,'Hispanic');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES (5,'White, Not Hispanic');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES (6,'Other');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES (7,'Multi-racial');
INSERT INTO `Race Codes` (`Race Code`,`Race Description`) VALUES (9,'Unknown');

CREATE TABLE IF NOT EXISTS `Voter Status Codes` (
  `Status Code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Status Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Status Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Voter Status Codes` (`Status Code`,`Status Description`) VALUES ('ACT','Active');
INSERT INTO `Voter Status Codes` (`Status Code`,`Status Description`) VALUES ('INA','Inactive');
INSERT INTO `Voter Status Codes` (`Status Code`,`Status Description`) VALUES ('PRE','Preregister Minors (17 Years Of Age)');




