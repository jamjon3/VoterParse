SET @importFile = :importFile;
SELECT 
    SUBSTR(SUBSTR(@importFile,-12),1,8) AS date_string,    
    STR_TO_DATE(SUBSTR(SUBSTR(@importFile,-12),1,8),'%Y%m%d') AS date,
    SUBSTR(@importFile,1,3) AS CountyCode,
    (
        SELECT 
            REPLACE(REPLACE(`County Description`,'.',''),'-',' ') AS FriendlyCountyName
            FROM `FloridaVoterCodes`.`County Codes` 
        WHERE `County Code`=SUBSTR(@importFile,1,3)
    ) AS CountyName
INTO
    @importDateString,
    @importDate,
    @countyCode,
    @countyName
FROM DUAL;
SELECT 
    REPLACE(REPLACE(`County Description`,'.',''),'-',' ') AS FriendlyCountyName
    FROM `FloridaVoterCodes`.`County Codes` 
WHERE `County Code`=SUBSTR(@importFile,1,3);

CREATE TABLE IF NOT EXISTS `FloridaVoterData`.`Voters` (
  `County Code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Voter ID` bigint(18) unsigned NOT NULL,
  `Name Last` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Name Suffix` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Name First` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Name Middle` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Suppress Address` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Residence Address Line 1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Residence Address Line 2` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Residence City USPS` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Residence State` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Residence Zipcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Mailing Address Line 1` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Mailing Address Line 2` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Mailing Address Line 3` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Mailing City` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Mailing State` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Mailing Zipcode` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Mailing Country` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Race` bigint(18) unsigned DEFAULT NULL,
  `Birth Date` date DEFAULT NULL,
  `Registration Date` date DEFAULT NULL,
  `Party Affiliation` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Precinct` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Precinct Group` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Precinct Split` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Precinct Suffix` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Voter Status` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Congressional District` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `House District` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Senate District` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `County Commission District` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `School Board District` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Daytime Area Code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Daytime Phone Number` varchar(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Daytime Phone Extension` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Export Date` date NOT NULL,
  PRIMARY KEY (`County Code`,`Voter ID`,`Export Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `FloridaVoterData`.`Voters` WHERE `County Code`=@countyCode AND `Export Date`=@importDate;

SET @l_sql =CONCAT('CREATE TABLE IF NOT EXISTS `FloridaVoterData`.`',@countyName,' Voters` LIKE `FloridaVoterData`.`Voters`');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 ;

DEALLOCATE PREPARE stmt1;

SET @l_sql =CONCAT('DELETE FROM `FloridaVoterData`.`',@countyName,' Voters` WHERE `County Code`=? AND `Export Date`=?');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 USING @countyCode,@importDate;

DEALLOCATE PREPARE stmt1;

DROP TEMPORARY TABLE IF EXISTS countyTemp;

CREATE TEMPORARY TABLE countyTemp LIKE `FloridaVoterData`.`Voters`;

LOAD DATA LOCAL INFILE '/tmp/vparseImport.txt'
    INTO TABLE countyTemp
    FIELDS TERMINATED BY '\t'
    LINES TERMINATED BY '\n'
    (`County Code`,
    `Voter ID`,
    `Name Last`,
    `Name Suffix`,
    `Name First`,
    `Name Middle`,
    `Suppress Address`,
    `Residence Address Line 1`,
    `Residence Address Line 2`,
    `Residence City USPS`,
    `Residence State`,
    `Residence Zipcode`,
    `Mailing Address Line 1`,
    `Mailing Address Line 2`,
    `Mailing Address Line 3`,
    `Mailing City`,
    `Mailing State`,
    `Mailing Zipcode`,
    `Mailing Country`,
    `Gender`,
    `Race`,
    @Birth_Date,
    @Registration_Date,
    `Party Affiliation`,
    `Precinct`,
    `Precinct Group`,
    `Precinct Split`,
    `Precinct Suffix`,
    `Voter Status`,
    `Congressional District`,
    `House District`,
    `Senate District`,
    `County Commission District`,
    `School Board District`,
    `Daytime Area Code`,
    `Daytime Phone Number`,
    `Daytime Phone Extension`
    )
    SET `Export Date` = '0000-00-00',
    `Birth Date` = STR_TO_DATE(@Birth_Date,'%m/%d/%Y'),
    `Registration Date` = STR_TO_DATE(@Registration_Date,'%m/%d/%Y');

UPDATE countyTemp SET `Export Date` = @importDate;

INSERT INTO `FloridaVoterData`.`Voters` SELECT * FROM countyTemp;
SET @l_sql =CONCAT('INSERT INTO `FloridaVoterData`.`',@countyName,' Voters` SELECT * FROM countyTemp');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 ;

DEALLOCATE PREPARE stmt1;

CREATE TABLE IF NOT EXISTS `FloridaVoterData`.`Green Voters` LIKE `FloridaVoterData`.`Voters`;
DELETE FROM `FloridaVoterData`.`Green Voters` WHERE `County Code`=@countyCode AND `Export Date`=@importDate;

SET @l_sql =CONCAT('CREATE TABLE IF NOT EXISTS `FloridaVoterData`.`',@countyName,' Green Voters` LIKE `FloridaVoterData`.`Voters`');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 ;

DEALLOCATE PREPARE stmt1;

SET @l_sql =CONCAT('DELETE FROM `FloridaVoterData`.`',@countyName,' Green Voters` WHERE `County Code`=? AND `Export Date`=?');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 USING @countyCode,@importDate;

DEALLOCATE PREPARE stmt1;

SET @l_sql =CONCAT('INSERT INTO `FloridaVoterData`.`',@countyName,' Green Voters` SELECT * FROM countyTemp WHERE `Party Affiliation`=\'GRE\'');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 ;

DEALLOCATE PREPARE stmt1;    

INSERT INTO `FloridaVoterData`.`Green Voters` SELECT * FROM countyTemp WHERE `Party Affiliation`='GRE';

CALL `FloridaVoterCodes`.`buildPartyVoters`(@countyCode,@countyName,@importDate);

DROP TEMPORARY TABLE IF EXISTS countyTemp;
