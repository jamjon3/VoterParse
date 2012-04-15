<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Functions
 *
 * @author jamesjones
 */
include_once 'Codes.php';
class Functions extends Codes {
    //put your code here
    public function __construct() {
        parent::__construct();
    }
    public function importHistoryFile($dir,$filename) {
        $county = $this->getCounty(substr($filename, 0, 3));
        $export_date = substr(substr($filename,0,-4),-8);
        $this->historyCreate($county);
        $this->historyClear($county,$export_date);
        $this->dbh->exec(str_replace(
            "{tablename}", 
            $county, 
            str_replace(
                "{exportdate}", 
                $export_date, 
                str_replace(
                    "{fullpath}", 
                    $dir."/".$filename, 
                    $this->settings['import']['importHistoryLoad']
                )
            )
        ));
        $this->historyAppend($county,$export_date);        
    }
    public function importVoterFile($dir,$filename) {
        $county = $this->getCounty(substr($filename, 0, 3));
        $export_date = substr(substr($filename,0,-4),-8);
        $this->voterCreate($county);
        $this->voterClear($county,$export_date);
        $this->dbh->exec(str_replace(
            "{tablename}", 
            $county, 
            str_replace(
                "{exportdate}", 
                $export_date, 
                str_replace(
                    "{fullpath}", 
                    $dir."/".$filename, 
                    $this->settings['import']['importVoterLoad']
                )
            )
        ));
        $this->voterCreate($county."Greens");
        $this->voterClear($county."Greens",$export_date);
        $this->voterGreensAppend($county,$export_date);
        $this->voterGreensAllAppend($county."Greens",$export_date);
        $this->voterAppend($county,$export_date);
    }
    public function voterAppend($tablename,$export_date) {
        $sth = $this->dbh->prepare(str_replace("{tablename}", $tablename,$this->settings['import']['importCountyAppend']));
        $sth->execute(array(':export_date' => $export_date));                        
    }
    public function voterGreensAllAppend($tablename,$export_date) {
        $sth = $this->dbh->prepare(str_replace("{tablename}", $tablename,$this->settings['import']['importCountyGreensAllAppend']));
        $sth->execute(array(':export_date' => $export_date));                        
    }
    public function voterGreensAppend($tablename,$export_date) {
        $sth = $this->dbh->prepare(str_replace("{tablename}", $tablename,$this->settings['import']['importCountyGreensAppend']));
        $sth->execute(array(':export_date' => $export_date));                        
    }
    public function voterCreate($tablename) {
        return $this->dbh->exec(str_replace("{tablename}", $tablename, $this->settings['import']['importVoterCreateSQL']));
    } 
    public function voterClear($tablename,$export_date) {
        $sth = $this->dbh->prepare(str_replace("{tablename}", $tablename,"DELETE FROM `FloridaVoters`.`{tablename}` WHERE Export_Date=STR_TO_DATE(:export_date,'%Y%m%d')"));
        $sth->execute(array(':export_date' => $export_date));                        
    }
    public function historyAppend($tablename,$export_date) {
        $sth = $this->dbh->prepare(str_replace("{tablename}", $tablename,$this->settings['import']['importHistoryAppend']));
        $sth->execute(array(':export_date' => $export_date));                        
    }
    public function historyCreate($tablename) {
        return $this->dbh->exec(str_replace("{tablename}", $tablename, $this->settings['import']['importHistoryCreateSQL']));
    } 
    public function historyClear($tablename,$export_date) {
        $sth = $this->dbh->prepare(str_replace("{tablename}", $tablename,"DELETE FROM `FloridaVoterHistory`.`{tablename}` WHERE Export_Date=STR_TO_DATE(:export_date,'%Y%m%d')"));
        $sth->execute(array(':export_date' => $export_date));                        
    }
}

?>
