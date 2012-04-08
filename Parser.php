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

include_once 'Layout.php';
include_once 'Connection.php';

class Parser extends Connection {
    //put your code here
    private $sth;
    public function __construct() {
        global $importSQL;
        parent::__construct();
        $this->sth = $this->getDbh()->prepare($importSQL);        
    }
    public function parse($line) {
        global $layout;
        $prepareValues = array();
        foreach ($layout as $key => $value) {
            $prepareValues = array_merge($prepareValues,array(
                ":".$key => substr($line,$value['start'],$value['length'])
            ));
        }
        $this->getDbh()->beginTransaction();        
        $this->sth->execute($prepareValues);
        $this->getDbh()->commit();
    }
}

?>
