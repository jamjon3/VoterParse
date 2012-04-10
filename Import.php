<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Import
 *
 * @author jamesjones
 */
include_once 'Parser.php';
declare(ticks = 1);

//pcntl_signal(SIGCHLD, "Import.signal_handler");

class Import {
    private $settings;
    
    public function __construct() {
        $this->settings = parse_ini_file("settings.ini", true);
    }
     
    public function extractVoters($importFile = null) {
        $pid = pcntl_fork();            
        if (!$pid) {
            $handle = @fopen(($importFile != null)?$importFile:$this->settings['import']['importFile'], "r");
            if ($handle) {
                $parser = new Parser();
                while (($buffer = fgets($handle, 4096)) !== false) {
                    $parser->parse($buffer);
                }
                if (!feof($handle)) {
                    echo "Error: unexpected fgets() fail\n";
                }
                fclose($handle);
            }      
            exit();
        }
    }
}
                
?>
