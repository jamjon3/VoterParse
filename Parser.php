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
        foreach ($this->settings['parser'] as $key => $value) {
            $prepareValues = array_merge($prepareValues,array(
                ":".$key => substr($line,$value[0],$value[1])
            ));
        }
        $this->dbh->beginTransaction();        
        $this->sth->execute($prepareValues);
        $this->dbh->commit();
    }
}

?>
