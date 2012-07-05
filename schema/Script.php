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
include_once '../Connection.php';

class Script extends Connection {
    public $scriptId;
    public $scriptType;
    public $stateLabel;
    public $script;

    public function __construct() {
        parent::__construct();
    }
}

?>
