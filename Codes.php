<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Codes
 *
 * @author jamesjones
 */
class Codes extends Connection {
    public function __construct() {
        parent::__construct();
    }
    public function getCounty($county_code) {        
        $sth = $this->dbh->prepare(
            "SELECT `FloridaVoterDescriptors`.getCountyName(:county_code) AS county", 
            array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY)
        );
        $sth->execute(array(':county_code' => $county_code));
        return $sth->fetchColumn();
    }
}

?>
