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
include_once 'Connection.php';

declare(ticks = 1);

//pcntl_signal(SIGCHLD, "Import.signal_handler");

class Import extends Connection {
    // private $settings;
    
    public function __construct() {
        parent::__construct();
        // $this->settings = parse_ini_file("settings.ini", true);
        $this->dbh->exec(str_replace("{tablename}", "allgreens", $this->settings['import']['importCreateSQL']));
        $this->dbh->exec("TRUNCATE TABLE `allgreens`");
    }
     
    public function extractVoters() {
        $pid = pcntl_fork();            
        if (!$pid) {
            foreach($this->settings['import']['importFiles'] as $key => $value) {
                //$handle = @fopen(($importFile != null)?$importFile:$this->settings['import']['importFile'], "r");
                $handle = @fopen($value, "r");
                if ($handle) {
                    $parser = new Parser(key(explode(".", $value)));
                    while (($buffer = fgets($handle, 4096)) !== false) {
                        $parser->parse($buffer);
                    }
                    if (!feof($handle)) {
                        echo "Error: unexpected fgets() fail\n";
                    }
                    fclose($handle);
                    $this->dbh->exec(str_replace("{tablename}", str_replace("VoterExtract/","",$filename), $this->settings['import']['createCountyGreens']));
                    $this->dbh->exec(str_replace("{tablename}", str_replace("VoterExtract/","",$filename), $this->settings['import']['createStateGreens']));
                }                      
            }
            exit();
        }
    }
}
                
?>
