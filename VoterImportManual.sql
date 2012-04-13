TRUNCATE TABLE FloridaVoters.allgreens;

CREATE TABLE IF NOT EXISTS FloridaVoters.ALA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.ALA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/ALA_20120402.txt'
INTO TABLE FloridaVoters.ALA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.ALA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.ALA_20120402_greens;
INSERT INTO FloridaVoters.ALA_20120402_greens SELECT * FROM FloridaVoters.ALA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.ALA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.BAK_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BAK_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/BAK_20120402.txt'
INTO TABLE FloridaVoters.BAK_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.BAK_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BAK_20120402_greens;
INSERT INTO FloridaVoters.BAK_20120402_greens SELECT * FROM FloridaVoters.BAK_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.BAK_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.BAY_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BAY_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/BAY_20120402.txt'
INTO TABLE FloridaVoters.BAY_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.BAY_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BAY_20120402_greens;
INSERT INTO FloridaVoters.BAY_20120402_greens SELECT * FROM FloridaVoters.BAY_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.BAY_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.BRA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BRA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/BRA_20120402.txt'
INTO TABLE FloridaVoters.BRA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.BRA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BRA_20120402_greens;
INSERT INTO FloridaVoters.BRA_20120402_greens SELECT * FROM FloridaVoters.BRA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.BRA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.BRE_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BRE_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/BRE_20120402.txt'
INTO TABLE FloridaVoters.BRE_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.BRE_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BRE_20120402_greens;
INSERT INTO FloridaVoters.BRE_20120402_greens SELECT * FROM FloridaVoters.BRE_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.BRE_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.BRO_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BRO_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/BRO_20120402.txt'
INTO TABLE FloridaVoters.BRO_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.BRO_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.BRO_20120402_greens;
INSERT INTO FloridaVoters.BRO_20120402_greens SELECT * FROM FloridaVoters.BRO_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.BRO_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.CAL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CAL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/CAL_20120402.txt'
INTO TABLE FloridaVoters.CAL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.CAL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CAL_20120402_greens;
INSERT INTO FloridaVoters.CAL_20120402_greens SELECT * FROM FloridaVoters.CAL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.CAL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.CHA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CHA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/CHA_20120402.txt'
INTO TABLE FloridaVoters.CHA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.CHA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CHA_20120402_greens;
INSERT INTO FloridaVoters.CHA_20120402_greens SELECT * FROM FloridaVoters.CHA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.CHA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.CIT_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CIT_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/CIT_20120402.txt'
INTO TABLE FloridaVoters.CIT_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.CIT_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CIT_20120402_greens;
INSERT INTO FloridaVoters.CIT_20120402_greens SELECT * FROM FloridaVoters.CIT_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.CIT_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.CLA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CLA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/CLA_20120402.txt'
INTO TABLE FloridaVoters.CLA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.CLA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CLA_20120402_greens;
INSERT INTO FloridaVoters.CLA_20120402_greens SELECT * FROM FloridaVoters.CLA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.CLA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.CLL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CLL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/CLL_20120402.txt'
INTO TABLE FloridaVoters.CLL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.CLL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CLL_20120402_greens;
INSERT INTO FloridaVoters.CLL_20120402_greens SELECT * FROM FloridaVoters.CLL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.CLL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.CLM_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CLM_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/CLM_20120402.txt'
INTO TABLE FloridaVoters.CLM_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.CLM_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.CLM_20120402_greens;
INSERT INTO FloridaVoters.CLM_20120402_greens SELECT * FROM FloridaVoters.CLM_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.CLM_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.DAD_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.DAD_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/DAD_20120402.txt'
INTO TABLE FloridaVoters.DAD_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.DAD_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.DAD_20120402_greens;
INSERT INTO FloridaVoters.DAD_20120402_greens SELECT * FROM FloridaVoters.DAD_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.DAD_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.DES_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.DES_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/DES_20120402.txt'
INTO TABLE FloridaVoters.DES_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.DES_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.DES_20120402_greens;
INSERT INTO FloridaVoters.DES_20120402_greens SELECT * FROM FloridaVoters.DES_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.DES_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.DIX_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.DIX_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/DIX_20120402.txt'
INTO TABLE FloridaVoters.DIX_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.DIX_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.DIX_20120402_greens;
INSERT INTO FloridaVoters.DIX_20120402_greens SELECT * FROM FloridaVoters.DIX_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.DIX_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.DUV_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.DUV_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/DUV_20120402.txt'
INTO TABLE FloridaVoters.DUV_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.DUV_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.DUV_20120402_greens;
INSERT INTO FloridaVoters.DUV_20120402_greens SELECT * FROM FloridaVoters.DUV_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.DUV_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.ESC_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.ESC_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/ESC_20120402.txt'
INTO TABLE FloridaVoters.ESC_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.ESC_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.ESC_20120402_greens;
INSERT INTO FloridaVoters.ESC_20120402_greens SELECT * FROM FloridaVoters.ESC_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.ESC_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.FLA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.FLA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/FLA_20120402.txt'
INTO TABLE FloridaVoters.FLA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.FLA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.FLA_20120402_greens;
INSERT INTO FloridaVoters.FLA_20120402_greens SELECT * FROM FloridaVoters.FLA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.FLA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.FRA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.FRA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/FRA_20120402.txt'
INTO TABLE FloridaVoters.FRA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.FRA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.FRA_20120402_greens;
INSERT INTO FloridaVoters.FRA_20120402_greens SELECT * FROM FloridaVoters.FRA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.FRA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.GAD_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.GAD_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/GAD_20120402.txt'
INTO TABLE FloridaVoters.GAD_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.GAD_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.GAD_20120402_greens;
INSERT INTO FloridaVoters.GAD_20120402_greens SELECT * FROM FloridaVoters.GAD_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.GAD_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.GIL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.GIL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/GIL_20120402.txt'
INTO TABLE FloridaVoters.GIL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.GIL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.GIL_20120402_greens;
INSERT INTO FloridaVoters.GIL_20120402_greens SELECT * FROM FloridaVoters.GIL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.GIL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.GLA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.GLA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/GLA_20120402.txt'
INTO TABLE FloridaVoters.GLA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.GLA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.GLA_20120402_greens;
INSERT INTO FloridaVoters.GLA_20120402_greens SELECT * FROM FloridaVoters.GLA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.GLA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.GUL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.GUL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/GUL_20120402.txt'
INTO TABLE FloridaVoters.GUL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.GUL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.GUL_20120402_greens;
INSERT INTO FloridaVoters.GUL_20120402_greens SELECT * FROM FloridaVoters.GUL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.GUL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.HAM_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HAM_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/HAM_20120402.txt'
INTO TABLE FloridaVoters.HAM_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.HAM_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HAM_20120402_greens;
INSERT INTO FloridaVoters.HAM_20120402_greens SELECT * FROM FloridaVoters.HAM_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.HAM_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.HAR_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HAR_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/HAR_20120402.txt'
INTO TABLE FloridaVoters.HAR_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.HAR_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HAR_20120402_greens;
INSERT INTO FloridaVoters.HAR_20120402_greens SELECT * FROM FloridaVoters.HAR_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.HAR_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.HEN_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HEN_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/HEN_20120402.txt'
INTO TABLE FloridaVoters.HEN_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.HEN_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HEN_20120402_greens;
INSERT INTO FloridaVoters.HEN_20120402_greens SELECT * FROM FloridaVoters.HEN_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.HEN_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.HER_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HER_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/HER_20120402.txt'
INTO TABLE FloridaVoters.HER_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.HER_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HER_20120402_greens;
INSERT INTO FloridaVoters.HER_20120402_greens SELECT * FROM FloridaVoters.HER_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.HER_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.HIG_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HIG_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/HIG_20120402.txt'
INTO TABLE FloridaVoters.HIG_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.HIG_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HIG_20120402_greens;
INSERT INTO FloridaVoters.HIG_20120402_greens SELECT * FROM FloridaVoters.HIG_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.HIG_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.HIL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HIL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/HIL_20120402.txt'
INTO TABLE FloridaVoters.HIL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.HIL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HIL_20120402_greens;
INSERT INTO FloridaVoters.HIL_20120402_greens SELECT * FROM FloridaVoters.HIL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.HIL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.HOL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HOL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/HOL_20120402.txt'
INTO TABLE FloridaVoters.HOL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.HOL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.HOL_20120402_greens;
INSERT INTO FloridaVoters.HOL_20120402_greens SELECT * FROM FloridaVoters.HOL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.HOL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.IND_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.IND_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/IND_20120402.txt'
INTO TABLE FloridaVoters.IND_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.IND_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.IND_20120402_greens;
INSERT INTO FloridaVoters.IND_20120402_greens SELECT * FROM FloridaVoters.IND_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.IND_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.JAC_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.JAC_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/JAC_20120402.txt'
INTO TABLE FloridaVoters.JAC_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.JAC_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.JAC_20120402_greens;
INSERT INTO FloridaVoters.JAC_20120402_greens SELECT * FROM FloridaVoters.JAC_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.JAC_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.JEF_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.JEF_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/JEF_20120402.txt'
INTO TABLE FloridaVoters.JEF_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.JEF_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.JEF_20120402_greens;
INSERT INTO FloridaVoters.JEF_20120402_greens SELECT * FROM FloridaVoters.JEF_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.JEF_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.LAF_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LAF_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/LAF_20120402.txt'
INTO TABLE FloridaVoters.LAF_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.LAF_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LAF_20120402_greens;
INSERT INTO FloridaVoters.LAF_20120402_greens SELECT * FROM FloridaVoters.LAF_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.LAF_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.LAK_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LAK_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/LAK_20120402.txt'
INTO TABLE FloridaVoters.LAK_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.LAK_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LAK_20120402_greens;
INSERT INTO FloridaVoters.LAK_20120402_greens SELECT * FROM FloridaVoters.LAK_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.LAK_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.LEE_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LEE_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/LEE_20120402.txt'
INTO TABLE FloridaVoters.LEE_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.LEE_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LEE_20120402_greens;
INSERT INTO FloridaVoters.LEE_20120402_greens SELECT * FROM FloridaVoters.LEE_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.LEE_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.LEO_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LEO_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/LEO_20120402.txt'
INTO TABLE FloridaVoters.LEO_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.LEO_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LEO_20120402_greens;
INSERT INTO FloridaVoters.LEO_20120402_greens SELECT * FROM FloridaVoters.LEO_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.LEO_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.LEV_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LEV_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/LEV_20120402.txt'
INTO TABLE FloridaVoters.LEV_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.LEV_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LEV_20120402_greens;
INSERT INTO FloridaVoters.LEV_20120402_greens SELECT * FROM FloridaVoters.LEV_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.LEV_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.LIB_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LIB_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/LIB_20120402.txt'
INTO TABLE FloridaVoters.LIB_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.LIB_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.LIB_20120402_greens;
INSERT INTO FloridaVoters.LIB_20120402_greens SELECT * FROM FloridaVoters.LIB_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.LIB_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.MAD_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MAD_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/MAD_20120402.txt'
INTO TABLE FloridaVoters.MAD_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.MAD_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MAD_20120402_greens;
INSERT INTO FloridaVoters.MAD_20120402_greens SELECT * FROM FloridaVoters.MAD_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.MAD_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.MAN_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MAN_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/MAN_20120402.txt'
INTO TABLE FloridaVoters.MAN_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.MAN_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MAN_20120402_greens;
INSERT INTO FloridaVoters.MAN_20120402_greens SELECT * FROM FloridaVoters.MAN_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.MAN_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.MON_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MON_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/MON_20120402.txt'
INTO TABLE FloridaVoters.MON_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.MON_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MON_20120402_greens;
INSERT INTO FloridaVoters.MON_20120402_greens SELECT * FROM FloridaVoters.MON_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.MON_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.MRN_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MRN_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/MRN_20120402.txt'
INTO TABLE FloridaVoters.MRN_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.MRN_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MRN_20120402_greens;
INSERT INTO FloridaVoters.MRN_20120402_greens SELECT * FROM FloridaVoters.MRN_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.MRN_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.MRT_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MRT_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/MRT_20120402.txt'
INTO TABLE FloridaVoters.MRT_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.MRT_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.MRT_20120402_greens;
INSERT INTO FloridaVoters.MRT_20120402_greens SELECT * FROM FloridaVoters.MRT_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.MRT_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.NAS_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.NAS_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/NAS_20120402.txt'
INTO TABLE FloridaVoters.NAS_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.NAS_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.NAS_20120402_greens;
INSERT INTO FloridaVoters.NAS_20120402_greens SELECT * FROM FloridaVoters.NAS_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.NAS_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.OKA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.OKA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/OKA_20120402.txt'
INTO TABLE FloridaVoters.OKA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.OKA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.OKA_20120402_greens;
INSERT INTO FloridaVoters.OKA_20120402_greens SELECT * FROM FloridaVoters.OKA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.OKA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.OKE_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.OKE_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/OKE_20120402.txt'
INTO TABLE FloridaVoters.OKE_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.OKE_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.OKE_20120402_greens;
INSERT INTO FloridaVoters.OKE_20120402_greens SELECT * FROM FloridaVoters.OKE_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.OKE_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.ORA_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.ORA_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/ORA_20120402.txt'
INTO TABLE FloridaVoters.ORA_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.ORA_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.ORA_20120402_greens;
INSERT INTO FloridaVoters.ORA_20120402_greens SELECT * FROM FloridaVoters.ORA_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.ORA_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.OSC_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.OSC_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/OSC_20120402.txt'
INTO TABLE FloridaVoters.OSC_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.OSC_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.OSC_20120402_greens;
INSERT INTO FloridaVoters.OSC_20120402_greens SELECT * FROM FloridaVoters.OSC_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.OSC_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.PAL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.PAL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/PAL_20120402.txt'
INTO TABLE FloridaVoters.PAL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.PAL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.PAL_20120402_greens;
INSERT INTO FloridaVoters.PAL_20120402_greens SELECT * FROM FloridaVoters.PAL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.PAL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.PAS_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.PAS_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/PAS_20120402.txt'
INTO TABLE FloridaVoters.PAS_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.PAS_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.PAS_20120402_greens;
INSERT INTO FloridaVoters.PAS_20120402_greens SELECT * FROM FloridaVoters.PAS_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.PAS_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.PIN_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.PIN_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/PIN_20120402.txt'
INTO TABLE FloridaVoters.PIN_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.PIN_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.PIN_20120402_greens;
INSERT INTO FloridaVoters.PIN_20120402_greens SELECT * FROM FloridaVoters.PIN_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.PIN_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.POL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.POL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/POL_20120402.txt'
INTO TABLE FloridaVoters.POL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.POL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.POL_20120402_greens;
INSERT INTO FloridaVoters.POL_20120402_greens SELECT * FROM FloridaVoters.POL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.POL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.PUT_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.PUT_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/PUT_20120402.txt'
INTO TABLE FloridaVoters.PUT_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.PUT_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.PUT_20120402_greens;
INSERT INTO FloridaVoters.PUT_20120402_greens SELECT * FROM FloridaVoters.PUT_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.PUT_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.SAN_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SAN_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/SAN_20120402.txt'
INTO TABLE FloridaVoters.SAN_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.SAN_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SAN_20120402_greens;
INSERT INTO FloridaVoters.SAN_20120402_greens SELECT * FROM FloridaVoters.SAN_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.SAN_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.SAR_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SAR_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/SAR_20120402.txt'
INTO TABLE FloridaVoters.SAR_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.SAR_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SAR_20120402_greens;
INSERT INTO FloridaVoters.SAR_20120402_greens SELECT * FROM FloridaVoters.SAR_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.SAR_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.SEM_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SEM_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/SEM_20120402.txt'
INTO TABLE FloridaVoters.SEM_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.SEM_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SEM_20120402_greens;
INSERT INTO FloridaVoters.SEM_20120402_greens SELECT * FROM FloridaVoters.SEM_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.SEM_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.STJ_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.STJ_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/STJ_20120402.txt'
INTO TABLE FloridaVoters.STJ_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.STJ_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.STJ_20120402_greens;
INSERT INTO FloridaVoters.STJ_20120402_greens SELECT * FROM FloridaVoters.STJ_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.STJ_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.STL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.STL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/STL_20120402.txt'
INTO TABLE FloridaVoters.STL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.STL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.STL_20120402_greens;
INSERT INTO FloridaVoters.STL_20120402_greens SELECT * FROM FloridaVoters.STL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.STL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.SUM_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SUM_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/SUM_20120402.txt'
INTO TABLE FloridaVoters.SUM_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.SUM_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SUM_20120402_greens;
INSERT INTO FloridaVoters.SUM_20120402_greens SELECT * FROM FloridaVoters.SUM_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.SUM_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.SUW_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SUW_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/SUW_20120402.txt'
INTO TABLE FloridaVoters.SUW_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.SUW_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.SUW_20120402_greens;
INSERT INTO FloridaVoters.SUW_20120402_greens SELECT * FROM FloridaVoters.SUW_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.SUW_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.TAY_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.TAY_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/TAY_20120402.txt'
INTO TABLE FloridaVoters.TAY_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.TAY_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.TAY_20120402_greens;
INSERT INTO FloridaVoters.TAY_20120402_greens SELECT * FROM FloridaVoters.TAY_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.TAY_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.UNI_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.UNI_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/UNI_20120402.txt'
INTO TABLE FloridaVoters.UNI_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.UNI_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.UNI_20120402_greens;
INSERT INTO FloridaVoters.UNI_20120402_greens SELECT * FROM FloridaVoters.UNI_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.UNI_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.VOL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.VOL_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/VOL_20120402.txt'
INTO TABLE FloridaVoters.VOL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.VOL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.VOL_20120402_greens;
INSERT INTO FloridaVoters.VOL_20120402_greens SELECT * FROM FloridaVoters.VOL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.VOL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.WAK_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.WAK_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/WAK_20120402.txt'
INTO TABLE FloridaVoters.WAK_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.WAK_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.WAK_20120402_greens;
INSERT INTO FloridaVoters.WAK_20120402_greens SELECT * FROM FloridaVoters.WAK_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.WAK_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.WAL_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.WAK_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/WAL_20120402.txt'
INTO TABLE FloridaVoters.WAL_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.WAL_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.WAK_20120402_greens;
INSERT INTO FloridaVoters.WAL_20120402_greens SELECT * FROM FloridaVoters.WAL_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.WAL_20120402_greens;

CREATE TABLE IF NOT EXISTS FloridaVoters.WAS_20120402 LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.WAS_20120402;
LOAD DATA LOCAL INFILE '/Users/james/Documents/VoterExtract/WAS_20120402.txt'
INTO TABLE FloridaVoters.WAS_20120402
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
(`County_Code`,
    `Voter_ID`,
    `Name_Last`,
    `Name_Suffix`,
    `Name_First`,
    `Name_Middle`,
    `Suppress_Address`,
    `Residence_Address_Line_1`,
    `Residence_Address_Line_2`,
    `Residence_City_USPS`,
    `Residence_State`,
    `Residence_Zipcode`,
    `Mailing_Address_Line_1`,
    `Mailing_Address_Line_2`,
    `Mailing_Address_Line_3`,
    `Mailing_City`,
    `Mailing_State`,
    `Mailing_Zipcode`,
    `Mailing_Country`,
    `Gender`,
    `Race`,
    `Birth_Date`,
    `Registration_Date`,
    `Party_Affiliation`,
    `Precinct`,
    `Precinct_Group`,
    `Precinct_Split`,
    `Precinct_Suffix`,
    `Voter_Status`,
    `Congressional_District`,
    `House_District`,
    `Senate_District`,
    `County_Commission_District`,
    `School_Board_District`,
    `Daytime_Area_Code`,
    `Daytime_Phone_Number`,
    `Daytime_Phone_Extension`); 
CREATE TABLE IF NOT EXISTS FloridaVoters.WAS_20120402_greens LIKE FloridaVoters.allgreens;
TRUNCATE TABLE FloridaVoters.WAS_20120402_greens;
INSERT INTO FloridaVoters.WAS_20120402_greens SELECT * FROM FloridaVoters.WAS_20120402 WHERE Party_Affiliation = 'GRE';
INSERT INTO FloridaVoters.allgreens SELECT * FROM FloridaVoters.WAS_20120402_greens;

