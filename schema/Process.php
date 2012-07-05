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
include_once '../Connection.php';

class Process extends Connection {
    public $processId;
    public $script;
    public $status;
    
    public function __construct() {
        parent::__construct();
    }
}

?>
