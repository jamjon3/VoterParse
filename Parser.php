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
    public function __construct() {
        parent::__construct();
        $this->sth = $this->dbh->prepare($this->settings['import']['importSQL']);   
    }
    public function parse($line) {
        $prepareValues = array();        
        foreach ($this->settings[$this->settings['import']['importTemplate']] as $key => $value) {
            switch ($this->settings['import']['importType']) {
                case "DELIMITER": case "delimiter":
                    $arr = array_map('trim',explode($value[0], $line));
                    $prepareValues = array_merge($prepareValues,array(
                        ":".$key => $arr[$value[1]]
                    ));
                    break;
                case "FIXED": case "fixed": default:
                    $prepareValues = array_merge($prepareValues,array(
                        ":".$key => substr($line,$value[0],$value[1])
                    ));
                    break;
            }
        }
        $this->dbh->beginTransaction();        
        $this->sth->execute($prepareValues);
        $this->dbh->commit();
    }
}

?>
