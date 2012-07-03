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
WHERE `County Code`=@countyCode;

CREATE TABLE IF NOT EXISTS `FloridaVoterData`.`Histories` (
  `County Code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Voter ID` BIGINT(18) UNSIGNED NOT NULL,
  `Election Date` DATE DEFAULT NULL,
  `Election Type` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `History Code` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Export Date` DATE DEFAULT NULL,
  PRIMARY KEY (`County Code`,`Voter ID`,`Election Date`,`Election Type`,`History Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `FloridaVoterData`.`Histories` WHERE `County Code`=@countyCode AND `Export Date`=@importDate;

SET @l_sql =CONCAT('CREATE TABLE IF NOT EXISTS `FloridaVoterData`.`',@countyName,' History` LIKE `FloridaVoterData`.`Histories`');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 ;

DEALLOCATE PREPARE stmt1;

SET @l_sql =CONCAT('DELETE FROM `FloridaVoterData`.`',@countyName,' History` WHERE `County Code`=? AND `Export Date`=?');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 USING @countyCode,@importDate;

DEALLOCATE PREPARE stmt1;

DROP TEMPORARY TABLE IF EXISTS countyTemp;

CREATE TEMPORARY TABLE countyTemp LIKE `FloridaVoterData`.`Histories`;

LOAD DATA LOCAL INFILE '/tmp/vparseImport.txt'
INTO TABLE countyTemp
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(
    `County Code`,
    `Voter ID`,
    @Election_Date,
    `Election Type`,
    `History Code`
)
SET `Export Date` = '0000-00-00',
`Election Date` = STR_TO_DATE(@Election_Date,'%m/%d/%Y');

UPDATE countyTemp SET `Export Date` = @importDate;

REPLACE INTO `FloridaVoterData`.`Histories` SELECT * FROM countyTemp;

SET @l_sql =CONCAT('REPLACE INTO `FloridaVoterData`.`',@countyName,' History` SELECT * FROM countyTemp');
PREPARE stmt1 FROM @l_sql;
EXECUTE stmt1 ;

DEALLOCATE PREPARE stmt1;

DROP TEMPORARY TABLE IF EXISTS countyTemp;



