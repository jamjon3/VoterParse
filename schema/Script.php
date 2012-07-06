<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Script
 *
 * @author jam
 */
include_once '../conf/Connection.php';

class Script extends Connection {
    public $scriptId;
    public $scriptType;
    public $stateLabel;
    public $script;

    public function __construct() {
        parent::__construct();
    }
    public function getScripts() {        
        $processes = array();
        try {
            $sth = $this->dbh->prepare("SELECT script_id AS scriptId,
                scriptType AS scriptType,
                stateLabel AS stateLabel,
                script AS script
                FROM Script ORDER BY script_id");
            $sth->execute();
            $processes = $sth->fetchAll(PDO::FETCH_CLASS, 'Process');
        } catch(PDOException $e) {
            print $e->getMessage(); 
        }        
        return $processes;
    }
    public function get($scriptId) {
        $scripts = array();
        try {
            $sth = $this->dbh->prepare("SELECT script_id AS scriptId,
                scriptType AS scriptType,
                stateLabel AS stateLabel,
                script AS script
                FROM Script WHERE script_id = :scriptId");
            $sth->execute(array(':scriptId' => $scriptId));
            $scripts = $sth->fetchAll(PDO::FETCH_CLASS, 'Script');
        } catch(PDOException $e) {
            print $e->getMessage(); 
        }        
        return $scripts[0];
        
    }
}

?>
