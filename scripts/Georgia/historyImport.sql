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

CREATE TABLE IF NOT EXISTS `Histories` (
    `County Code` char(3) NOT NULL DEFAULT '',
    `Voter ID` varchar(14) NOT NULL DEFAULT '',
    `Old Registration Number` varchar(14) NOT NULL DEFAULT '',
    `Election Date` date NOT NULL DEFAULT '0000-00-00',
    `Election Type Code` char(3) NOT NULL DEFAULT '',
    `Party` char(1) DEFAULT NULL,
    `Absentee` char(1) DEFAULT NULL,
    `Export Date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `Histories` WHERE `Export Date`=@importDate;

CREATE TEMPORARY TABLE countyTemp LIKE `Histories`;

LOAD DATA LOCAL INFILE '/tmp/vparseImport.txt'
    INTO TABLE countyTemp
    LINES TERMINATED BY '\r\n'
    (@record)
SET `Export Date` = STR_TO_DATE('0000-00-00','%Y%m%d'),
    `County Code` = SUBSTR(@record,0,3),
    `Voter ID` = SUBSTR(@record,3,14),
    `Old Registration Number` = SUBSTR(@record,11,14),
    `Election Date` = STR_TO_DATE(SUBSTR(@record,25,8),'%m/%d/%Y'),
    `Election Type Code` = SUBSTR(@record,33,3),
    `Party` = SUBSTR(@record,36,1),
    `Absentee` = SUBSTR(@record,37,1);

UPDATE countyTemp SET `Export Date` = @importDate;

INSERT INTO `Histories` SELECT * FROM countyTemp;

SELECT COUNT(*) INTO @countyCount FROM `Georgia Voter Codes`.`County Codes`;

SET @count = 1;
WHILE @countyCount >= @count DO
    SELECT 
        `County Code`,
        REPLACE(REPLACE(`County Description`,'.',''),'-',' ') AS FriendlyCountyName
    INTO
        @countyCode,
        @countyName
    FROM `Georgia Voter Codes`.`County Codes`
    WHERE `County Code`+0=@count;

    SET @l_sql =CONCAT('CREATE TABLE IF NOT EXISTS `',@countyName,' History` LIKE `Histories`');
    PREPARE stmt1 FROM @l_sql;
    EXECUTE stmt1 ;

    DEALLOCATE PREPARE stmt1;

    SET @l_sql =CONCAT('DELETE FROM `',@countyName,' History` WHERE `Export Date`=?');
    PREPARE stmt1 FROM @l_sql;
    EXECUTE stmt1 USING @importDate;

    DEALLOCATE PREPARE stmt1;

    SET @l_sql =CONCAT('INSERT INTO `',@countyName,' History` SELECT * FROM countyTemp WHERE `Party Affiliation`=?');
    PREPARE stmt1 FROM @l_sql;
    EXECUTE stmt1 USING @countyCode;

    DEALLOCATE PREPARE stmt1;    


    SET @count = @count + 1;
END WHILE;

DROP TABLE countyTemp;
