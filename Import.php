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
            $initialized = false;
            $functions = new Functions();
            /* This is the correct way to loop over the directory. */
            while (false !== ($filename = readdir($handle))) {
                if ($filename != "." && $filename != "..") {
                    if(!is_dir($this->settings['import']['importHistoryFolder']."/".$filename)) {
                        if(!$initialized) {
                            $export_date = substr(substr($filename,0,-4),-8);
                            $functions->historyCreate("History");
                            $functions->historyClear("History", $export_date);
                            $initialized = true;
                        }
                        echo "$filename\n";
                        $functions->importHistoryFile($this->settings['import']['importHistoryFolder'],$filename);
                    }
                }
            }            
            closedir($handle);
        }
    }
    public function extractVoters() {
        if ($handle = opendir($this->settings['import']['importVoterFolder'])) {
            $initialized = false;
            $functions = new Functions();
            /* This is the correct way to loop over the directory. */
            while (false !== ($filename = readdir($handle))) {
                if ($filename != "." && $filename != "..") {
                    if(!is_dir($this->settings['import']['importVoterFolder']."/".$filename)) {
                        if(!$initialized) {
                            $export_date = substr(substr($filename,0,-4),-8);
                            $functions->voterCreate("Voters");
                            $functions->voterClear("Voters", $export_date);
                            $functions->voterCreate("Green Voters");
                            $functions->voterClear("Green Voters", $export_date);
                            $initialized = true;
                        }
                        echo "$filename\n";
                        $functions->importVoterFile($this->settings['import']['importVoterFolder'],$filename);
                    }
                }
            }            
            closedir($handle);
        }
    }
}
                
?>
