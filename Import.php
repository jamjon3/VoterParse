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
include_once 'Functions.php';

declare(ticks = 1);

//pcntl_signal(SIGCHLD, "Import.signal_handler");

class Import extends Connection {
    
    public function __construct() {
        parent::__construct();
        // TEMPORARILY DISABLING NEXT TWO LINES
        // $this->dbh->exec(str_replace("{tablename}", "allgreens", $this->settings['import']['importCreateSQL']));
        //$this->dbh->exec("TRUNCATE TABLE `allgreens`");
    }
    
    public function extractHistory() {
        if ($handle = opendir($this->settings['import']['importHistoryFolder'])) {
            $functions = new Functions();
            /* This is the correct way to loop over the directory. */
            while (false !== ($filename = readdir($handle))) {
                if ($filename != "." && $filename != "..") {
                    if(!is_dir($this->settings['import']['importHistoryFolder']."/".$filename)) {
                        echo "$filename\n";
                        $functions->importHistoryFile($this->settings['import']['importHistoryFolder'],$filename);
                    }
                }
            }            
            closedir($handle);
        }
    }
    public function extractVoters() {
        // $pid = pcntl_fork();            
        // if (!$pid) {
            foreach($this->settings['import']['importFiles'] as $value) {
                //$handle = @fopen(($importFile != null)?$importFile:$this->settings['import']['importFile'], "r");
                $handle = @fopen($value, "r");
                if ($handle) {
                    $barenames = explode(".", $value);
                    $parser = new Parser(str_replace("VoterExtract/","",$barenames[0]));
                    while (($buffer = fgets($handle, 4096)) !== false) {
                        $parser->parse($buffer);
                    }
                    if (!feof($handle)) {
                        echo "Error: unexpected fgets() fail\n";
                    }
                    fclose($handle);
                    $parser->handleAggregate();
                }                      
            }
            // exit();
        // }
    }
}
                
?>
