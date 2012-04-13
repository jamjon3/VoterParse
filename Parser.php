<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Parser
 *
 * @author jamesjones
 */

include_once 'Connection.php';

class Parser extends Connection {
    private $sth;
    private $filename;
    public function __construct($filename) {
        parent::__construct();
        // "VoterExtract/";
        $this->filename = $filename;
        $this->dbh->exec(str_replace("{tablename}", $this->filename, $this->settings['import']['importCreateSQL']));
        $this->dbh->exec(str_replace("{tablename}", $this->filename,"TRUNCATE TABLE `{tablename}`"));
        $this->dbh->exec(str_replace("{tablename}", $this->filename."_greens", $this->settings['import']['importCreateSQL']));
        $this->dbh->exec(str_replace("{tablename}", $this->filename."_greens","TRUNCATE TABLE `{tablename}`"));
        $this->sth = $this->dbh->prepare(str_replace("{tablename}", $this->filename, $this->settings['import']['importSQL']));
//        $this->sth = $this->dbh->prepare($this->settings['import']['importSQL']);   
        // $this->sth = $this->dbh->prepare($importSQL);   
    }
    public function parse($line) {
        $prepareValues = array();        
        foreach ($this->settings[$this->settings['import']['importTemplate']] as $key => $value) {
            switch ($this->settings['import']['importType']) {
                case "DELIMITER": case "delimiter":
                    $arr = array_map('trim',explode("\t", $line));
                    $prepareValues = array_merge($prepareValues,array(
                        ":".$key => $arr[$value]
                    ));
                    break;
                case "FIXED": case "fixed": default:
                    $prepareValues = array_merge($prepareValues,array(
                        ":".$key => substr($line,$value[0],$value[1])
                    ));
                    break;
            }
        }
        // $this->dbh->beginTransaction();        
        $this->sth->execute($prepareValues);
        // $this->dbh->commit();
    }
    
    public function handleAggregate() {
        $this->dbh->exec(str_replace("{tablename}", $this->filename, $this->settings['import']['createCountyGreens']));
        $this->dbh->exec(str_replace("{tablename}", $this->filename, $this->settings['import']['createStateGreens']));        
    }
}

?>
