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
    public $dbh;
    public $settings;
    public function __construct() {
        $this->settings = parse_ini_file("settings.ini", true);
        $this->dbh = new PDO(
            $this->settings['connection']['dsn'], 
            $this->settings['connection']['user'], 
            $this->settings['connection']['passwd']
        );                
        $this->dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    public function __destruct() {
        $this->dbh = null;
        unset($this->settings);
    }
}

?>
