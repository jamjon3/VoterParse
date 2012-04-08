<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Connection
 *
 * @author jamesjones
 */
class Connection {
    //put your code here
    private $dbh;
    private $options = array(
        'user' => 'root',
        'passwd' => '',
        'dbname' => 'FloridaVoters',
        'host' => "192.168.1.142",
        'options' => array()
    );
    public function __construct() {
        $dsn = "mysql:dbname=".$this->options['dbname'].";host=".$this->options['host'];
        // $dsn = "mysql:dbname=".$this->options['dbname'].";host=".$this->options['host'].";charset=UTF-8";
        $this->dbh = new PDO($dsn, $this->options['user'], $this->options['passwd'], $this->options['options']);                
        $this->dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
    }
    public function getDbh() {
        return $this->dbh;
    }
    public function __destruct() {
        // $this->dbh;
    }
}

?>
