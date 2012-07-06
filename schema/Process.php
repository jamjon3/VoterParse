<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Process
 *
 * @author jam
 */
include_once '../conf/Connection.php';

class Process extends Connection {
    public $processId;
    public $script;
    public $statusId;
    
    public function __construct() {
        parent::__construct();
    }
    public function getProcesses() {
        $processes = array();
        try {
            $sth = $this->dbh->prepare("SELECT process_id AS processId,
                script,
                status_id AS statusId
                FROM Process ORDER BY process_id");
            $sth->execute();
            $processes = $sth->fetchAll(PDO::FETCH_CLASS, 'Process');
        } catch(PDOException $e) {
            print $e->getMessage(); 
        }        
        return $processes;
    }
    public function get($processId) {
        $processes = array();
        try {
            $sth = $this->dbh->prepare("SELECT process_id AS processId,
                script,
                status_id AS statusId
                FROM Process WHERE process_id = :processId");
            $sth->execute(array(':processId' => $processId));
            $processes = $sth->fetchAll(PDO::FETCH_CLASS, 'Process');
        } catch(PDOException $e) {
            print $e->getMessage(); 
        }        
        return $processes[0];        
    }
        
    
}

?>
