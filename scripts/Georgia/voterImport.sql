SET @importFile = :importFile;
SELECT 
    STR_TO_DATE(@importFile,'%Y-%m-%d') AS date
/**
    SUBSTR(@importFile,1,3) AS CountyCode,
    (
        SELECT 
            REPLACE(REPLACE(`County Description`,'.',''),'-',' ') AS FriendlyCountyName
            FROM `GeorgiaVoterCodes`.`County Codes` 
        WHERE `County Code`=SUBSTR(@importFile,1,3)
    ) AS CountyName
**/
INTO
    -- @importDateString,
    @importDate
    -- @countyCode,
    -- @countyName
FROM DUAL;

USE `GeorgiaVoterData`;

CREATE TABLE IF NOT EXISTS `Voters` (
  `County Code` char(3) NOT NULL,
  `Registration Number` varchar(8) NOT NULL DEFAULT '',
  `Voter Status` char(1) DEFAULT NULL,
  `Voter Last Name` varchar(20) DEFAULT NULL,
  `Voter First Name` varchar(20) DEFAULT NULL,
  `Voter Middle or Maiden Name` varchar(20) DEFAULT NULL,
  `Voter Name Suffix` char(3) DEFAULT NULL,
  `Voter Name Title` char(3) DEFAULT NULL,
  `Residence House Number` varchar(6) DEFAULT NULL,
  `Residence Street Name` varchar(30) DEFAULT NULL,
  `Residence Street Suffix` char(2) DEFAULT NULL,
  `Residence Apartment Number` varchar(8) DEFAULT NULL,
  `Residence City` varchar(17) DEFAULT NULL,
  `Residence Five Digit Zip` varchar(5) DEFAULT NULL,
  `Residence Plus Four Zip` varchar(4) DEFAULT NULL,
  `Filler 1` char(2) DEFAULT NULL,
  `Filler 2` varchar(9) DEFAULT NULL,
  `Date of Birth` date DEFAULT NULL,
  `Registration Date` date DEFAULT NULL,
  `Race` char(1) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Absentee` char(1) DEFAULT NULL,
  `Land District` char(3) DEFAULT NULL,
  `Land Lot` char(4) DEFAULT NULL,
  `Old County Registration Date` date DEFAULT NULL,
  `Old County Registration Number` varchar(14) DEFAULT NULL,
  `County Precinct ID` varchar(5) DEFAULT NULL,
  `City Precinct ID` varchar(5) DEFAULT NULL,
  `Congressional District` char(3) DEFAULT NULL,
  `Senate District` char(3) DEFAULT NULL,
  `House District` char(3) DEFAULT NULL,
  `Judicial District` char(3) DEFAULT NULL,
  `County Commission District` char(3) DEFAULT NULL,
  `School District` char(3) DEFAULT NULL,
  `County District A Name` varchar(13) DEFAULT NULL,
  `County District A Value` char(3) DEFAULT NULL,
  `County District B Name` varchar(13) DEFAULT NULL,
  `County District B Value` char(3) DEFAULT NULL,
  `Municipal Name` varchar(17) DEFAULT NULL,
  `Municipal Code` char(3) DEFAULT NULL,
  `Ward City Council Name` varchar(13) DEFAULT NULL,
  `Ward City Council Value` char(3) DEFAULT NULL,
  `City School District Name` varchar(13) DEFAULT NULL,
  `City School District Value` char(3) DEFAULT NULL,
  `City District A Name` varchar(13) DEFAULT NULL,
  `City District A Value` char(3) DEFAULT NULL,
  `City District B Name` varchar(13) DEFAULT NULL,
  `City District B Value` char(3) DEFAULT NULL,
  `City District C Name` varchar(13) DEFAULT NULL,
  `City District C Value` char(3) DEFAULT NULL,
  `City District D Name` varchar(13) DEFAULT NULL,
  `City District D Value` char(3) DEFAULT NULL,
  `Date Last Voted` date DEFAULT NULL,
  `Election Type Code` char(3) DEFAULT NULL,
  `Party Last Voted` char(1) DEFAULT NULL,
  `Last Contact Date` date DEFAULT NULL,
  `Mailing Address House Number` varchar(6) DEFAULT NULL,
  `Mailing Address Street Name` varchar(30) DEFAULT NULL,
  `Mailing Address Street Suffix` char(2) DEFAULT NULL,
  `Mailing Address Apartment Number` varchar(8) DEFAULT NULL,
  `Mailing Address City` varchar(17) DEFAULT NULL,
  `Mailing Address State` char(2) DEFAULT NULL,
  `Mailing Address Five Digit Zip` varchar(5) DEFAULT NULL,
  `Mailing Address Plus Four Zip` char(4) DEFAULT NULL,
  `Filler 3` char(2) DEFAULT NULL,
  `Mailing Address Second Line` varchar(30) DEFAULT NULL,
  `Mailing Address Third Line` varchar(30) DEFAULT NULL,
  `Mailing Address Country` varchar(20) DEFAULT NULL,
  `Date Record Added` date DEFAULT NULL,
  `Date Record Changed` date DEFAULT NULL,
  `District Combo` char(3) DEFAULT NULL,
  `Residence Building Designation` char(3) DEFAULT NULL,
  `Mailing Address Rural Route or Post Office Box` varchar(8) DEFAULT NULL,
  `Combined Street Address` text,
  `Extract Date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`County Code`,`Registration Number`,`Extract Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `Voters` WHERE `Export Date`=@importDate;

DROP TEMPORARY TABLE IF EXISTS countyTemp;

CREATE TEMPORARY TABLE countyTemp LIKE `Voters`;

LOAD DATA LOCAL INFILE '/tmp/vparseImport.txt'
    INTO TABLE countyTemp
    LINES TERMINATED BY '\r\n'
    (@record)
    SET `Export Date` = STR_TO_DATE('0000-00-00','%Y%m%d'),
	`County Code` = SUBSTR(@record,0,3),
	`Registration Number` = SUBSTR(@record,3,8),
	`Voter Status` = SUBSTR(@record,11,1),
	`Voter Last Name` = SUBSTR(@record,12,20),
	`Voter First Name` = SUBSTR(@record,32,20),
	`Voter Middle or Maiden Name` = SUBSTR(@record,52,20),
	`Voter Name Suffix` = SUBSTR(@record,72,3),
	`Voter Name Title` = SUBSTR(@record,75,3),
	`Residence House Number` = SUBSTR(@record,78,6),
	`Residence Street Name` = SUBSTR(@record,84,30),
	`Residence Street Suffix` = SUBSTR(@record,114,2),
	`Residence Apartment Number` = SUBSTR(@record,116,8),
	`Residence City` = SUBSTR(@record,124,17),
	`Residence Five Digit Zip` = SUBSTR(@record,141,5),
	`Residence Plus Four Zip` = SUBSTR(@record,146,4),
	`Filler 1` = SUBSTR(@record,150,2),
	`Filler 2` = SUBSTR(@record,152,9),
	`Date of Birth` = STR_TO_DATE(SUBSTR(@record,161,8),'%Y%m%d'),
	`Registration Date` = STR_TO_DATE(SUBSTR(@record,169,8),'%Y%m%d'),
	`Race` = SUBSTR(@record,177,1),
	`Gender` = SUBSTR(@record,178,1),
	`Absentee` = SUBSTR(@record,179,1),
	`Land District` = SUBSTR(@record,180,3),
	`Land Lot` = SUBSTR(@record,183,4),
	`Old County Registration Date` = STR_TO_DATE(SUBSTR(@record,187,8),'%Y%m%d'),
	`Old County Registration Number` = SUBSTR(@record,195,14),
	`County Precinct ID` = SUBSTR(@record,209,5),
	`City Precinct ID` = SUBSTR(@record,214,5),
	`Congressional District` = SUBSTR(@record,219,3),
	`Senate District` = SUBSTR(@record,222,3),
	`House District` = SUBSTR(@record,225,3),
	`Judicial District` = SUBSTR(@record,228,3),
	`County Commission District` = SUBSTR(@record,231,3),
	`School District` = SUBSTR(@record,234,3),
	`County District A Name` = SUBSTR(@record,237,13),
	`County District A Value` = SUBSTR(@record,250,3),
	`County District B Name` = SUBSTR(@record,253,13),
	`County District B Value` = SUBSTR(@record,266,3),
	`Municipal Name` = SUBSTR(@record,269,17),
	`Municipal Code` = SUBSTR(@record,286,3),
	`Ward City Council Name` = SUBSTR(@record,289,13),
	`Ward City Council Value` = SUBSTR(@record,302,3),
	`City School District Name` = SUBSTR(@record,305,13),
	`City School District Value` = SUBSTR(@record,318,3),
	`City District A Name` = SUBSTR(@record,321,13),
	`City District A Value` = SUBSTR(@record,334,3),
	`City District B Name` = SUBSTR(@record,337,13),
	`City District B Value` = SUBSTR(@record,350,3),
	`City District C Name` = SUBSTR(@record,353,13),
	`City District C Value` = SUBSTR(@record,366,3),
	`City District D Name` = SUBSTR(@record,369,13),
	`City District D Value` = SUBSTR(@record,382,3),
	`Date Last Voted` = STR_TO_DATE(SUBSTR(@record,385,8),'%Y%m%d'),
	`Election Type Code` = SUBSTR(@record,393,3),
	`Party Last Voted` = SUBSTR(@record,396,1),
	`Last Contact Date` = STR_TO_DATE(SUBSTR(@record,397,8),'%Y%m%d'),
	`Mailing Address House Number` = SUBSTR(@record,405,6),
	`Mailing Address Street Name` = SUBSTR(@record,411,30),
	`Mailing Address Street Suffix` = SUBSTR(@record,441,2),
	`Mailing Address Apartment Number` = SUBSTR(@record,443,8),
	`Mailing Address City` = SUBSTR(@record,451,17),
	`Mailing Address State` = SUBSTR(@record,468,2),
	`Mailing Address Five Digit Zip` = SUBSTR(@record,470,5),
	`Mailing Address Plus Four Zip` = SUBSTR(@record,475,4),
	`Filler 3` = SUBSTR(@record,479,2),
	`Mailing Address Second Line` = SUBSTR(@record,481,30),
	`Mailing Address Third Line` = SUBSTR(@record,511,30),
	`Mailing Address Country` = SUBSTR(@record,541,20),
	`Date Record Added` = STR_TO_DATE(SUBSTR(@record,561,8),'%Y%m%d'),
	`Date Record Changed` = STR_TO_DATE(SUBSTR(@record,569,8),'%Y%m%d'),
	`District Combo` = SUBSTR(@record,577,3),
	`Residence Building Designation` = SUBSTR(@record,580,3),
	`Mailing Address Rural Route or Post Office Box` = SUBSTR(@record,583,8),
	`Combined Street Address` = SUBSTR(@record,591,60);

UPDATE countyTemp SET `Export Date` = @importDate;

INSERT INTO `Voters` SELECT * FROM countyTemp;

CALL `GeorgiaVoterCodes`.`buildCountyVoters`(@importDate);

DROP TEMPORARY TABLE IF EXISTS countyTemp;

